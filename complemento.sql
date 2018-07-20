CREATE TABLE dominios.tipo_elemento_complexo (
 code smallint NOT NULL,
 code_name text NOT NULL, 
 filter text NOT NULL,
 CONSTRAINT tipo_elemento_complexo_pk PRIMARY KEY (code)
);

INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (999,'A SER PREENCHIDO','A SER PREENCHIDO');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (901,'Complexo gerador de energia elétrica','Complexo gerador de energia elétrica');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1001,'Complexo de comunicações','Complexo de comunicações');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1101,'Complexo de abastecimento de água','Complexo de abastecimento de água');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1201,'Complexo de saneamento','Complexo de saneamento');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1401,'Organização religiosa','Organização religiosa');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1801,'Madeireira','Madeireira');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1901,'Frigorífico ou matadouro','Frigorífico ou matadouro');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2001,'Organização de extração mineral','Organização de extração mineral');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2201,'Complexo habitacional','Complexo habitacional');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2701,'Organização de serviço social','Organização de serviço social');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2801,'Subestação Transm/Dist Energia Elétrica','Subestação de Transmissão');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2802,'Subestação Transm/Dist Energia Elétrica','Subestação de Distribuição');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2901,'Aldeia Indigena','Aldeia Indigena');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (101,'Estrut apoio - Estação','Estação - rodoviária'); --Estrut_apoio comercio e serviço não será considerada
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (102,'Estrut apoio - Estação','Estação - ferroviária');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (103,'Estrut apoio - Estação','Estação - metroviária');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (201,'Estrut apoio - Fiscalização','Fiscalização - rodoviária');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (202,'Estrut apoio - Fiscalização','Fiscalização - ferroviária');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (301,'Estrut apoio - Porto seco','Porto seco - rodoviário');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (302,'Estrut apoio - Porto seco','Porto seco - ferroviário');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (401,'Estrut apoio - Terminal rodoviário','Terminal rodoviário');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (601,'Estrut apoio - Terminal multimodal','Terminal multimodal');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (501,'Estrut apoio - Terminal urbano','Terminal urbano - rodoviário');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (502,'Estrut apoio - Terminal urbano','Terminal urbano - ferroviário');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (503,'Estrut apoio - Terminal urbano','Terminal urbano - metroviário');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (701,'Complexo aeroportuário','Aero - Aeródromo doméstico');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (702,'Complexo aeroportuário','Aero - Aeródromo internacional');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (703,'Complexo aeroportuário','Aero - Aeroporto doméstico');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (704,'Complexo aeroportuário','Aero - Aeroporto internacional');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (705,'Complexo aeroportuário','Aero - Heliporto'); -- por padrão doméstico
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (801,'Complexo portuário','Porto - Passageiros');  --somente será mapeado para porto organizado, considerando que instalação portuária faz parte deste
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (802,'Complexo portuário','Porto - Carga');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (803,'Complexo portuário','Porto - Passageiros e carga');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1301,'Organização de ensino','Ens - Educação infantil e fundamental');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1302,'Organização de ensino','Ens - Ensino médio');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1303,'Organização de ensino','Ens - Ensino superior');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1304,'Organização de ensino','Ens - Educação profissional e outras atividades de ensino');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1501,'Complexo de lazer','Laz - Complexo recreativo');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1502,'Complexo de lazer','Laz - Clube');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1503,'Complexo de lazer','Laz - Autódromo');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1504,'Complexo de lazer','Laz - Parque de diversões');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1505,'Complexo de lazer','Laz - Parque urbano');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1506,'Complexo de lazer','Laz - Parque aquático');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1507,'Complexo de lazer','Laz - Parque temático');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1508,'Complexo de lazer','Laz - Zoológico');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1509,'Complexo de lazer','Laz - Jardim botânico');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1510,'Complexo de lazer','Laz - Hipódromo');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1511,'Complexo de lazer','Laz - Hípica');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1512,'Complexo de lazer','Laz - Estande de tiro');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1513,'Complexo de lazer','Laz - Campo de golfe');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1514,'Complexo de lazer','Laz - Parque de eventos culturais');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1515,'Complexo de lazer','Laz - Camping');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1516,'Complexo de lazer','Laz - Complexo desportivo');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1601,'Organização de comércio/serviço','Comerc - Comércio e reparação de veículos / comércio a varejo de combustíveis');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1602,'Organização de comércio/serviço','Comerc - Comércio atacado e representantes comerciais');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1603,'Organização de comércio/serviço','Comerc - Comércio varejista e reparação de objetivos pessoais e domésticos');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1604,'Organização de comércio/serviço','Comerc - Comércio/serviço de alojamento e alimentação');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1605,'Organização de comércio/serviço','Comerc - Centro de convenções');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1701,'Organização industrial','Industrial - Indústrias de transformação');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (1702,'Organização industrial','Industrial - Indústrias de construção');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2101,'Organização agropecuária','Agro - Agricultura, pecuária e serviços relacionados');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2102,'Organização agropecuária','Agro - Silvicultura, exploração florestal e serviços relacionados');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2103,'Organização agropecuária','Agro - Pesca, aquicultura e serviços relacionados');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2301,'Estação de medição de fenômenos','Estação climatológica principal');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2302,'Estação de medição de fenômenos','Estação climatológica auxiliar');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2303,'Estação de medição de fenômenos','Estação agroclimatológica');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2304,'Estação de medição de fenômenos','Estação pluviométrica');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2305,'Estação de medição de fenômenos','Estação eólica');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2306,'Estação de medição de fenômenos','Estação evaporimétrica');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2307,'Estação de medição de fenômenos','Estação solarimétrica');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2308,'Estação de medição de fenômenos','Estação de radar meterológico');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2309,'Estação de medição de fenômenos','Estação de radiossonda');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2310,'Estação de medição de fenômenos','Estação fluviométrica');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2311,'Estação de medição de fenômenos','Estação maregráfica');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2312,'Estação de medição de fenômenos','Estação de marés terrestres - crosta');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2401,'Organização pública civil','Civ - Administração pública em geral');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2402,'Organização pública civil','Civ - Regulação das atividades sociais e culturais');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2403,'Organização pública civil','Civ - Regulação das atividades econômicas');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2404,'Organização pública civil','Civ - Atividades de apoio à administração pública');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2405,'Organização pública civil','Civ - Relações exteriores');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2406,'Organização pública civil','Civ - Justiça');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2407,'Organização pública civil','Civ - Segurança e ordem pública');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2408,'Organização pública civil','Civ - Defesa civil');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2409,'Organização pública civil','Civ - Seguridade social');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2501,'Organização pública militar','Mil - Marinha');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2502,'Organização pública militar','Mil - Exército');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2503,'Organização pública militar','Mil - Aeronáutica');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2504,'Organização pública militar','Mil - Polícia militar');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2505,'Organização pública militar','Mil - Corpo de bombeiros');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2601,'Organização de saúde','Sau - Atividades de atenção à saúde');
INSERT INTO dominios.tipo_elemento_complexo (code,filter,code_name) VALUES (2602,'Organização de saúde','Sau - Serviços veterinários');



CREATE TABLE edgv.infra_elemento_complexo_a(
	id serial NOT NULL,
    nome varchar(80),
    tipo smallint NOT NULL,
    administracao smallint NOT NULL,
	geom geometry(MULTIPOLYGON, 31982),
	CONSTRAINT infra_elemento_complexo_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);


ALTER TABLE edgv.infra_elemento_complexo_a
	ADD CONSTRAINT infra_elemento_complexo_a_tipo_fk FOREIGN KEY (tipo)
	REFERENCES dominios.tipo_elemento_complexo (code) MATCH FULL
	ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE edgv.infra_elemento_complexo_a
	ADD CONSTRAINT infra_elemento_complexo_a_administracao_fk FOREIGN KEY (administracao)
	REFERENCES dominios.administracao (code) MATCH FULL
	ON UPDATE NO ACTION ON DELETE NO ACTION;
	
CREATE INDEX infra_elemento_complexo_a_geom ON edgv.infra_elemento_complexo_a USING gist (geom);

ALTER TABLE ONLY edgv.infra_elemento_complexo_a ALTER COLUMN administracao SET DEFAULT 999;
ALTER TABLE ONLY edgv.infra_elemento_complexo_a ALTER COLUMN tipo SET DEFAULT 999;

CREATE TABLE public.aux_reambuladores (
 id integer UNIQUE NOT NULL, -- maior que 0, unico
 reambulador varchar(80) NOT NULL, --deve ser o nome do usuário do BD utilizado na reambulação por cada reambulador
 CONSTRAINT aux_reambuladores_pk PRIMARY KEY (id)
);