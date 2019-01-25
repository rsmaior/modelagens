CREATE TABLE edgv.rev_transp_a(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 tipo_comprovacao smallint NOT NULL,
	 tipo_insumo smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 ultimo_usuario VARCHAR(255),
	 geom geometry(MultiPolygon, 31982),
	 CONSTRAINT rev_transp_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_transp_a_geom ON edgv.rev_transp_a USING gist (geom);

ALTER TABLE edgv.rev_transp_a
	 ADD CONSTRAINT rev_transp_a_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES dominios.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.rev_transp_a ALTER COLUMN corrigido SET DEFAULT 999;

ALTER TABLE edgv.rev_transp_a
	 ADD CONSTRAINT rev_transp_a_tipo_comprovacao_fk FOREIGN KEY (tipo_comprovacao)
	 REFERENCES dominios.tipo_comprovacao (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.rev_transp_a ALTER COLUMN tipo_comprovacao SET DEFAULT 999;

ALTER TABLE edgv.rev_transp_a
	 ADD CONSTRAINT rev_transp_a_tipo_insumo_fk FOREIGN KEY (tipo_insumo)
	 REFERENCES dominios.tipo_insumo (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.rev_transp_a ALTER COLUMN tipo_insumo SET DEFAULT 999;

CREATE TABLE edgv.rev_transp_l(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 tipo_comprovacao smallint NOT NULL,
	 tipo_insumo smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 ultimo_usuario VARCHAR(255),
	 geom geometry(MultiLinestring, 31982),
	 CONSTRAINT rev_transp_l_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_transp_l_geom ON edgv.rev_transp_l USING gist (geom);

ALTER TABLE edgv.rev_transp_l
	 ADD CONSTRAINT rev_transp_l_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES dominios.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.rev_transp_l ALTER COLUMN corrigido SET DEFAULT 999;

ALTER TABLE edgv.rev_transp_l
	 ADD CONSTRAINT rev_transp_l_tipo_comprovacao_fk FOREIGN KEY (tipo_comprovacao)
	 REFERENCES dominios.tipo_comprovacao (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.rev_transp_l ALTER COLUMN tipo_comprovacao SET DEFAULT 999;

ALTER TABLE edgv.rev_transp_l
	 ADD CONSTRAINT rev_transp_l_tipo_insumo_fk FOREIGN KEY (tipo_insumo)
	 REFERENCES dominios.tipo_insumo (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.rev_transp_l ALTER COLUMN tipo_insumo SET DEFAULT 999;

CREATE TABLE edgv.rev_transp_p(
	 id serial NOT NULL,
	 obs varchar(255),
	 categoria varchar(255),
	 corrigido smallint NOT NULL,
	 tipo_comprovacao smallint NOT NULL,
	 tipo_insumo smallint NOT NULL,
	 observacao VARCHAR(255),
	 data_modificacao timestamp with time zone,
	 controle_id uuid,
	 ultimo_usuario VARCHAR(255),
	 geom geometry(MultiPoint, 31982),
	 CONSTRAINT rev_transp_p_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX rev_transp_p_geom ON edgv.rev_transp_p USING gist (geom);

ALTER TABLE edgv.rev_transp_p
	 ADD CONSTRAINT rev_transp_p_corrigido_fk FOREIGN KEY (corrigido)
	 REFERENCES dominios.booleano (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.rev_transp_p ALTER COLUMN corrigido SET DEFAULT 999;

ALTER TABLE edgv.rev_transp_p
	 ADD CONSTRAINT rev_transp_p_tipo_comprovacao_fk FOREIGN KEY (tipo_comprovacao)
	 REFERENCES dominios.tipo_comprovacao (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.rev_transp_p ALTER COLUMN tipo_comprovacao SET DEFAULT 999;

ALTER TABLE edgv.rev_transp_p
	 ADD CONSTRAINT rev_transp_p_tipo_insumo_fk FOREIGN KEY (tipo_insumo)
	 REFERENCES dominios.tipo_insumo (code) MATCH FULL
	 ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE edgv.rev_transp_p ALTER COLUMN tipo_insumo SET DEFAULT 999;
