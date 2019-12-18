CREATE SCHEMA edgv;
CREATE SCHEMA dominios;

CREATE EXTENSION postgis;
SET search_path TO pg_catalog,public,edgv,dominios;

CREATE TABLE public.db_metadata(
	 edgvversion varchar(50) NOT NULL DEFAULT 'EDGV 3.0 Pro',
	 dbimplversion varchar(50) NOT NULL DEFAULT '0.1',
	 CONSTRAINT edgvversioncheck CHECK (edgvversion = 'EDGV 3.0 Pro')
);
INSERT INTO public.db_metadata (edgvversion, dbimplversion) VALUES ('EDGV 3.0 Pro','0.1');

CREATE TABLE dominios.booleano (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT booleano_pk PRIMARY KEY (code)
);

INSERT INTO dominios.booleano (code,code_name) VALUES (1,'Sim (1)');
INSERT INTO dominios.booleano (code,code_name) VALUES (2,'Não (2)');
INSERT INTO dominios.booleano (code,code_name) VALUES (9999,'A SER PREENCHIDO (9999)');

CREATE TABLE dominios.tipo_sumidouro_vertedouro (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_sumidouro_vertedouro_pk PRIMARY KEY (code)
);

INSERT INTO dominios.tipo_sumidouro_vertedouro (code,code_name) VALUES (1,'Sumidouro (1)');
INSERT INTO dominios.tipo_sumidouro_vertedouro (code,code_name) VALUES (2,'Vertedouro (2)');
INSERT INTO dominios.tipo_sumidouro_vertedouro (code,code_name) VALUES (9999,'A SER PREENCHIDO (9999)');

CREATE TABLE dominios.causa_sumidouro_vertedouro (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT causa_sumidouro_vertedouro_pk PRIMARY KEY (code)
);

INSERT INTO dominios.causa_sumidouro_vertedouro (code,code_name) VALUES (0,'Desconhecido (0)');
INSERT INTO dominios.causa_sumidouro_vertedouro (code,code_name) VALUES (1,'Canalização (1)');
INSERT INTO dominios.causa_sumidouro_vertedouro (code,code_name) VALUES (2,'Gruta ou fenda (2)');
INSERT INTO dominios.causa_sumidouro_vertedouro (code,code_name) VALUES (3,'Absorção (3)');
INSERT INTO dominios.causa_sumidouro_vertedouro (code,code_name) VALUES (9999,'A SER PREENCHIDO (9999)');

CREATE TABLE dominios.regime (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT regime_pk PRIMARY KEY (code)
);

INSERT INTO dominios.regime (code,code_name) VALUES (1,'Permanente (1)');
INSERT INTO dominios.regime (code,code_name) VALUES (3,'Temporário (3)');
INSERT INTO dominios.regime (code,code_name) VALUES (5,'Seco (5)');
INSERT INTO dominios.regime (code,code_name) VALUES (9999,'A SER PREENCHIDO (9999)');

CREATE TABLE dominios.situacao_fisica (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT situacao_fisica_pk PRIMARY KEY (code)
);

INSERT INTO dominios.situacao_fisica (code,code_name) VALUES (0,'Desconhecida (0)');
INSERT INTO dominios.situacao_fisica (code,code_name) VALUES (1,'Abandonada (1)');
INSERT INTO dominios.situacao_fisica (code,code_name) VALUES (2,'Destruída (2)');
INSERT INTO dominios.situacao_fisica (code,code_name) VALUES (3,'Construída (3)');
INSERT INTO dominios.situacao_fisica (code,code_name) VALUES (4,'Em construção (4)');
INSERT INTO dominios.situacao_fisica (code,code_name) VALUES (6,'Construída mas em obras (6)');
INSERT INTO dominios.situacao_fisica (code,code_name) VALUES (9999,'A SER PREENCHIDO (9999)');

CREATE TABLE dominios.tipo_massa_dagua (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_massa_dagua_pk PRIMARY KEY (code)
);

INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (1,'Rio (com fluxo) (1)');
INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (2,'Canal (com fluxo) (2)');
INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (3,'Oceano (sem fluxo) (3)');
INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (4,'Baía (sem fluxo) (4)');
INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (5,'Enseada (sem fluxo) (5)');
INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (6,'Meando Abandonado (sem fluxo) (6)');
INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (7,'Lago ou Lagoa (sem fluxo) (7)');
INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (9,'Laguna (com fluxo) (9)');
INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (10,'Represa/açude com fluxo (10)');
INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (11,'Represa/açude sem fluxo (11)');
INSERT INTO dominios.tipo_massa_dagua (code,code_name) VALUES (9999,'A SER PREENCHIDO (9999)');

CREATE TABLE dominios.tipo_trecho_drenagem (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_trecho_drenagem_pk PRIMARY KEY (code)
);

INSERT INTO dominios.tipo_trecho_drenagem (code,code_name) VALUES (1,'Rio (1)');
INSERT INTO dominios.tipo_trecho_drenagem (code,code_name) VALUES (2,'Canal (2)');
INSERT INTO dominios.tipo_trecho_drenagem (code,code_name) VALUES (3,'Trecho pluvial (3)');
INSERT INTO dominios.tipo_trecho_drenagem (code,code_name) VALUES (11,'Vala (11)');
INSERT INTO dominios.tipo_trecho_drenagem (code,code_name) VALUES (9999,'A SER PREENCHIDO (9999)');

CREATE TABLE dominios.material_construcao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT material_construcao_pk PRIMARY KEY (code)
);

INSERT INTO dominios.material_construcao (code,code_name) VALUES (0,'Desconhecido (0)');
INSERT INTO dominios.material_construcao (code,code_name) VALUES (1,'Alvenaria (1)');
INSERT INTO dominios.material_construcao (code,code_name) VALUES (2,'Concreto (2)');
INSERT INTO dominios.material_construcao (code,code_name) VALUES (3,'Metal (3)');
INSERT INTO dominios.material_construcao (code,code_name) VALUES (4,'Rocha (4)');
INSERT INTO dominios.material_construcao (code,code_name) VALUES (5,'Madeira (5)');
INSERT INTO dominios.material_construcao (code,code_name) VALUES (9,'Fibra (9)');
INSERT INTO dominios.material_construcao (code,code_name) VALUES (23,'Terra (23)');
INSERT INTO dominios.material_construcao (code,code_name) VALUES (97,'Não aplicável (97)');
INSERT INTO dominios.material_construcao (code,code_name) VALUES (98,'Outros (98)');
INSERT INTO dominios.material_construcao (code,code_name) VALUES (9999,'A SER PREENCHIDO (9999)');

CREATE TABLE dominios.tipo_ilha (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_ilha_pk PRIMARY KEY (code)
);

INSERT INTO dominios.tipo_ilha (code,code_name) VALUES (1,'Fluvial (1)');
INSERT INTO dominios.tipo_ilha (code,code_name) VALUES (2,'Marítima (2)');
INSERT INTO dominios.tipo_ilha (code,code_name) VALUES (3,'Lacustre (3)');
INSERT INTO dominios.tipo_ilha (code,code_name) VALUES (9999,'A SER PREENCHIDO (9999)');

CREATE TABLE edgv.cobter_area_construida_a(
	 id serial NOT NULL,
	 nome varchar(255),
	 densamente_edificada smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT cobter_area_construida_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX cobter_area_construida_a_geom ON edgv.cobter_area_construida_a USING gist (geom);

ALTER TABLE edgv.cobter_area_construida_a
	 ADD CONSTRAINT cobter_area_construida_a_densamente_edificada_fk FOREIGN KEY (densamente_edificada)
	 REFERENCES dominios.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.cobter_area_construida_a ALTER COLUMN densamente_edificada SET DEFAULT 9999;

CREATE TABLE edgv.cobter_massa_dagua_a(
	 id serial NOT NULL,
	 nome varchar(255),
	 tipo smallint NOT NULL,
	 regime smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT cobter_massa_dagua_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX cobter_massa_dagua_a_geom ON edgv.cobter_massa_dagua_a USING gist (geom);

ALTER TABLE edgv.cobter_massa_dagua_a
	 ADD CONSTRAINT cobter_massa_dagua_a_tipo_fk FOREIGN KEY (tipo)
	 REFERENCES dominios.tipo_massa_dagua (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.cobter_massa_dagua_a ALTER COLUMN tipo SET DEFAULT 9999;

ALTER TABLE edgv.cobter_massa_dagua_a
	 ADD CONSTRAINT cobter_massa_dagua_a_regime_fk FOREIGN KEY (regime)
	 REFERENCES dominios.regime (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.cobter_massa_dagua_a ALTER COLUMN regime SET DEFAULT 9999;

CREATE TABLE edgv.elemnat_trecho_drenagem_l(
	 id serial NOT NULL,
	 nome varchar(255),
	 tipo smallint NOT NULL,
	 regime smallint NOT NULL,
	 encoberto smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT elemnat_trecho_drenagem_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX elemnat_trecho_drenagem_l_geom ON edgv.elemnat_trecho_drenagem_l USING gist (geom);

ALTER TABLE edgv.elemnat_trecho_drenagem_l
	 ADD CONSTRAINT elemnat_trecho_drenagem_l_tipo_fk FOREIGN KEY (tipo)
	 REFERENCES dominios.tipo_trecho_drenagem (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.elemnat_trecho_drenagem_l ALTER COLUMN tipo SET DEFAULT 9999;

ALTER TABLE edgv.elemnat_trecho_drenagem_l
	 ADD CONSTRAINT elemnat_trecho_drenagem_l_regime_fk FOREIGN KEY (regime)
	 REFERENCES dominios.regime (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.elemnat_trecho_drenagem_l ALTER COLUMN regime SET DEFAULT 9999;

ALTER TABLE edgv.elemnat_trecho_drenagem_l
	 ADD CONSTRAINT elemnat_trecho_drenagem_l_encoberto_fk FOREIGN KEY (encoberto)
	 REFERENCES dominios.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.elemnat_trecho_drenagem_l ALTER COLUMN encoberto SET DEFAULT 9999;

CREATE TABLE edgv.infra_barragem_a(
	 id serial NOT NULL,
	 nome varchar(255),
	 situacao_fisica smallint NOT NULL,
	 material_construcao smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT infra_barragem_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX infra_barragem_a_geom ON edgv.infra_barragem_a USING gist (geom);

ALTER TABLE edgv.infra_barragem_a
	 ADD CONSTRAINT infra_barragem_a_situacao_fisica_fk FOREIGN KEY (situacao_fisica)
	 REFERENCES dominios.situacao_fisica (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.infra_barragem_a ALTER COLUMN situacao_fisica SET DEFAULT 9999;

ALTER TABLE edgv.infra_barragem_a
	 ADD CONSTRAINT infra_barragem_a_material_construcao_fk FOREIGN KEY (material_construcao)
	 REFERENCES dominios.material_construcao (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.infra_barragem_a ALTER COLUMN material_construcao SET DEFAULT 9999;

CREATE TABLE edgv.infra_barragem_l(
	 id serial NOT NULL,
	 nome varchar(255),
	 situacao_fisica smallint NOT NULL,
	 material_construcao smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT infra_barragem_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX infra_barragem_l_geom ON edgv.infra_barragem_l USING gist (geom);

ALTER TABLE edgv.infra_barragem_l
	 ADD CONSTRAINT infra_barragem_l_situacao_fisica_fk FOREIGN KEY (situacao_fisica)
	 REFERENCES dominios.situacao_fisica (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.infra_barragem_l ALTER COLUMN situacao_fisica SET DEFAULT 9999;

ALTER TABLE edgv.infra_barragem_l
	 ADD CONSTRAINT infra_barragem_l_material_construcao_fk FOREIGN KEY (material_construcao)
	 REFERENCES dominios.material_construcao (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.infra_barragem_l ALTER COLUMN material_construcao SET DEFAULT 9999;

CREATE TABLE edgv.elemnat_sumidouro_vertedouro_p(
	 id serial NOT NULL,
	 nome varchar(255),
	 tipo smallint NOT NULL,
	 causa smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPoint, 31982),
	 CONSTRAINT elemnat_sumidouro_vertedouro_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX elemnat_sumidouro_vertedouro_p_geom ON edgv.elemnat_sumidouro_vertedouro_p USING gist (geom);

ALTER TABLE edgv.elemnat_sumidouro_vertedouro_p
	 ADD CONSTRAINT elemnat_sumidouro_vertedouro_p_tipo_fk FOREIGN KEY (tipo)
	 REFERENCES dominios.tipo_sumidouro_vertedouro (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.elemnat_sumidouro_vertedouro_p ALTER COLUMN tipo SET DEFAULT 9999;

ALTER TABLE edgv.elemnat_sumidouro_vertedouro_p
	 ADD CONSTRAINT elemnat_sumidouro_vertedouro_p_causa_fk FOREIGN KEY (causa)
	 REFERENCES dominios.causa_sumidouro_vertedouro (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.elemnat_sumidouro_vertedouro_p ALTER COLUMN causa SET DEFAULT 9999;

CREATE TABLE edgv.aux_objeto_desconhecido_a(
	 id serial NOT NULL,
	 descricao varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT aux_objeto_desconhecido_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_objeto_desconhecido_a_geom ON edgv.aux_objeto_desconhecido_a USING gist (geom);

CREATE TABLE edgv.aux_objeto_desconhecido_l(
	 id serial NOT NULL,
	 descricao varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT aux_objeto_desconhecido_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_objeto_desconhecido_l_geom ON edgv.aux_objeto_desconhecido_l USING gist (geom);

CREATE TABLE edgv.aux_objeto_desconhecido_p(
	 id serial NOT NULL,
	 descricao varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPoint, 31982),
	 CONSTRAINT aux_objeto_desconhecido_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_objeto_desconhecido_p_geom ON edgv.aux_objeto_desconhecido_p USING gist (geom);

CREATE TABLE edgv.aux_validacao_a(
	 id serial NOT NULL,
	 descricao varchar(255),
	 subfase_id integer,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT aux_validacao_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_validacao_a_geom ON edgv.aux_validacao_a USING gist (geom);

CREATE TABLE edgv.aux_validacao_l(
	 id serial NOT NULL,
	 descricao varchar(255),
	 subfase_id integer,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT aux_validacao_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_validacao_l_geom ON edgv.aux_validacao_l USING gist (geom);

CREATE TABLE edgv.aux_validacao_p(
	 id serial NOT NULL,
	 descricao varchar(255),
	 subfase_id integer,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPoint, 31982),
	 CONSTRAINT aux_validacao_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_validacao_p_geom ON edgv.aux_validacao_p USING gist (geom);

CREATE TABLE edgv.aux_revisao_a(
	 id serial NOT NULL,
	 descricao varchar(255),
	 subfase_id integer,
	 corrigido boolean NOT NULL,
	 justificativa varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT aux_revisao_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_revisao_a_geom ON edgv.aux_revisao_a USING gist (geom);

CREATE TABLE edgv.aux_revisao_l(
	 id serial NOT NULL,
	 descricao varchar(255),
	 subfase_id integer,
	 corrigido boolean NOT NULL,
	 justificativa varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT aux_revisao_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_revisao_l_geom ON edgv.aux_revisao_l USING gist (geom);

CREATE TABLE edgv.aux_revisao_p(
	 id serial NOT NULL,
	 descricao varchar(255),
	 subfase_id integer,
	 corrigido boolean NOT NULL,
	 justificativa varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPoint, 31982),
	 CONSTRAINT aux_revisao_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_revisao_p_geom ON edgv.aux_revisao_p USING gist (geom);

CREATE TABLE edgv.aux_reambulacao_a(
	 id serial NOT NULL,
	 descricao varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT aux_reambulacao_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_reambulacao_a_geom ON edgv.aux_reambulacao_a USING gist (geom);

CREATE TABLE edgv.aux_reambulacao_l(
	 id serial NOT NULL,
	 descricao varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT aux_reambulacao_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_reambulacao_l_geom ON edgv.aux_reambulacao_l USING gist (geom);

CREATE TABLE edgv.aux_reambulacao_p(
	 id serial NOT NULL,
	 descricao varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPoint, 31982),
	 CONSTRAINT aux_reambulacao_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_reambulacao_p_geom ON edgv.aux_reambulacao_p USING gist (geom);

CREATE TABLE edgv.aux_insumo_externo_a(
	 id serial NOT NULL,
	 nome varchar(255),
	 fonte varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT aux_insumo_externo_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_insumo_externo_a_geom ON edgv.aux_insumo_externo_a USING gist (geom);

CREATE TABLE edgv.aux_insumo_externo_l(
	 id serial NOT NULL,
	 nome varchar(255),
	 fonte varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT aux_insumo_externo_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_insumo_externo_l_geom ON edgv.aux_insumo_externo_l USING gist (geom);

CREATE TABLE edgv.aux_insumo_externo_p(
	 id serial NOT NULL,
	 nome varchar(255),
	 fonte varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPoint, 31982),
	 CONSTRAINT aux_insumo_externo_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_insumo_externo_p_geom ON edgv.aux_insumo_externo_p USING gist (geom);

CREATE TABLE edgv.aux_moldura_a(
	 id serial NOT NULL,
	 nome varchar(255) NOT NULL,
	 mi varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT aux_moldura_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_moldura_a_geom ON edgv.aux_moldura_a USING gist (geom);

CREATE TABLE edgv.aux_moldura_area_continua_a(
	 id serial NOT NULL,
	 nome varchar(255) NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT aux_moldura_area_continua_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_moldura_area_continua_a_geom ON edgv.aux_moldura_area_continua_a USING gist (geom);

CREATE TABLE edgv.aquisicao_limite_vegetacao_l(
	 id serial NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT aquisicao_limite_vegetacao_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aquisicao_limite_vegetacao_l_geom ON edgv.aquisicao_limite_vegetacao_l USING gist (geom);

CREATE TABLE edgv.aquisicao_limite_massa_dagua_l(
	 id serial NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT aquisicao_limite_massa_dagua_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aquisicao_limite_massa_dagua_l_geom ON edgv.aquisicao_limite_massa_dagua_l USING gist (geom);

CREATE TABLE edgv.aquisicao_limite_area_edificada_l(
	 id serial NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT aquisicao_limite_area_edificada_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aquisicao_limite_area_edificada_l_geom ON edgv.aquisicao_limite_area_edificada_l USING gist (geom);

CREATE TABLE edgv.aquisicao_centroide_massa_dagua_p(
	 id serial NOT NULL,
	 nome varchar(255),
	 tipo smallint NOT NULL,
	 regime smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPoint, 31982),
	 CONSTRAINT aquisicao_centroide_massa_dagua_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aquisicao_centroide_massa_dagua_p_geom ON edgv.aquisicao_centroide_massa_dagua_p USING gist (geom);

ALTER TABLE edgv.aquisicao_centroide_massa_dagua_p
	 ADD CONSTRAINT aquisicao_centroide_massa_dagua_p_tipo_fk FOREIGN KEY (tipo)
	 REFERENCES dominios.tipo_massa_dagua (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.aquisicao_centroide_massa_dagua_p ALTER COLUMN tipo SET DEFAULT 9999;

ALTER TABLE edgv.aquisicao_centroide_massa_dagua_p
	 ADD CONSTRAINT aquisicao_centroide_massa_dagua_p_regime_fk FOREIGN KEY (regime)
	 REFERENCES dominios.regime (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.aquisicao_centroide_massa_dagua_p ALTER COLUMN regime SET DEFAULT 9999;

CREATE TABLE edgv.aquisicao_centroide_area_construida_p(
	 id serial NOT NULL,
	 nome varchar(255),
	 densamente_edificada smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPoint, 31982),
	 CONSTRAINT aquisicao_centroide_area_construida_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aquisicao_centroide_area_construida_p_geom ON edgv.aquisicao_centroide_area_construida_p USING gist (geom);

ALTER TABLE edgv.aquisicao_centroide_area_construida_p
	 ADD CONSTRAINT aquisicao_centroide_area_construida_p_densamente_edificada_fk FOREIGN KEY (densamente_edificada)
	 REFERENCES dominios.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.aquisicao_centroide_area_construida_p ALTER COLUMN densamente_edificada SET DEFAULT 9999;

CREATE TABLE edgv.aquisicao_identificacao_antropizacao_a(
	 id serial NOT NULL,
	 descricao varchar(255),
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT aquisicao_identificacao_antropizacao_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aquisicao_identificacao_antropizacao_a_geom ON edgv.aquisicao_identificacao_antropizacao_a USING gist (geom);

CREATE TABLE edgv.aquisicao_ilha_p(
	 id serial NOT NULL,
	 nome varchar(255),
	 tipo smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 usuario_criacao VARCHAR(255),
	 usuario_atualizacao VARCHAR(255),
	 geom geometry(MultiPoint, 31982),
	 CONSTRAINT aquisicao_ilha_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aquisicao_ilha_p_geom ON edgv.aquisicao_ilha_p USING gist (geom);

ALTER TABLE edgv.aquisicao_ilha_p
	 ADD CONSTRAINT aquisicao_ilha_p_tipo_fk FOREIGN KEY (tipo)
	 REFERENCES dominios.tipo_ilha (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.aquisicao_ilha_p ALTER COLUMN tipo SET DEFAULT 9999;
