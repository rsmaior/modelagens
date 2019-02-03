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

--########################################################
--Cria tabela de regras
CREATE TABLE public.layer_rules
(
    id serial NOT NULL,
    camada text NOT NULL,
    tipo_regra text NOT NULL,
    nome text NOT NULL,
    cor_rgb text NOT NULL,
    regra text NOT NULL,
    tipo_estilo text NOT NULL,
    atributo text NOT NULL,
    descricao text NOT NULL,
    ordem integer NOT NULL,
    CONSTRAINT layer_rules_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.layer_rules
    OWNER to postgres;

GRANT ALL ON TABLE public.layer_rules TO postgres;
GRANT ALL ON TABLE public.layer_rules TO PUBLIC;

--########################################################

GRANT USAGE ON SCHEMA edgv TO public;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA edgv TO public;
GRANT ALL ON ALL SEQUENCES IN SCHEMA edgv TO public;

GRANT USAGE ON SCHEMA dominios TO public;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA dominios TO public;
GRANT ALL ON ALL SEQUENCES IN SCHEMA dominios TO public;


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
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD COLUMN fonte_insumo VARCHAR(255), ADD COLUMN situacao_insumo smallint NOT NULL'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ADD CONSTRAINT ' || quote_ident(r.f_table_name) || '_situacao_insumo_fk FOREIGN KEY (situacao_insumo) REFERENCES dominios.situacao_insumo (code) MATCH FULL'; 
		EXECUTE 'ALTER TABLE edgv.' || quote_ident(r.f_table_name) || ' ALTER COLUMN situacao_insumo SET DEFAULT 999;'; 
	END IF;
	END LOOP;
END$$;