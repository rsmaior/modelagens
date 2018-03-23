
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