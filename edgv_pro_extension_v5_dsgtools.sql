

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
	geom geometry(MULTIPOINT, 31982),
	CONSTRAINT aux_revisao_p_pk PRIMARY KEY (id)
);
CREATE TABLE edgv.aux_revisao_l(
    id serial NOT NULL,
    obs text,
	geom geometry(MULTILINESTRING, 31982),
	CONSTRAINT aux_revisao_l_pk PRIMARY KEY (id)
);
CREATE TABLE edgv.aux_revisao_a(
    id serial NOT NULL,
    obs text,
	geom geometry(MULTIPOLYGON, 31982),
	CONSTRAINT aux_revisao_a_pk PRIMARY KEY (id)
);

CREATE INDEX aux_revisao_p_geom ON edgv.aux_revisao_p USING gist (geom);
CREATE INDEX aux_revisao_l_geom ON edgv.aux_revisao_l USING gist (geom);
CREATE INDEX aux_revisao_a_geom ON edgv.aux_revisao_a USING gist (geom);


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
-- Adiciona tabela de track_p no public
CREATE TABLE public.aux_track_p
(
  id serial NOT NULL,
  operador text NOT NULL,
  data_track date,
  x_ll real,
  y_ll real,
  track_id text,
  track_segment integer,
  track_segment_point_index integer,
  elevation real,
  creation_time timestamp with time zone,
  geom geometry(Point,31982),
  data_importacao text,
  CONSTRAINT aux_track_p_pk PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.aux_track_p
  OWNER TO postgres;
GRANT ALL ON TABLE public.aux_track_p TO postgres;
GRANT ALL ON TABLE public.aux_track_p TO public;

--########################################################
-- Adiciona view materializada do track_l no public
CREATE MATERIALIZED VIEW public.aux_track_l AS 
  SELECT row_number() OVER () AS id,
    data_track, 
	track_id,
	operador,
	min(creation_time) AS min_t,
    max(creation_time) AS max_t,
	st_makeline(st_setsrid(st_makepointm(st_x(geom), st_y(geom), date_part('epoch'::text, creation_time)), 31982) ORDER BY creation_time ASC) AS geom
    FROM public.aux_track_p
	GROUP BY data_track, track_id, operador
WITH NO DATA;

ALTER TABLE public.aux_track_l
  OWNER TO postgres;
GRANT ALL ON TABLE public.aux_track_l TO postgres;
GRANT ALL ON TABLE public.aux_track_l TO public;

--########################################################
-- Adiciona tabela de reambuladores ( no public )
CREATE TABLE public.aux_reambuladores (
 id integer UNIQUE NOT NULL, -- maior que 0, unico
 reambulador varchar(80) NOT NULL, --deve ser o nome do usuário do BD utilizado na reambulação por cada reambulador
 CONSTRAINT aux_reambuladores_pk PRIMARY KEY (id)
);

--########################################################
-- Adiciona atributos de controle

CREATE TABLE dominios.tipo_comprovacao (
 code smallint NOT NULL,
 code_name text NOT NULL,
 CONSTRAINT tipo_comprovacao_pk PRIMARY KEY (code)
);

INSERT INTO dominios.tipo_comprovacao (code,code_name) VALUES (999,'A SER PREENCHIDO');
INSERT INTO dominios.tipo_comprovacao (code,code_name) VALUES (1,'Confirmado em campo');
INSERT INTO dominios.tipo_comprovacao (code,code_name) VALUES (2,'Não possível de confirmar em campo');

CREATE TABLE dominios.tipo_insumo (
 code smallint NOT NULL,
 code_name text NOT NULL,
 CONSTRAINT tipo_insumo_pk PRIMARY KEY (code)
);
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (999,'A SER PREENCHIDO');
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (1,'Fotointerpretado');
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (2,'Insumo externo');
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (3,'Processo automático');
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (4,'Aquisição em campo');
INSERT INTO dominios.tipo_insumo (code,code_name) VALUES (5,'Mapeamento anterior');

CREATE TABLE dominios.situacao_insumo (
 code smallint NOT NULL,
 code_name text NOT NULL,
 CONSTRAINT situacao_insumo_pk PRIMARY KEY (code)
);
INSERT INTO dominios.situacao_insumo (code,code_name) VALUES (999,'A SER PREENCHIDO');
INSERT INTO dominios.situacao_insumo (code,code_name) VALUES (1,'Primitiva geométrica alterada');
INSERT INTO dominios.situacao_insumo (code,code_name) VALUES (2,'Geometria corrigida');
INSERT INTO dominios.situacao_insumo (code,code_name) VALUES (3,'Não possível de confirmar');
INSERT INTO dominios.situacao_insumo (code,code_name) VALUES (4,'Insumo incorreto');

DO $$DECLARE r record;
BEGIN
	FOR r in select f_table_schema, f_table_name from public.geometry_columns
    LOOP
	IF r.f_table_schema = 'edgv' and substring(r.f_table_name from 1 for 3) != 'aux' THEN
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD COLUMN observacao TEXT, ADD COLUMN tipo_comprovacao smallint NOT NULL, ADD COLUMN tipo_insumo smallint NOT NULL, ADD COLUMN data_modificacao timestamp with time zone, ADD COLUMN controle_id uuid NOT NULL, ADD COLUMN ultimo_usuario VARCHAR(255), ADD COLUMN fonte_insumo VARCHAR(255), ADD COLUMN situacao_insumo smallint NOT NULL'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD CONSTRAINT ' || quote_ident(r.f_table_name) || '_tipo_comprovacao_fk FOREIGN KEY (tipo_comprovacao) REFERENCES dominios.tipo_comprovacao (code) MATCH FULL'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ALTER COLUMN tipo_comprovacao SET DEFAULT 999;'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD CONSTRAINT ' || quote_ident(r.f_table_name) || '_tipo_insumo_fk FOREIGN KEY (tipo_insumo) REFERENCES dominios.tipo_insumo (code) MATCH FULL'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ALTER COLUMN tipo_insumo SET DEFAULT 999;'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD CONSTRAINT ' || quote_ident(r.f_table_name) || '_situacao_insumo_fk FOREIGN KEY (situacao_insumo) REFERENCES dominios.situacao_insumo (code) MATCH FULL'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ALTER COLUMN situacao_insumo SET DEFAULT 999;'; 
	END IF;
	IF r.f_table_schema = 'edgv' and substring(r.f_table_name from 1 for 3) = 'aux' THEN
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD COLUMN data_modificacao timestamp with time zone, ADD COLUMN controle_id uuid NOT NULL, ADD COLUMN ultimo_usuario VARCHAR(255)'; 
    END IF;
	IF r.f_table_schema = 'edgv' and substring(r.f_table_name from 1 for 11) = 'aux_revisao' THEN
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD COLUMN categoria VARCHAR(255)'; 
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
-- Função da trigger de separação de faixas de id para reambulação

CREATE OR REPLACE FUNCTION public.id_reamb()
  RETURNS trigger AS
$BODY$
    DECLARE idreamb integer;
	DECLARE idseq integer;
    DECLARE usuario varchar(255);
	DECLARE application varchar(255);
    BEGIN
	SELECT current_user into usuario;
	SELECT current_setting('application_name') into application;

	IF application = 'QGIS' and TG_OP = 'INSERT'  THEN
		SELECT id into idreamb from public.aux_reambuladores where reambulador = usuario;

		IF idreamb IS NULL THEN
			RETURN NEW;
		ELSE
			SELECT nextval(('edgv.' || quote_ident(TG_TABLE_NAME) || '_id_seq')::regclass) into idseq;
			NEW.id = 100000*idreamb + idseq;

			RETURN NEW;
		END IF;
	ELSE
		RETURN NEW;
	END IF;


    END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.id_reamb()
  OWNER TO postgres;

--########################################################
-- Cria trigger de separação de faixas de id para reambulação

DO $$DECLARE r record;
BEGIN
	FOR r in select f_table_schema, f_table_name from public.geometry_columns
    LOOP
	IF r.f_table_schema = 'edgv' THEN
		EXECUTE 'CREATE TRIGGER d_id_reamb BEFORE INSERT ON edgv.' || quote_ident(r.f_table_name) || ' FOR EACH ROW EXECUTE PROCEDURE public.id_reamb()';
	END IF;
    END LOOP;
END$$;

--########################################################
-- Cria função de corrigir Ids

CREATE OR REPLACE FUNCTION cgeo_sync_ids_after_export(usuario text)
  RETURNS integer AS
$BODY$
    DECLARE idreamb integer;
    DECLARE idseq integer;
    DECLARE r record;
    BEGIN
	SELECT id into idreamb from public.aux_reambuladores where reambulador = usuario;

	IF idreamb IS NULL THEN
		idreamb:= 0;
	END IF;	

	FOR r in select f_table_schema, f_table_name from public.geometry_columns
	LOOP
		IF r.f_table_schema = 'edgv' THEN
			EXECUTE 'SELECT max(id) FROM edgv.' || quote_ident(r.f_table_name) || ' WHERE id >= 100000*' || idreamb || ' and id<100000*(' || idreamb || '+1)' INTO idseq; 
			IF idseq IS NULL THEN
				EXECUTE 'SELECT max(id) FROM edgv.' || quote_ident(r.f_table_name) || ' WHERE id<100000' INTO idseq;
				IF idseq IS NOT NULL THEN
					idseq := idseq + 1;
					EXECUTE 'ALTER SEQUENCE edgv.' || quote_ident(r.f_table_name) || '_id_seq RESTART WITH ' || idseq;
				ELSE
					EXECUTE 'ALTER SEQUENCE edgv.' || quote_ident(r.f_table_name) || '_id_seq RESTART WITH 1';									
				END IF;
			ELSE
				idseq := idseq - 100000*idreamb + 1;
				EXECUTE 'ALTER SEQUENCE edgv.' || quote_ident(r.f_table_name) || '_id_seq RESTART WITH ' || idseq;	
			END IF;
		END IF;
	END LOOP;

	RETURN 1;
    END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION sync_ids_after_export(text)
  OWNER TO postgres;
GRANT EXECUTE ON FUNCTION sync_ids_after_export(text) TO public;
GRANT EXECUTE ON FUNCTION sync_ids_after_export(text) TO postgres;

--########################################################
--Cria função de deletar todo do schema EDGV

CREATE OR REPLACE FUNCTION cgeo_delete_all()
  RETURNS integer AS
$BODY$
    DECLARE r record;
    BEGIN
	FOR r in select f_table_schema, f_table_name from public.geometry_columns
	LOOP
		IF r.f_table_schema = 'edgv' THEN
			EXECUTE 'DELETE FROM edgv.' || quote_ident(r.f_table_name);
		END IF;
	END LOOP;

	RETURN 1;
    END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION cg_delete_all()
  OWNER TO postgres;
GRANT EXECUTE ON FUNCTION cg_delete_all() TO public;
GRANT EXECUTE ON FUNCTION cg_delete_all() TO postgres;

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

