--########################################################
-- Função explodir multi geometrias
CREATE EXTENSION IF NOT EXISTS hstore;

CREATE OR REPLACE FUNCTION public.explode_geom()
  RETURNS trigger AS
$BODY$
    DECLARE querytext1 text;
    DECLARE querytext2 text;
    DECLARE r record;
    BEGIN

	IF ST_NumGeometries(NEW.geom) > 1 THEN

		querytext1 := 'INSERT INTO ' || quote_ident(TG_TABLE_SCHEMA) || '.' || quote_ident(TG_TABLE_NAME) || '(';
		querytext2 := 'geom) SELECT ';

		FOR r IN SELECT (each(hstore(NEW))).* 
		LOOP
			IF r.key <> 'geom' AND r.key <> 'id' THEN
				querytext1 := querytext1 || quote_ident(r.key) || ',';
				IF r.value <> '' THEN
					querytext2 := querytext2 || quote_literal(r.value) || ',';
				ELSE
					querytext2 := querytext2 || 'NULL' || ',';					
				END IF;
			END IF;
		END LOOP;

		IF TG_OP = 'UPDATE' THEN
			EXECUTE 'DELETE FROM ' || quote_ident(TG_TABLE_SCHEMA) || '.' || quote_ident(TG_TABLE_NAME) || ' WHERE id = ' || OLD.id;
		END IF;


		querytext1 := querytext1  || querytext2;
		EXECUTE querytext1 || 'ST_Multi((ST_Dump(ST_AsEWKT(' || quote_literal(NEW.geom::text) || '))).geom);';
		RETURN NULL;
	ELSE
		RETURN NEW;
	END IF;
    END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.explode_geom()
  OWNER TO postgres;


--########################################################
-- Cria trigger de explodir multi geometrias

DO $$DECLARE r record;
BEGIN
	FOR r in select f_table_schema, f_table_name from public.geometry_columns
    LOOP
	IF r.f_table_schema = 'edgv' THEN
		EXECUTE 'CREATE TRIGGER a_explode_geom BEFORE INSERT OR UPDATE ON edgv.' || quote_ident(r.f_table_name) || ' FOR EACH ROW EXECUTE PROCEDURE public.explode_geom()';
	END IF;
    END LOOP;
END$$;

--########################################################
-- Função da trigger de arredondar coordenadas (5 casas decimais) e limpar geometrias

CREATE OR REPLACE FUNCTION public.corrige_geom()
  RETURNS trigger AS
$BODY$
    DECLARE empty boolean;
	DECLARE measure real;
    DECLARE geometrytype text;
    DECLARE npoints integer;
    BEGIN

	empty := ST_IsEmpty(NEW.geom::Geometry);

	IF empty OR NEW.geom IS NULL THEN
		RETURN NULL;
	ELSE
		--NEW.geom = ST_AsEWKT(ST_SnapToGrid(NEW.geom, 1e-5));
	    empty := ST_IsEmpty(NEW.geom::Geometry);
        IF empty OR NEW.geom IS NULL THEN
            RETURN NULL;
        ELSE
            geometrytype := st_geometrytype(NEW.geom::Geometry);
            npoints := ST_NPoints(NEW.geom::Geometry);
            IF geometrytype = 'ST_MultiLineString' THEN
                measure := ST_Length(NEW.geom::Geometry);
                IF measure < 0.1 OR npoints < 2 THEN
                    RETURN NULL;
                END IF;
            END IF;

            IF geometrytype = 'ST_MultiPolygon' THEN
                measure := ST_Area(NEW.geom::Geometry);
                IF measure < 0.1 OR npoints < 2 THEN
                    RETURN NULL;
                END IF;
            END IF;

            IF geometrytype = 'ST_MultiPoint'  AND npoints < 1 THEN
                RETURN NULL;
            END IF;

		    RETURN NEW;
        END IF;
	END IF;

    END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.corrige_geom()
  OWNER TO postgres;


--########################################################
-- Cria trigger de arredondar coordenadas (5 casas decimais) e limpar geometrias

DO $$DECLARE r record;
BEGIN
	FOR r in select f_table_schema, f_table_name from public.geometry_columns
    LOOP
	IF r.f_table_schema = 'edgv' THEN
		EXECUTE 'CREATE TRIGGER b_corrige_geom BEFORE INSERT OR UPDATE ON edgv.' || quote_ident(r.f_table_name) || ' FOR EACH ROW EXECUTE PROCEDURE public.corrige_geom()';
	END IF;
    END LOOP;
END$$;

--########################################################
-- Função da trigger de controle

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE OR REPLACE FUNCTION public.controle_prod()
  RETURNS trigger AS
$BODY$
    DECLARE id uuid;
    DECLARE usuario varchar(255);
    DECLARE application varchar(255);
    BEGIN
    SELECT current_setting('application_name') into application;

    IF application = 'QGIS' then
        SELECT current_user into usuario;
        IF TG_OP = 'INSERT' then
            SELECT uuid_generate_v1() INTO id;
            NEW.controle_id = id;
            NEW.ultimo_usuario = usuario;
            NEW.data_modificacao = NOW();   
        END IF;

        IF TG_OP = 'UPDATE' then
            NEW.ultimo_usuario = usuario;
            NEW.data_modificacao = NOW();
			IF NEW.controle_id IS NULL then
				SELECT uuid_generate_v1() INTO id;
				NEW.controle_id = id;
			END IF;
        END IF;
    ELSE
        IF NEW.controle_id IS NULL then
            SELECT uuid_generate_v1() INTO id;
            NEW.controle_id = id;
        END IF;
        IF NEW.ultimo_usuario IS NULL then
		    SELECT current_user into usuario;
            NEW.ultimo_usuario = usuario ||'_'||application;
        END IF;
        IF NEW.data_modificacao IS NULL then
            NEW.data_modificacao = NOW();   
        END IF;
    END IF;

    RETURN NEW;

    END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.controle_prod()
  OWNER TO postgres;

--########################################################
-- Cria trigger de controle nas tabelas

DO $$DECLARE r record;
BEGIN
	FOR r in select f_table_schema, f_table_name from public.geometry_columns
    LOOP
	IF r.f_table_schema = 'edgv' THEN
		EXECUTE 'CREATE TRIGGER c_controle BEFORE INSERT OR UPDATE ON edgv.' || quote_ident(r.f_table_name) || ' FOR EACH ROW EXECUTE PROCEDURE public.controle_prod()';
	END IF;
    END LOOP;
END$$;

--########################################################
--Cria tabela de estilos

CREATE TABLE public.layer_styles
(
  id serial NOT NULL,
  f_table_catalog character varying,
  f_table_schema character varying,
  f_table_name character varying,
  f_geometry_column character varying,
  stylename character varying(255),
  styleqml text,
  stylesld xml,
  useasdefault boolean,
  description text,
  owner character varying(30),
  ui xml,
  update_time timestamp without time zone DEFAULT now(),
  CONSTRAINT layer_styles_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.layer_styles
  OWNER TO postgres;
GRANT ALL ON TABLE public.layer_styles TO postgres;
GRANT ALL ON TABLE public.layer_styles TO public;

--########################################################
--Cria função que atualiza o nome do banco na tabela de estilos

CREATE OR REPLACE FUNCTION public.estilo()
  RETURNS integer AS
$BODY$
    UPDATE public.layer_styles
        SET f_table_catalog = (select current_catalog);
    SELECT 1;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;
ALTER FUNCTION public.estilo()
  OWNER TO postgres;

--########################################################
--Cria tabela do Layer Filter

CREATE TABLE public.layer_filter
(
  id SERIAL NOT NULL,
  camada text, -- nome da camada
  tipo_filtro text, --Nome do filtro
  filtro text, --SQL where
  CONSTRAINT layer_filter_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.layer_filter
  OWNER TO postgres;

GRANT ALL ON TABLE public.layer_styles TO postgres;
GRANT ALL ON TABLE public.layer_styles TO public;

--########################################################
--Cria tabela menu profile

CREATE TABLE public.menu_profile
(
    id serial NOT NULL,
    nome_do_perfil text NOT NULL,
    descricao text,
    perfil json NOT NULL,
    ordem_menu json NOT NULL,
    CONSTRAINT menu_profile_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.menu_profile
    OWNER to postgres;

GRANT ALL ON TABLE public.menu_profile TO postgres;
GRANT ALL ON TABLE public.menu_profile TO PUBLIC;


GRANT USAGE ON SCHEMA edgv TO public;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA edgv TO public;
GRANT ALL ON ALL SEQUENCES IN SCHEMA edgv TO public;

GRANT USAGE ON SCHEMA dominios TO public;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA dominios TO public;
GRANT ALL ON ALL SEQUENCES IN SCHEMA dominios TO public;