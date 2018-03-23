CREATE TABLE edgv.aquisicao_veg_d(
	id serial NOT NULL,
	geom geometry(MULTILINESTRING, 31982),
	CONSTRAINT aquisicao_veg_d_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);

CREATE INDEX aquisicao_veg_d_geom ON edgv.aquisicao_veg_d USING gist (geom);

CREATE TABLE edgv.aquisicao_vegetacao_c(
	id serial NOT NULL,
	tipo smallint NOT NULL,
	geom geometry(MULTIPOINT, 31982),
	CONSTRAINT aquisicao_vegetacao_c_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
ALTER TABLE edgv.aquisicao_vegetacao_c
    ADD CONSTRAINT aquisicao_vegetacao_c_tipo_fk FOREIGN KEY (tipo)
    REFERENCES dominios.tipo_veg (code) MATCH FULL
    ON UPDATE NO ACTION ON DELETE NO ACTION;
CREATE INDEX aquisicao_vegetacao_c_geom ON edgv.aquisicao_vegetacao_c USING gist (geom);
ALTER TABLE ONLY edgv.aquisicao_vegetacao_c ALTER COLUMN tipo SET DEFAULT -1;

CREATE TABLE edgv.aquisicao_area_construida_c(
	id serial NOT NULL,
	geom geometry(MULTIPOINT, 31982),
	CONSTRAINT aquisicao_area_construida_c_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);

CREATE INDEX aquisicao_area_construida_c_geom ON edgv.aquisicao_area_construida_c USING gist (geom);

--########################################################

CREATE TABLE edgv.aux_objeto_desconhecido_p(
    id serial NOT NULL,
    obs text,
	geom geometry(MULTIPOINT, 31982),
	CONSTRAINT aux_objeto_desconhecido_p_pk PRIMARY KEY (id)
);
CREATE TABLE edgv.aux_objeto_desconhecido_l(
    id serial NOT NULL,
    obs text,
	geom geometry(MULTILINESTRING, 31982),
	CONSTRAINT aux_objeto_desconhecido_l_pk PRIMARY KEY (id)
);
CREATE TABLE edgv.aux_objeto_desconhecido_a(
    id serial NOT NULL,
    obs text,
	geom geometry(MULTIPOLYGON, 31982),
	CONSTRAINT aux_objeto_desconhecido_a_pk PRIMARY KEY (id)
);

CREATE INDEX aux_objeto_desconhecido_p_geom ON edgv.aux_objeto_desconhecido_p USING gist (geom);
CREATE INDEX aux_objeto_desconhecido_l_geom ON edgv.aux_objeto_desconhecido_l USING gist (geom);
CREATE INDEX aux_objeto_desconhecido_a_geom ON edgv.aux_objeto_desconhecido_a USING gist (geom);


CREATE TABLE edgv.aux_valida_p(
    id serial NOT NULL,
    obs text,
	geom geometry(MULTIPOINT, 31982),
	CONSTRAINT aux_valida_p_pk PRIMARY KEY (id)
);
CREATE TABLE edgv.aux_valida_l(
    id serial NOT NULL,
    obs text,
	geom geometry(MULTILINESTRING, 31982),
	CONSTRAINT aux_valida_l_pk PRIMARY KEY (id)
);
CREATE TABLE edgv.aux_valida_a(
    id serial NOT NULL,
    obs text,
	geom geometry(MULTIPOLYGON, 31982),
	CONSTRAINT aux_valida_a_pk PRIMARY KEY (id)
);

CREATE INDEX aux_valida_p_geom ON edgv.aux_valida_p USING gist (geom);
CREATE INDEX aux_valida_l_geom ON edgv.aux_valida_l USING gist (geom);
CREATE INDEX aux_valida_a_geom ON edgv.aux_valida_a USING gist (geom);

CREATE TABLE edgv.aux_revisao_p(
    id serial NOT NULL,
    obs text,
    categoria VARCHAR(255),
    corrigido smallint not null,
	geom geometry(MULTIPOINT, 31982),
	CONSTRAINT aux_revisao_p_pk PRIMARY KEY (id)
);
CREATE TABLE edgv.aux_revisao_l(
    id serial NOT NULL,
    obs text,
    categoria VARCHAR(255),
    corrigido smallint not null,
	geom geometry(MULTILINESTRING, 31982),
	CONSTRAINT aux_revisao_l_pk PRIMARY KEY (id)
);
CREATE TABLE edgv.aux_revisao_a(
    id serial NOT NULL,
    obs text,
    categoria VARCHAR(255),
    corrigido smallint not null,
	geom geometry(MULTIPOLYGON, 31982),
	CONSTRAINT aux_revisao_a_pk PRIMARY KEY (id)
);

CREATE INDEX aux_revisao_p_geom ON edgv.aux_revisao_p USING gist (geom);
CREATE INDEX aux_revisao_l_geom ON edgv.aux_revisao_l USING gist (geom);
CREATE INDEX aux_revisao_a_geom ON edgv.aux_revisao_a USING gist (geom);
ALTER TABLE edgv.aux_revisao_p
	 ADD CONSTRAINT aux_revisao_p_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES dominios.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE edgv.aux_revisao_l
	 ADD CONSTRAINT aux_revisao_l_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES dominios.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE edgv.aux_revisao_a
	 ADD CONSTRAINT aux_revisao_a_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES dominios.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

CREATE TABLE edgv.aux_moldura_a(
	id serial NOT NULL,
	geom geometry(MULTIPOLYGON, 31982),
	mi varchar(80),
	CONSTRAINT aux_moldura_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);

CREATE INDEX aux_moldura_a_geom ON edgv.aux_moldura_a USING gist (geom);

CREATE TABLE edgv.aux_limite_bd_a(
	id serial NOT NULL,
	geom geometry(MULTIPOLYGON, 31982),
	nome varchar(80),
	CONSTRAINT aux_limite_bd_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);

CREATE INDEX aux_limite_bd_a_geom ON edgv.aux_limite_bd_a USING gist (geom);

--########################################################
-- Adiciona atributos de controle

CREATE TABLE dominios.tipo_comprovacao (
 code smallint NOT NULL,
 code_name text NOT NULL,
 CONSTRAINT tipo_comprovacao_pk PRIMARY KEY (code)
);

INSERT INTO dominios.tipo_comprovacao (code,code_name) VALUES (-1,'A SER PREENCHIDO');
INSERT INTO dominios.tipo_comprovacao (code,code_name) VALUES (1,'Confirmado em campo');
INSERT INTO dominios.tipo_comprovacao (code,code_name) VALUES (2,'Não possível de confirmar em campo');

CREATE TABLE dominios.tipo_insumo (
 code smallint NOT NULL,
 code_name text NOT NULL,
 CONSTRAINT tipo_insumo_pk PRIMARY KEY (code)
);
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (-1,'A SER PREENCHIDO');
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (1,'Fotointerpretado');
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (2,'Insumo externo');
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (3,'Processo automático');
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (4,'Aquisição em campo');
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (5,'Mapeamento anterior');

DO $$DECLARE r record;
BEGIN
	FOR r in select f_table_schema, f_table_name from public.geometry_columns
    LOOP
	IF r.f_table_schema = 'edgv' and substring(r.f_table_name from 1 for 3) != 'aux' THEN
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD COLUMN observacao TEXT, ADD COLUMN tipo_comprovacao smallint NOT NULL, ADD COLUMN tipo_insumo smallint NOT NULL, ADD COLUMN data_modificacao timestamp with time zone, ADD COLUMN controle_id uuid NOT NULL, ADD COLUMN ultimo_usuario VARCHAR(255)'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD CONSTRAINT ' || quote_ident(r.f_table_name) || '_tipo_comprovacao_fk FOREIGN KEY (tipo_comprovacao) REFERENCES dominios.tipo_comprovacao (code) MATCH FULL'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ALTER COLUMN tipo_comprovacao SET DEFAULT 999;'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD CONSTRAINT ' || quote_ident(r.f_table_name) || '_tipo_insumo_fk FOREIGN KEY (tipo_insumo) REFERENCES dominios.tipo_insumo (code) MATCH FULL'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ALTER COLUMN tipo_insumo SET DEFAULT 999;'; 
	END IF;
	IF r.f_table_schema = 'edgv' and substring(r.f_table_name from 1 for 3) = 'aux' THEN
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD COLUMN data_modificacao timestamp with time zone, ADD COLUMN controle_id uuid NOT NULL, ADD COLUMN ultimo_usuario VARCHAR(255)'; 
    END IF;
	END LOOP;
END$$;

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