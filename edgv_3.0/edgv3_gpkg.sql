CREATE TABLE db_metadata(
	 edgvversion varchar(50) NOT NULL DEFAULT '3.0',
	 dbimplversion varchar(50) NOT NULL DEFAULT '4',
	 CONSTRAINT edgvversioncheck CHECK (edgvversion = '3.0')
);
INSERT INTO db_metadata (edgvversion, dbimplversion) VALUES ('3.0','4');

CREATE TABLE dominios_aptidao_operacional_atracadouro (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT aptidao_operacional_atracadouro_pk PRIMARY KEY (code)
);

INSERT INTO dominios_aptidao_operacional_atracadouro (code,code_name) VALUES (2,'Transporte de cabotagem');
INSERT INTO dominios_aptidao_operacional_atracadouro (code,code_name) VALUES (3,'Transporte oceânico');

CREATE TABLE dominios_tipo_sinal (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_sinal_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_sinal (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_sinal (code,code_name) VALUES (1,'Boia luminosa');
INSERT INTO dominios_tipo_sinal (code,code_name) VALUES (2,'Boia cega');
INSERT INTO dominios_tipo_sinal (code,code_name) VALUES (3,'Boia de amarração');
INSERT INTO dominios_tipo_sinal (code,code_name) VALUES (4,'Farol ou farolete');
INSERT INTO dominios_tipo_sinal (code,code_name) VALUES (5,'Barca farol');
INSERT INTO dominios_tipo_sinal (code,code_name) VALUES (6,'Sinalização de margem');

CREATE TABLE dominios_finalidade_cultura (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT finalidade_cultura_pk PRIMARY KEY (code)
);

INSERT INTO dominios_finalidade_cultura (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_finalidade_cultura (code,code_name) VALUES (1,'Exploração econômica');
INSERT INTO dominios_finalidade_cultura (code,code_name) VALUES (2,'Subsistência');
INSERT INTO dominios_finalidade_cultura (code,code_name) VALUES (3,'Conservação ambiental');
INSERT INTO dominios_finalidade_cultura (code,code_name) VALUES (4,'Ornamental');
INSERT INTO dominios_finalidade_cultura (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_travessia_ped (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_travessia_ped_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_travessia_ped (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_travessia_ped (code,code_name) VALUES (7,'Passagem subterrânea');
INSERT INTO dominios_tipo_travessia_ped (code,code_name) VALUES (8,'Passarela');
INSERT INTO dominios_tipo_travessia_ped (code,code_name) VALUES (9,'Pinguela');
INSERT INTO dominios_tipo_travessia_ped (code,code_name) VALUES (10,'Passarela em área úmida');

CREATE TABLE dominios_tipo_quebra_molhe (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_quebra_molhe_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_quebra_molhe (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_quebra_molhe (code,code_name) VALUES (1,'Quebramar');
INSERT INTO dominios_tipo_quebra_molhe (code,code_name) VALUES (2,'Molhe');
INSERT INTO dominios_tipo_quebra_molhe (code,code_name) VALUES (4,'Espigão');

CREATE TABLE dominios_bitola (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT bitola_pk PRIMARY KEY (code)
);

INSERT INTO dominios_bitola (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_bitola (code,code_name) VALUES (2,'Métrica');
INSERT INTO dominios_bitola (code,code_name) VALUES (3,'Internacional');
INSERT INTO dominios_bitola (code,code_name) VALUES (4,'Larga');
INSERT INTO dominios_bitola (code,code_name) VALUES (5,'Mista métrica internacional');
INSERT INTO dominios_bitola (code,code_name) VALUES (6,'Mista métrica larga');
INSERT INTO dominios_bitola (code,code_name) VALUES (7,'Mista internacional larga');

CREATE TABLE dominios_forma_extracao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT forma_extracao_pk PRIMARY KEY (code)
);

INSERT INTO dominios_forma_extracao (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_forma_extracao (code,code_name) VALUES (5,'A céu aberto');
INSERT INTO dominios_forma_extracao (code,code_name) VALUES (6,'Subterrânea');

CREATE TABLE dominios_tipo_edif_turist (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_turist_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (9,'Cruzeiro');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (10,'Estátua');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (11,'Mirante');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (12,'Monumento');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (13,'Panteão');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (14,'Chafariz');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (15,'Chaminé');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (16,'Escultura');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (17,'Obelisco');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (18,'Torre');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (19,'Administração');
INSERT INTO dominios_tipo_edif_turist (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_trecho_duto (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_trecho_duto_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_trecho_duto (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_trecho_duto (code,code_name) VALUES (1,'Duto');
INSERT INTO dominios_tipo_trecho_duto (code,code_name) VALUES (2,'Calha');
INSERT INTO dominios_tipo_trecho_duto (code,code_name) VALUES (3,'Correia transportadora');
INSERT INTO dominios_tipo_trecho_duto (code,code_name) VALUES (4,'Bueiro');
INSERT INTO dominios_tipo_trecho_duto (code,code_name) VALUES (5,'Galeria');

CREATE TABLE dominios_tipo_unid_prot_integ (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_unid_prot_integ_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_unid_prot_integ (code,code_name) VALUES (1,'Estação ecológica - ESEC');
INSERT INTO dominios_tipo_unid_prot_integ (code,code_name) VALUES (2,'Parque - PAR');
INSERT INTO dominios_tipo_unid_prot_integ (code,code_name) VALUES (3,'Monumento natural – MONA');
INSERT INTO dominios_tipo_unid_prot_integ (code,code_name) VALUES (4,'Reserva biológica – REBIO');
INSERT INTO dominios_tipo_unid_prot_integ (code,code_name) VALUES (5,'Refúgio da vida silvestre – RVS');

CREATE TABLE dominios_tipo_uso_edif (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_uso_edif_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_uso_edif (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_uso_edif (code,code_name) VALUES (1,'Próprio nacional');
INSERT INTO dominios_tipo_uso_edif (code,code_name) VALUES (2,'Uso da União');
INSERT INTO dominios_tipo_uso_edif (code,code_name) VALUES (5,'Uso do município');
INSERT INTO dominios_tipo_uso_edif (code,code_name) VALUES (6,'Uso da UF');
INSERT INTO dominios_tipo_uso_edif (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_dep_geral (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_dep_geral_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (1,'Tanque');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (2,'Caixa d''água');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (3,'Cisterna');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (4,'Depósito de lixo');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (5,'Aterro sanitário');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (6,'Aterro controlado');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (8,'Galpão');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (9,'Silo');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (10,'Composteira');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (11,'Depósito frigorífico');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (19,'Reservatório');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (26,'Barracão industrial');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (32,'Armazém');
INSERT INTO dominios_tipo_dep_geral (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_secao_ativ_econ (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT secao_ativ_econ_pk PRIMARY KEY (code)
);

INSERT INTO dominios_secao_ativ_econ (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_secao_ativ_econ (code,code_name) VALUES (1,'Indústrias extrativas');
INSERT INTO dominios_secao_ativ_econ (code,code_name) VALUES (2,'Indústrias de transformação');
INSERT INTO dominios_secao_ativ_econ (code,code_name) VALUES (3,'Construção');
INSERT INTO dominios_secao_ativ_econ (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_sistema_geodesico (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT sistema_geodesico_pk PRIMARY KEY (code)
);

INSERT INTO dominios_sistema_geodesico (code,code_name) VALUES (1,'SAD-69');
INSERT INTO dominios_sistema_geodesico (code,code_name) VALUES (2,'SIRGAS2000');
INSERT INTO dominios_sistema_geodesico (code,code_name) VALUES (3,'WGS-84');
INSERT INTO dominios_sistema_geodesico (code,code_name) VALUES (4,'Córrego Alegre');
INSERT INTO dominios_sistema_geodesico (code,code_name) VALUES (5,'Astro Chuá');
INSERT INTO dominios_sistema_geodesico (code,code_name) VALUES (6,'Outra referência');
INSERT INTO dominios_sistema_geodesico (code,code_name) VALUES (7,'SAD-69 (96)');

CREATE TABLE dominios_tipo_trecho_comunic (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_trecho_comunic_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_trecho_comunic (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_trecho_comunic (code,code_name) VALUES (3,'Sinal de TV');
INSERT INTO dominios_tipo_trecho_comunic (code,code_name) VALUES (4,'Dados');
INSERT INTO dominios_tipo_trecho_comunic (code,code_name) VALUES (7,'Telefônica');
INSERT INTO dominios_tipo_trecho_comunic (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_administracao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT administracao_pk PRIMARY KEY (code)
);

INSERT INTO dominios_administracao (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_administracao (code,code_name) VALUES (2,'Federal');
INSERT INTO dominios_administracao (code,code_name) VALUES (3,'Estadual/Distrital');
INSERT INTO dominios_administracao (code,code_name) VALUES (4,'Municipal');
INSERT INTO dominios_administracao (code,code_name) VALUES (5,'Concessionada');
INSERT INTO dominios_administracao (code,code_name) VALUES (6,'Privada');
INSERT INTO dominios_administracao (code,code_name) VALUES (97,'Não aplicável');

CREATE TABLE dominios_tipo_via (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_via_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_via (code,code_name) VALUES (1,'Logradouro');
INSERT INTO dominios_tipo_via (code,code_name) VALUES (2,'Rodovia');
INSERT INTO dominios_tipo_via (code,code_name) VALUES (3,'Beco');
INSERT INTO dominios_tipo_via (code,code_name) VALUES (4,'Autoestrada');
INSERT INTO dominios_tipo_via (code,code_name) VALUES (5,'Ligação entre pistas');
INSERT INTO dominios_tipo_via (code,code_name) VALUES (6,'Trecho de entroncamento');
INSERT INTO dominios_tipo_via (code,code_name) VALUES (7,'Servidão');
INSERT INTO dominios_tipo_via (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_cultivo_predominante (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT cultivo_predominante_pk PRIMARY KEY (code)
);

INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (1,'Milho');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (2,'Banana');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (3,'Laranja');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (4,'Trigo');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (6,'Algodão herbáceo');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (7,'Cana-de-açúcar');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (8,'Fumo');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (9,'Soja');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (10,'Batata inglesa');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (11,'Mandioca, aipim ou macaxeira');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (12,'Feijão');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (13,'Arroz');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (14,'Café');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (15,'Cacau');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (16,'Erva-mate');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (17,'Palmeira');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (18,'Açaí');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (19,'Seringueira');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (20,'Eucalipto');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (21,'Acácia');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (22,'Algaroba');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (23,'Pinus');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (24,'Pastagem cultivada');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (25,'Hortaliças');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (26,'Bracatinga');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (27,'Araucária');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (28,'Carnaúba');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (29,'Pera');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (30,'Maçã');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (31,'Pêssego');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (32,'Juta');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (33,'Cebola');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (42,'Uva');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (43,'Abacate');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (44,'Abacaxi ou ananás');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (45,'Abóbora');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (46,'Acerola');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (47,'Alcachofra');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (48,'Alfafa');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (49,'Algodão arbóreo');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (50,'Alho');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (51,'Ameixa');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (52,'Amendoim');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (53,'Amora');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (54,'Aveia');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (55,'Azeitona');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (56,'Azevem');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (57,'Batata-doce');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (58,'Caju');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (59,'Caqui');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (60,'Carambola');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (61,'Centeio');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (62,'Cevada');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (63,'Chá-da-índia');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (64,'Cidra');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (65,'Coco-da-baía');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (66,'Cravo-da-índia');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (67,'Cupuaçu');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (68,'Dendê');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (69,'Ervilha');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (70,'Fava');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (71,'Figo');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (72,'Flores');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (73,'Girassol');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (74,'Goiaba');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (75,'Grão-de-Bico');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (76,'Guaraná');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (77,'Inhame');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (78,'Kiwi');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (79,'Lentilha');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (80,'Limão');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (81,'Linho');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (82,'Malva');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (83,'Mamão');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (84,'Mamona');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (85,'Manga');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (86,'Maracujá');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (87,'Marmelo');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (88,'Melancia');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (89,'Melão');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (90,'Milheto');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (96,'Não identificado');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (98,'Misto');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (99,'Outros');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (100,'Nabo forrageiro');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (101,'Noz');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (102,'Palmito');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (103,'Pepino');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (104,'Piaçava');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (105,'Pimenta-do-reino');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (106,'Plantas ornamentais');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (108,'Rami');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (110,'Sisal ou agave');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (111,'Sorgo');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (112,'Tangerina');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (113,'Tomate');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (114,'Triticale');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (115,'Tungue');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (116,'Urucum');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (117,'Gergelim');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (118,'Pupunha');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (119,'Lima');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (120,'Araçá');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (121,'Cultura rotativa');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (122,'Mandacaru');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (123,'Milho pipoca');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (124,'Morango');
INSERT INTO dominios_cultivo_predominante (code,code_name) VALUES (125,'Graviola');

CREATE TABLE dominios_forma_rocha (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT forma_rocha_pk PRIMARY KEY (code)
);

INSERT INTO dominios_forma_rocha (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_forma_rocha (code,code_name) VALUES (21,'Matacão - pedra');
INSERT INTO dominios_forma_rocha (code,code_name) VALUES (22,'Penedo isolado');
INSERT INTO dominios_forma_rocha (code,code_name) VALUES (23,'Área rochosa - lajedo');

CREATE TABLE dominios_tipo_hierarquia (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_hierarquia_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_hierarquia (code,code_name) VALUES (3,'Municipal');
INSERT INTO dominios_tipo_hierarquia (code,code_name) VALUES (23,'Estadual');
INSERT INTO dominios_tipo_hierarquia (code,code_name) VALUES (24,'Internacional secundário');
INSERT INTO dominios_tipo_hierarquia (code,code_name) VALUES (25,'Internacional de referência');
INSERT INTO dominios_tipo_hierarquia (code,code_name) VALUES (26,'Internacional principal');
INSERT INTO dominios_tipo_hierarquia (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_transporte (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_transporte_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_transporte (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_transporte (code,code_name) VALUES (21,'Passageiro');
INSERT INTO dominios_tipo_transporte (code,code_name) VALUES (22,'Carga');
INSERT INTO dominios_tipo_transporte (code,code_name) VALUES (98,'Misto');

CREATE TABLE dominios_sigla_uf (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT sigla_uf_pk PRIMARY KEY (code)
);

INSERT INTO dominios_sigla_uf (code,code_name) VALUES (1,'AC');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (2,'AL');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (3,'AM');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (4,'AP');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (5,'BA');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (6,'CE');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (7,'DF');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (8,'ES');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (9,'GO');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (10,'MA');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (11,'MG');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (12,'MS');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (13,'MT');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (14,'PA');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (15,'PB');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (16,'PE');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (17,'PI');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (18,'PR');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (19,'RJ');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (20,'RN');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (21,'RO');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (22,'RR');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (23,'RS');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (24,'SC');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (25,'SE');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (26,'SP');
INSERT INTO dominios_sigla_uf (code,code_name) VALUES (27,'TO');

CREATE TABLE dominios_referencial_grav (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT referencial_grav_pk PRIMARY KEY (code)
);

INSERT INTO dominios_referencial_grav (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_referencial_grav (code,code_name) VALUES (1,'Potsdam 1930');
INSERT INTO dominios_referencial_grav (code,code_name) VALUES (2,'IGSN71');
INSERT INTO dominios_referencial_grav (code,code_name) VALUES (3,'Absoluto');
INSERT INTO dominios_referencial_grav (code,code_name) VALUES (4,'Local');
INSERT INTO dominios_referencial_grav (code,code_name) VALUES (5,'RGFB');
INSERT INTO dominios_referencial_grav (code,code_name) VALUES (97,'Não aplicável');

CREATE TABLE dominios_tipo_pista_comp (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_pista_comp_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_pista_comp (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_pista_comp (code,code_name) VALUES (1,'Atletismo');
INSERT INTO dominios_tipo_pista_comp (code,code_name) VALUES (3,'Motociclismo');
INSERT INTO dominios_tipo_pista_comp (code,code_name) VALUES (4,'Automobilismo');
INSERT INTO dominios_tipo_pista_comp (code,code_name) VALUES (5,'Corrida de cavalos');
INSERT INTO dominios_tipo_pista_comp (code,code_name) VALUES (6,'Bicicross');
INSERT INTO dominios_tipo_pista_comp (code,code_name) VALUES (7,'Ciclismo');
INSERT INTO dominios_tipo_pista_comp (code,code_name) VALUES (8,'Motocross');
INSERT INTO dominios_tipo_pista_comp (code,code_name) VALUES (98,'Misto');
INSERT INTO dominios_tipo_pista_comp (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_estado_fisico (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT estado_fisico_pk PRIMARY KEY (code)
);

INSERT INTO dominios_estado_fisico (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_estado_fisico (code,code_name) VALUES (1,'Líquido');
INSERT INTO dominios_estado_fisico (code,code_name) VALUES (2,'Sólido');
INSERT INTO dominios_estado_fisico (code,code_name) VALUES (3,'Gasoso');
INSERT INTO dominios_estado_fisico (code,code_name) VALUES (98,'Misto');

CREATE TABLE dominios_tipo_travessia (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_travessia_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_travessia (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_travessia (code,code_name) VALUES (1,'Vau natural');
INSERT INTO dominios_tipo_travessia (code,code_name) VALUES (2,'Vau construída');
INSERT INTO dominios_tipo_travessia (code,code_name) VALUES (3,'Bote transportador');
INSERT INTO dominios_tipo_travessia (code,code_name) VALUES (4,'Balsa');

CREATE TABLE dominios_tipo_atracad (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_atracad_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_atracad (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_atracad (code,code_name) VALUES (38,'Cais');
INSERT INTO dominios_tipo_atracad (code,code_name) VALUES (39,'Cais flutuante');
INSERT INTO dominios_tipo_atracad (code,code_name) VALUES (40,'Trapiche');
INSERT INTO dominios_tipo_atracad (code,code_name) VALUES (41,'Molhe de atracação');
INSERT INTO dominios_tipo_atracad (code,code_name) VALUES (42,'Píer');
INSERT INTO dominios_tipo_atracad (code,code_name) VALUES (43,'Dolfim');
INSERT INTO dominios_tipo_atracad (code,code_name) VALUES (44,'Desembarcadouro');

CREATE TABLE dominios_uso_principal (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT uso_principal_pk PRIMARY KEY (code)
);

INSERT INTO dominios_uso_principal (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_uso_principal (code,code_name) VALUES (1,'Irrigação');
INSERT INTO dominios_uso_principal (code,code_name) VALUES (2,'Abastecimento');
INSERT INTO dominios_uso_principal (code,code_name) VALUES (3,'Energia');
INSERT INTO dominios_uso_principal (code,code_name) VALUES (4,'Lazer');
INSERT INTO dominios_uso_principal (code,code_name) VALUES (5,'Dessedentação animal');
INSERT INTO dominios_uso_principal (code,code_name) VALUES (6,'Drenagem');
INSERT INTO dominios_uso_principal (code,code_name) VALUES (97,'Não aplicável');
INSERT INTO dominios_uso_principal (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_densidade (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT densidade_pk PRIMARY KEY (code)
);

INSERT INTO dominios_densidade (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_densidade (code,code_name) VALUES (1,'Alta');
INSERT INTO dominios_densidade (code,code_name) VALUES (2,'Baixa');

CREATE TABLE dominios_atividade (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT atividade_pk PRIMARY KEY (code)
);

INSERT INTO dominios_atividade (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_atividade (code,code_name) VALUES (9,'Prospecção');
INSERT INTO dominios_atividade (code,code_name) VALUES (10,'Produção');

CREATE TABLE dominios_tipo_ahe (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_ahe_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_ahe (code,code_name) VALUES (1,'UHE');
INSERT INTO dominios_tipo_ahe (code,code_name) VALUES (2,'PCH');
INSERT INTO dominios_tipo_ahe (code,code_name) VALUES (3,'CGH');

CREATE TABLE dominios_tipo_vegetacao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_vegetacao_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (2,'Vegetação cultivada');
INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (3,'Floresta');
INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (4,'Vegetação de mangue');
INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (5,'Refúgio ecológico');
INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (6,'Campinarana');
INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (7,'Cerrado');
INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (8,'Vegetação de restinga');
INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (9,'Estepe');
INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (10,'Vegetação de brejo ou pântano');
INSERT INTO dominios_tipo_vegetacao (code,code_name) VALUES (11,'Caatinga');

CREATE TABLE dominios_tipo_curva_nivel (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_curva_nivel_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_curva_nivel (code,code_name) VALUES (1,'Mestra');
INSERT INTO dominios_tipo_curva_nivel (code,code_name) VALUES (2,'Normal');
INSERT INTO dominios_tipo_curva_nivel (code,code_name) VALUES (3,'Auxiliar');

CREATE TABLE dominios_modalidade (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT modalidade_pk PRIMARY KEY (code)
);

INSERT INTO dominios_modalidade (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_modalidade (code,code_name) VALUES (1,'Radiocomunicação');
INSERT INTO dominios_modalidade (code,code_name) VALUES (2,'Imagem');
INSERT INTO dominios_modalidade (code,code_name) VALUES (3,'Telefonia');
INSERT INTO dominios_modalidade (code,code_name) VALUES (4,'Dados');
INSERT INTO dominios_modalidade (code,code_name) VALUES (5,'Som');
INSERT INTO dominios_modalidade (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_instal_militar (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_instal_militar_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (5,'Aquartelamento');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (6,'Campo de instrução');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (7,'Campo de tiro');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (8,'Base aérea');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (9,'Distrito naval');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (10,'Hotel de trânsito');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (11,'Delegacia de serviço militar');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (12,'Quartel general');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (13,'Posto de vigilância');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (14,'Posto de policiamento urbano');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (15,'Posto de policiamento rodoviário');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (16,'Capitania dos portos');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (17,'Base naval');
INSERT INTO dominios_tipo_instal_militar (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_uso_pista (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT uso_pista_pk PRIMARY KEY (code)
);

INSERT INTO dominios_uso_pista (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_uso_pista (code,code_name) VALUES (6,'Particular');
INSERT INTO dominios_uso_pista (code,code_name) VALUES (11,'Público');
INSERT INTO dominios_uso_pista (code,code_name) VALUES (12,'Militar');
INSERT INTO dominios_uso_pista (code,code_name) VALUES (13,'Público compartilhado com uso militar');

CREATE TABLE dominios_tipo_combustivel (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_combustivel_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_combustivel (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_combustivel (code,code_name) VALUES (1,'Nuclear');
INSERT INTO dominios_tipo_combustivel (code,code_name) VALUES (3,'Diesel');
INSERT INTO dominios_tipo_combustivel (code,code_name) VALUES (5,'Gás');
INSERT INTO dominios_tipo_combustivel (code,code_name) VALUES (7,'Biomassa');
INSERT INTO dominios_tipo_combustivel (code,code_name) VALUES (33,'Carvão');
INSERT INTO dominios_tipo_combustivel (code,code_name) VALUES (98,'Misto');
INSERT INTO dominios_tipo_combustivel (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_equip_agropec (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_equip_agropec_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_equip_agropec (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_equip_agropec (code,code_name) VALUES (1,'Pivô central');
INSERT INTO dominios_tipo_equip_agropec (code,code_name) VALUES (2,'Moinho');
INSERT INTO dominios_tipo_equip_agropec (code,code_name) VALUES (3,'Elevador de grãos');
INSERT INTO dominios_tipo_equip_agropec (code,code_name) VALUES (4,'Moega');
INSERT INTO dominios_tipo_equip_agropec (code,code_name) VALUES (5,'Secador');
INSERT INTO dominios_tipo_equip_agropec (code,code_name) VALUES (6,'Tombador');
INSERT INTO dominios_tipo_equip_agropec (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_org_civil (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_org_civil_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (1,'Policial');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (2,'Prisional');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (3,'Cartorial');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (4,'Gestão');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (5,'Eleitoral');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (6,'Produção e/ou pesquisa');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (7,'Seguridade social');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (8,'Câmara municipal');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (9,'Assembleia legislativa');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (10,'Autarquia');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (11,'Delegacia de polícia civil');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (12,'Educação');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (13,'Fórum');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (14,'Fundação');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (15,'Procuradoria');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (16,'Secretaria');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (22,'Prefeitura');
INSERT INTO dominios_tipo_org_civil (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_modal_uso (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT modal_uso_pk PRIMARY KEY (code)
);

INSERT INTO dominios_modal_uso (code,code_name) VALUES (4,'Rodoviário');
INSERT INTO dominios_modal_uso (code,code_name) VALUES (5,'Ferroviário');
INSERT INTO dominios_modal_uso (code,code_name) VALUES (6,'Metroviário');
INSERT INTO dominios_modal_uso (code,code_name) VALUES (7,'Dutos');
INSERT INTO dominios_modal_uso (code,code_name) VALUES (9,'Aeroportuário');
INSERT INTO dominios_modal_uso (code,code_name) VALUES (10,'Hidroviário');
INSERT INTO dominios_modal_uso (code,code_name) VALUES (14,'Portuário');

CREATE TABLE dominios_causa (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT causa_pk PRIMARY KEY (code)
);

INSERT INTO dominios_causa (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_causa (code,code_name) VALUES (2,'Absorção');
INSERT INTO dominios_causa (code,code_name) VALUES (4,'Gruta ou fenda');
INSERT INTO dominios_causa (code,code_name) VALUES (5,'Canalização');

CREATE TABLE dominios_regime (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT regime_pk PRIMARY KEY (code)
);

INSERT INTO dominios_regime (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_regime (code,code_name) VALUES (1,'Permanente');
INSERT INTO dominios_regime (code,code_name) VALUES (2,'Permanente com grande variação');
INSERT INTO dominios_regime (code,code_name) VALUES (3,'Temporário');
INSERT INTO dominios_regime (code,code_name) VALUES (4,'Temporário com leito permanente');
INSERT INTO dominios_regime (code,code_name) VALUES (5,'Seco');

CREATE TABLE dominios_rede_referencia (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT rede_referencia_pk PRIMARY KEY (code)
);

INSERT INTO dominios_rede_referencia (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_rede_referencia (code,code_name) VALUES (2,'Estadual');
INSERT INTO dominios_rede_referencia (code,code_name) VALUES (3,'Municipal');
INSERT INTO dominios_rede_referencia (code,code_name) VALUES (14,'Nacional');
INSERT INTO dominios_rede_referencia (code,code_name) VALUES (15,'Privada');

CREATE TABLE dominios_especie_trecho_energia (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT especie_trecho_energia_pk PRIMARY KEY (code)
);

INSERT INTO dominios_especie_trecho_energia (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_especie_trecho_energia (code,code_name) VALUES (2,'Distribuição');
INSERT INTO dominios_especie_trecho_energia (code,code_name) VALUES (3,'Transmissão');

CREATE TABLE dominios_tipo_edif_rod (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_rod_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_rod (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_rod (code,code_name) VALUES (8,'Terminal interestadual');
INSERT INTO dominios_tipo_edif_rod (code,code_name) VALUES (9,'Terminal urbano');
INSERT INTO dominios_tipo_edif_rod (code,code_name) VALUES (10,'Parada interestadual');
INSERT INTO dominios_tipo_edif_rod (code,code_name) VALUES (13,'Posto de pedágio');
INSERT INTO dominios_tipo_edif_rod (code,code_name) VALUES (15,'Administração');
INSERT INTO dominios_tipo_edif_rod (code,code_name) VALUES (20,'Garagem');
INSERT INTO dominios_tipo_edif_rod (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_area (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_area_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_area (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (1,'Área de propriedade particular');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (2,'Área habitacional');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (3,'Área relacionada a dutos');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (4,'Área relacionada a edificação agropecuária ou extrativismo vegetal ou pesca');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (5,'Área relacionada a edificação de comércio ou serviços');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (6,'Área relacionada a edificação de ensino');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (7,'Área relacionada a edificação de saúde');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (8,'Área relacionada a edificação industrial');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (9,'Área relacionada a edificação religiosa');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (10,'Área relacionada a energia elétrica');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (11,'Área relacionada a equipamentos de desenvolvimento social');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (12,'Área relacionada a estação de medição de fenômenos');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (13,'Área relacionada ao extrativismo mineral');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (14,'Área relacionada a instalação de abastecimento de água');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (15,'Área relacionada a instalação de comunicações');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (16,'Área relacionada a instalação de estrutura de transporte');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (17,'Área relacionada a instalação de saneamento');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (18,'Área relacionada ao lazer');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (19,'Área relacionada a ruínas de valor histórico');
INSERT INTO dominios_tipo_area (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_alter_antrop (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_alter_antrop_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_alter_antrop (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_alter_antrop (code,code_name) VALUES (24,'Caixa de empréstimo');
INSERT INTO dominios_tipo_alter_antrop (code,code_name) VALUES (26,'Corte');
INSERT INTO dominios_tipo_alter_antrop (code,code_name) VALUES (27,'Aterro');
INSERT INTO dominios_tipo_alter_antrop (code,code_name) VALUES (28,'Resíduo de bota-fora');
INSERT INTO dominios_tipo_alter_antrop (code,code_name) VALUES (29,'Resíduo sólido em geral');
INSERT INTO dominios_tipo_alter_antrop (code,code_name) VALUES (30,'Canal');
INSERT INTO dominios_tipo_alter_antrop (code,code_name) VALUES (31,'Vala');
INSERT INTO dominios_tipo_alter_antrop (code,code_name) VALUES (32,'Área de extração mineral');
INSERT INTO dominios_tipo_alter_antrop (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_edif_comunic (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_comunic_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_comunic (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_comunic (code,code_name) VALUES (1,'Centro de operações');
INSERT INTO dominios_tipo_edif_comunic (code,code_name) VALUES (2,'Central comutação e transmissão');
INSERT INTO dominios_tipo_edif_comunic (code,code_name) VALUES (3,'Estação rádio base');
INSERT INTO dominios_tipo_edif_comunic (code,code_name) VALUES (4,'Estação repetidora');
INSERT INTO dominios_tipo_edif_comunic (code,code_name) VALUES (5,'Administração');

CREATE TABLE dominios_tipo_tunel (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_tunel_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_tunel (code,code_name) VALUES (1,'Túnel');
INSERT INTO dominios_tipo_tunel (code,code_name) VALUES (2,'Passagem subterrânea');

CREATE TABLE dominios_nr_linhas (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT nr_linhas_pk PRIMARY KEY (code)
);

INSERT INTO dominios_nr_linhas (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_nr_linhas (code,code_name) VALUES (1,'Simples');
INSERT INTO dominios_nr_linhas (code,code_name) VALUES (2,'Dupla');
INSERT INTO dominios_nr_linhas (code,code_name) VALUES (3,'Múltipla');

CREATE TABLE dominios_tipo_pto_ref_geod_topo (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_pto_ref_geod_topo_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_pto_ref_geod_topo (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_pto_ref_geod_topo (code,code_name) VALUES (1,'Vértice de triangulação - VT');
INSERT INTO dominios_tipo_pto_ref_geod_topo (code,code_name) VALUES (2,'Referência de nível - RN');
INSERT INTO dominios_tipo_pto_ref_geod_topo (code,code_name) VALUES (3,'Estação gravimétrica - EG');
INSERT INTO dominios_tipo_pto_ref_geod_topo (code,code_name) VALUES (4,'Estação de poligonal - EP');
INSERT INTO dominios_tipo_pto_ref_geod_topo (code,code_name) VALUES (5,'Ponto astronômico - PA');
INSERT INTO dominios_tipo_pto_ref_geod_topo (code,code_name) VALUES (6,'Ponto barométrico - B');
INSERT INTO dominios_tipo_pto_ref_geod_topo (code,code_name) VALUES (7,'Ponto trigonométrico - RV');
INSERT INTO dominios_tipo_pto_ref_geod_topo (code,code_name) VALUES (8,'Ponto de satélite - SAT');
INSERT INTO dominios_tipo_pto_ref_geod_topo (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_trecho_ferrov (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_trecho_ferrov_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_trecho_ferrov (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_trecho_ferrov (code,code_name) VALUES (5,'Trecho para bonde');
INSERT INTO dominios_tipo_trecho_ferrov (code,code_name) VALUES (6,'Trecho para aeromóvel');
INSERT INTO dominios_tipo_trecho_ferrov (code,code_name) VALUES (7,'Trecho para trem');
INSERT INTO dominios_tipo_trecho_ferrov (code,code_name) VALUES (8,'Trecho para metrô');

CREATE TABLE dominios_material_predominante (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT material_predominante_pk PRIMARY KEY (code)
);

INSERT INTO dominios_material_predominante (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (4,'Rocha');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (12,'Areia');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (13,'Areia fina');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (14,'Lama');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (15,'Argila');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (16,'Lodo');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (17,'Concha');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (18,'Cascalho');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (19,'Seixo');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (20,'Coral');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (22,'Ervas marinhas');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (50,'Pedra');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (97,'Não aplicável');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (98,'Misto');
INSERT INTO dominios_material_predominante (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_rep_diplomatica (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_rep_diplomatica_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_rep_diplomatica (code,code_name) VALUES (2,'Embaixada');
INSERT INTO dominios_tipo_rep_diplomatica (code,code_name) VALUES (3,'Consulado');

CREATE TABLE dominios_tipo_embarcacao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_embarcacao_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_embarcacao (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_embarcacao (code,code_name) VALUES (2,'Balsa');
INSERT INTO dominios_tipo_embarcacao (code,code_name) VALUES (3,'Lancha');
INSERT INTO dominios_tipo_embarcacao (code,code_name) VALUES (6,'Empurrador-balsa');
INSERT INTO dominios_tipo_embarcacao (code,code_name) VALUES (7,'Embarcação de pequeno porte');
INSERT INTO dominios_tipo_embarcacao (code,code_name) VALUES (97,'Não aplicável');

CREATE TABLE dominios_tipo_terreno_exposto (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_terreno_exposto_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_terreno_exposto (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_terreno_exposto (code,code_name) VALUES (4,'Pedregoso');
INSERT INTO dominios_tipo_terreno_exposto (code,code_name) VALUES (12,'Areia');
INSERT INTO dominios_tipo_terreno_exposto (code,code_name) VALUES (18,'Cascalho');
INSERT INTO dominios_tipo_terreno_exposto (code,code_name) VALUES (23,'Terra');
INSERT INTO dominios_tipo_terreno_exposto (code,code_name) VALUES (24,'Saibro');

CREATE TABLE dominios_tipo_delim_fis (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_delim_fis_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_delim_fis (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_delim_fis (code,code_name) VALUES (1,'Cerca');
INSERT INTO dominios_tipo_delim_fis (code,code_name) VALUES (2,'Muro');
INSERT INTO dominios_tipo_delim_fis (code,code_name) VALUES (3,'Mureta');
INSERT INTO dominios_tipo_delim_fis (code,code_name) VALUES (4,'Gradil');

CREATE TABLE dominios_tipo_banco (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_banco_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_banco (code,code_name) VALUES (1,'Fluvial');
INSERT INTO dominios_tipo_banco (code,code_name) VALUES (2,'Marítimo');
INSERT INTO dominios_tipo_banco (code,code_name) VALUES (3,'Lacustre');
INSERT INTO dominios_tipo_banco (code,code_name) VALUES (4,'Cordão arenoso');

CREATE TABLE dominios_local_equip_desenv_social (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT local_equip_desenv_social_pk PRIMARY KEY (code)
);

INSERT INTO dominios_local_equip_desenv_social (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_local_equip_desenv_social (code,code_name) VALUES (1,'Terras Indígena');
INSERT INTO dominios_local_equip_desenv_social (code,code_name) VALUES (2,'Terras de População Ribeirinha');
INSERT INTO dominios_local_equip_desenv_social (code,code_name) VALUES (3,'Terras Quilombola');
INSERT INTO dominios_local_equip_desenv_social (code,code_name) VALUES (4,'Rural');
INSERT INTO dominios_local_equip_desenv_social (code,code_name) VALUES (5,'Urbano central');
INSERT INTO dominios_local_equip_desenv_social (code,code_name) VALUES (6,'Urbana periférica');
INSERT INTO dominios_local_equip_desenv_social (code,code_name) VALUES (7,'Outras Comunidades tradicionais');

CREATE TABLE dominios_tipo_ref (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_ref_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_ref (code,code_name) VALUES (1,'Altimétrico');
INSERT INTO dominios_tipo_ref (code,code_name) VALUES (2,'Planimétrico');
INSERT INTO dominios_tipo_ref (code,code_name) VALUES (3,'Planialtimétrico');
INSERT INTO dominios_tipo_ref (code,code_name) VALUES (4,'Gravimétrico');

CREATE TABLE dominios_tipo_pista (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_pista_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_pista (code,code_name) VALUES (9,'Pista de pouso');
INSERT INTO dominios_tipo_pista (code,code_name) VALUES (10,'Pista de taxiamento');
INSERT INTO dominios_tipo_pista (code,code_name) VALUES (11,'Heliponto');

CREATE TABLE dominios_destinacao_cemiterio (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT destinacao_cemiterio_pk PRIMARY KEY (code)
);

INSERT INTO dominios_destinacao_cemiterio (code,code_name) VALUES (2,'Humanos');
INSERT INTO dominios_destinacao_cemiterio (code,code_name) VALUES (3,'Animais');

CREATE TABLE dominios_tipo_fonte_dagua (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_fonte_dagua_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_fonte_dagua (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_fonte_dagua (code,code_name) VALUES (1,'Poço');
INSERT INTO dominios_tipo_fonte_dagua (code,code_name) VALUES (2,'Poço artesiano');
INSERT INTO dominios_tipo_fonte_dagua (code,code_name) VALUES (3,'Olho d''água');

CREATE TABLE dominios_tipo_edif_aero (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_aero_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_aero (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_aero (code,code_name) VALUES (15,'Administração');
INSERT INTO dominios_tipo_edif_aero (code,code_name) VALUES (26,'Terminal de passageiros');
INSERT INTO dominios_tipo_edif_aero (code,code_name) VALUES (27,'Terminal de cargas');
INSERT INTO dominios_tipo_edif_aero (code,code_name) VALUES (28,'Torre de controle');
INSERT INTO dominios_tipo_edif_aero (code,code_name) VALUES (29,'Hangar');
INSERT INTO dominios_tipo_edif_aero (code,code_name) VALUES (30,'Serviço de combate a incêndios (SCI)');
INSERT INTO dominios_tipo_edif_aero (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_entroncamento (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_entroncamento_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_entroncamento (code,code_name) VALUES (1,'Cruzamento ou injunções simples');
INSERT INTO dominios_tipo_entroncamento (code,code_name) VALUES (2,'Círculo');
INSERT INTO dominios_tipo_entroncamento (code,code_name) VALUES (3,'Trevo');
INSERT INTO dominios_tipo_entroncamento (code,code_name) VALUES (4,'Rótula');
INSERT INTO dominios_tipo_entroncamento (code,code_name) VALUES (5,'Entroncamento ferroviário');
INSERT INTO dominios_tipo_entroncamento (code,code_name) VALUES (99,'Outros tipos de entroncamento em nível');

CREATE TABLE dominios_tipo_est_gerad (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_est_gerad_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_est_gerad (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_est_gerad (code,code_name) VALUES (5,'Eólica');
INSERT INTO dominios_tipo_est_gerad (code,code_name) VALUES (6,'Solar');
INSERT INTO dominios_tipo_est_gerad (code,code_name) VALUES (7,'Maré-motriz');
INSERT INTO dominios_tipo_est_gerad (code,code_name) VALUES (8,'Hidrelétrica');
INSERT INTO dominios_tipo_est_gerad (code,code_name) VALUES (9,'Termelétrica');
INSERT INTO dominios_tipo_est_gerad (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_situacao_juridica (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT situacao_juridica_pk PRIMARY KEY (code)
);

INSERT INTO dominios_situacao_juridica (code,code_name) VALUES (1,'Delimitada');
INSERT INTO dominios_situacao_juridica (code,code_name) VALUES (2,'Declarada');
INSERT INTO dominios_situacao_juridica (code,code_name) VALUES (3,'Homologada ou demarcada');
INSERT INTO dominios_situacao_juridica (code,code_name) VALUES (4,'Regularizada');

CREATE TABLE dominios_tipo_edif_relig (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_relig_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (1,'Igreja');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (2,'Templo');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (3,'Centro');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (4,'Mosteiro');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (5,'Convento');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (6,'Mesquita');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (7,'Sinagoga');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (8,'Terreiro');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (9,'Capela mortuária');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (10,'Administração');
INSERT INTO dominios_tipo_edif_relig (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_denominacao_associada (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT denominacao_associada_pk PRIMARY KEY (code)
);

INSERT INTO dominios_denominacao_associada (code,code_name) VALUES (5,'Cristã');
INSERT INTO dominios_denominacao_associada (code,code_name) VALUES (6,'Israelita');
INSERT INTO dominios_denominacao_associada (code,code_name) VALUES (7,'Muçulmana');
INSERT INTO dominios_denominacao_associada (code,code_name) VALUES (97,'Não aplicável');
INSERT INTO dominios_denominacao_associada (code,code_name) VALUES (99,'Outras');

CREATE TABLE dominios_tipo_lavoura (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_lavoura_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_lavoura (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_lavoura (code,code_name) VALUES (1,'Perene');
INSERT INTO dominios_tipo_lavoura (code,code_name) VALUES (2,'Semi-perene');
INSERT INTO dominios_tipo_lavoura (code,code_name) VALUES (3,'Anual');

CREATE TABLE dominios_tipo_ilha (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_ilha_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_ilha (code,code_name) VALUES (1,'Fluvial');
INSERT INTO dominios_tipo_ilha (code,code_name) VALUES (2,'Marítima');
INSERT INTO dominios_tipo_ilha (code,code_name) VALUES (3,'Lacustre');

CREATE TABLE dominios_tipo_campo_quadra (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_campo_quadra_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_campo_quadra (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_campo_quadra (code,code_name) VALUES (1,'Futebol');
INSERT INTO dominios_tipo_campo_quadra (code,code_name) VALUES (2,'Basquetebol');
INSERT INTO dominios_tipo_campo_quadra (code,code_name) VALUES (3,'Voleibol');
INSERT INTO dominios_tipo_campo_quadra (code,code_name) VALUES (4,'Pólo');
INSERT INTO dominios_tipo_campo_quadra (code,code_name) VALUES (5,'Hipismo');
INSERT INTO dominios_tipo_campo_quadra (code,code_name) VALUES (6,'Poliesportiva');
INSERT INTO dominios_tipo_campo_quadra (code,code_name) VALUES (7,'Tênis');
INSERT INTO dominios_tipo_campo_quadra (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_ponte (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_ponte_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_ponte (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_ponte (code,code_name) VALUES (1,'Móvel');
INSERT INTO dominios_tipo_ponte (code,code_name) VALUES (2,'Pênsil');
INSERT INTO dominios_tipo_ponte (code,code_name) VALUES (3,'Fixa');
INSERT INTO dominios_tipo_ponte (code,code_name) VALUES (7,'Estaiada');

CREATE TABLE dominios_tipo_edif_lazer (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_lazer_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (1,'Estádio');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (2,'Ginásio');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (3,'Museu');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (4,'Teatro');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (5,'Anfiteatro');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (6,'Espaço de exibição de filmes');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (7,'Centro cultural');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (8,'Plataforma de pesca');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (9,'Arquivo');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (10,'Biblioteca');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (11,'Centro de documentação');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (12,'Circo');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (13,'Concha acústica');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (14,'Conservatório');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (15,'Coreto ou tribuna');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (17,'Equipamentos culturais diversos');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (18,'Espaço de eventos e/ou cultural');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (19,'Galeria');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (21,'Quiosque');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (22,'Administração');
INSERT INTO dominios_tipo_edif_lazer (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_finalidade_galeria_bueiro (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT finalidade_galeria_bueiro_pk PRIMARY KEY (code)
);

INSERT INTO dominios_finalidade_galeria_bueiro (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_finalidade_galeria_bueiro (code,code_name) VALUES (1,'Abastecimento animal');
INSERT INTO dominios_finalidade_galeria_bueiro (code,code_name) VALUES (2,'Abastecimento humano');
INSERT INTO dominios_finalidade_galeria_bueiro (code,code_name) VALUES (3,'Abastecimento industrial');
INSERT INTO dominios_finalidade_galeria_bueiro (code,code_name) VALUES (4,'Canalização de águas pluviais');
INSERT INTO dominios_finalidade_galeria_bueiro (code,code_name) VALUES (5,'Canalização de curso d''água');
INSERT INTO dominios_finalidade_galeria_bueiro (code,code_name) VALUES (6,'Canalização de efluentes domésticos');
INSERT INTO dominios_finalidade_galeria_bueiro (code,code_name) VALUES (7,'Canalização de efluentes industriais');
INSERT INTO dominios_finalidade_galeria_bueiro (code,code_name) VALUES (8,'Irrigação');

CREATE TABLE dominios_causa_exposicao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT causa_exposicao_pk PRIMARY KEY (code)
);

INSERT INTO dominios_causa_exposicao (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_causa_exposicao (code,code_name) VALUES (2,'Natural');
INSERT INTO dominios_causa_exposicao (code,code_name) VALUES (3,'Artificial');

CREATE TABLE dominios_qualid_agua (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT qualid_agua_pk PRIMARY KEY (code)
);

INSERT INTO dominios_qualid_agua (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_qualid_agua (code,code_name) VALUES (1,'Potável');
INSERT INTO dominios_qualid_agua (code,code_name) VALUES (2,'Não potável');
INSERT INTO dominios_qualid_agua (code,code_name) VALUES (3,'Mineral');
INSERT INTO dominios_qualid_agua (code,code_name) VALUES (4,'Salobra');

CREATE TABLE dominios_tipo_exposicao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_exposicao_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_exposicao (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_exposicao (code,code_name) VALUES (3,'Fechado');
INSERT INTO dominios_tipo_exposicao (code,code_name) VALUES (4,'Coberto');
INSERT INTO dominios_tipo_exposicao (code,code_name) VALUES (5,'Céu aberto');
INSERT INTO dominios_tipo_exposicao (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_especie (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT especie_pk PRIMARY KEY (code)
);

INSERT INTO dominios_especie (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_especie (code,code_name) VALUES (10,'Cipó');
INSERT INTO dominios_especie (code,code_name) VALUES (11,'Bambu');
INSERT INTO dominios_especie (code,code_name) VALUES (17,'Palmeira');
INSERT INTO dominios_especie (code,code_name) VALUES (27,'Araucária');
INSERT INTO dominios_especie (code,code_name) VALUES (37,'Sem predominância');
INSERT INTO dominios_especie (code,code_name) VALUES (96,'Não identificado');

CREATE TABLE dominios_tipo_equip_desenv_social (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_equip_desenv_social_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (1,'Banco de alimentos');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (2,'Barragem calçadão');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (3,'Bolsa verde');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (4,'Centro de convivência');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (5,'Centro POP');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (6,'Centro-dia');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (7,'Cisterna subterrânea');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (8,'Cisterna de polietileno');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (9,'Cisterna de placa');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (10,'Cozinha comunitária');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (11,'CRAS');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (12,'CREAS');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (13,'PAA');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (14,'PRONAF');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (15,'PRONATEC');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (16,'Restaurante popular');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (17,'Unidade de acolhimento para crianças e adolescentes');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (18,'Unidade de acolhimento para crianças e adolescentes (casa de passagem)');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (19,'Unidade de acolhimento para idosos');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (20,'Unidade de acolhimento para mulheres vítimas de violência');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (21,'Unidade de acolhimento para pessoas em situação de rua');
INSERT INTO dominios_tipo_equip_desenv_social (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_situacao_marco (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT situacao_marco_pk PRIMARY KEY (code)
);

INSERT INTO dominios_situacao_marco (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_situacao_marco (code,code_name) VALUES (1,'Bom');
INSERT INTO dominios_situacao_marco (code,code_name) VALUES (2,'Destruído');
INSERT INTO dominios_situacao_marco (code,code_name) VALUES (3,'Destruído sem chapa');
INSERT INTO dominios_situacao_marco (code,code_name) VALUES (4,'Destruído com chapa danificada');
INSERT INTO dominios_situacao_marco (code,code_name) VALUES (5,'Não encontrado');
INSERT INTO dominios_situacao_marco (code,code_name) VALUES (6,'Não visitado');
INSERT INTO dominios_situacao_marco (code,code_name) VALUES (7,'Não construído');

CREATE TABLE dominios_tipo_caminho_aereo (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_caminho_aereo_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_caminho_aereo (code,code_name) VALUES (12,'Teleférico');
INSERT INTO dominios_tipo_caminho_aereo (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_obst (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_obst_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_obst (code,code_name) VALUES (4,'Natural');
INSERT INTO dominios_tipo_obst (code,code_name) VALUES (5,'Artificial');

CREATE TABLE dominios_tipo_produto_residuo (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_produto_residuo_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (3,'Petróleo');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (5,'Gás');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (6,'Grãos');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (16,'Vinhoto');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (17,'Estrume');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (18,'Cascalho');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (20,'Inseticida');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (21,'Folhagens');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (22,'Pedra (brita)');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (23,'Granito');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (24,'Mármore');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (25,'Bauxita');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (26,'Manganês');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (27,'Talco');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (28,'Óleo diesel');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (29,'Gasolina');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (30,'Álcool');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (31,'Querosene');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (32,'Cobre');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (33,'Carvão mineral');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (34,'Sal');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (35,'Ferro');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (36,'Escória');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (37,'Ouro');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (38,'Diamante');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (39,'Prata');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (40,'Pedra preciosa');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (41,'Forragem');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (42,'Areia');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (43,'Saibro/piçarra');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (45,'Ágata');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (46,'Água');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (47,'Água marinha');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (48,'Água mineral');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (49,'Alexandrita');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (50,'Ametista');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (51,'Amianto');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (52,'Argila');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (53,'Barita');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (54,'Bentonita');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (55,'Calcário');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (56,'Carvão vegetal');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (57,'Caulim');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (58,'Chorume');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (59,'Chumbo');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (60,'Citrino');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (61,'Crisoberilo');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (62,'Cristal de rocha');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (63,'Cromo');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (64,'Diatomita');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (65,'Dolomito');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (66,'Esgoto');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (67,'Esmeralda');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (68,'Estanho');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (69,'Feldspato');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (70,'Fosfato');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (71,'Gipsita');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (72,'Grafita');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (73,'Granada');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (74,'Lítio');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (75,'Lixo domiciliar e comercial');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (76,'Lixo séptico');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (77,'Lixo tóxico');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (78,'Magnesita');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (79,'Mica');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (80,'Nióbio');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (81,'Níquel');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (82,'Opala');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (83,'Rocha ornamental');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (84,'Sal-gema');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (85,'Terras raras');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (86,'Titânio');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (87,'Topázio');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (88,'Tório');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (89,'Tungstênio');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (90,'Turfa');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (91,'Turmalina');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (92,'Urânio');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (93,'Vermiculita');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (94,'Zinco');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (99,'Outros');
INSERT INTO dominios_tipo_produto_residuo (code,code_name) VALUES (100,'Zircônio');

CREATE TABLE dominios_tipo_massa_dagua (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_massa_dagua_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_massa_dagua (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_massa_dagua (code,code_name) VALUES (1,'Rio');
INSERT INTO dominios_tipo_massa_dagua (code,code_name) VALUES (3,'Oceano');
INSERT INTO dominios_tipo_massa_dagua (code,code_name) VALUES (4,'Baía');
INSERT INTO dominios_tipo_massa_dagua (code,code_name) VALUES (5,'Enseada');
INSERT INTO dominios_tipo_massa_dagua (code,code_name) VALUES (6,'Meandro abandonado');
INSERT INTO dominios_tipo_massa_dagua (code,code_name) VALUES (7,'Lago ou lagoa');
INSERT INTO dominios_tipo_massa_dagua (code,code_name) VALUES (9,'Laguna');
INSERT INTO dominios_tipo_massa_dagua (code,code_name) VALUES (10,'Represa/açude');
INSERT INTO dominios_tipo_massa_dagua (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_classe_ativ_econ (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT classe_ativ_econ_pk PRIMARY KEY (code)
);

INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (2,'Produção de energia elétrica');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (3,'Transmissão de energia elétrica');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (4,'Distribuição de energia elétrica');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (5,'Captação, tratamento e distribuição de água');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (6,'Telecomunicações');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (7,'Administração pública em geral');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (8,'Seguridade social');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (9,'Regulação das atividades econômicas');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (10,'Atividades de apoio à administração pública');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (11,'Relações exteriores');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (12,'Defesa');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (13,'Justiça');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (14,'Segurança e ordem pública');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (15,'Defesa civil');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (16,'Regulação das atividades sociais e culturais');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (17,'Educação infantil - creche');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (18,'Educação infantil - pré-escola');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (19,'Ensino fundamental');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (20,'Ensino médio');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (21,'Educação superior - graduação');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (22,'Educação superior - graduação e pós-graduação');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (23,'Educação superior - pós-graduação e extensão');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (24,'Educação profissional de nível técnico');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (25,'Educação profissional de nível tecnológico');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (26,'Outras atividades de ensino');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (27,'Atendimento hospitalar (hospital)');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (28,'Atendimento às urgências e emergências (pronto-socorro)');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (29,'Atenção ambulatorial (posto e centro de saúde)');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (30,'Serviços de complementação diagnóstica ou terapêutica');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (31,'Atividades de organizações religiosas');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (32,'Outras atividades relacionadas com atenção à saúde (instituto de pesquisa)');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (33,'Serviços sociais com alojamento');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (34,'Serviços sociais sem alojamento');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (35,'Limpeza urbana e atividades relacionadas');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (36,'Serviços veterinários');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (98,'Mista');
INSERT INTO dominios_classe_ativ_econ (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_situacao_agua (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT situacao_agua_pk PRIMARY KEY (code)
);

INSERT INTO dominios_situacao_agua (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_situacao_agua (code,code_name) VALUES (6,'Tratada');
INSERT INTO dominios_situacao_agua (code,code_name) VALUES (7,'Não tratada');

CREATE TABLE dominios_situacao_em_agua (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT situacao_em_agua_pk PRIMARY KEY (code)
);

INSERT INTO dominios_situacao_em_agua (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_situacao_em_agua (code,code_name) VALUES (4,'Emerso');
INSERT INTO dominios_situacao_em_agua (code,code_name) VALUES (5,'Submerso');
INSERT INTO dominios_situacao_em_agua (code,code_name) VALUES (7,'Cobre e descobre');

CREATE TABLE dominios_auxiliar (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT auxiliar_pk PRIMARY KEY (code)
);

INSERT INTO dominios_auxiliar (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_auxiliar (code,code_name) VALUES (1,'Sim');
INSERT INTO dominios_auxiliar (code,code_name) VALUES (2,'Não');

CREATE TABLE dominios_situacao_fisica (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT situacao_fisica_pk PRIMARY KEY (code)
);

INSERT INTO dominios_situacao_fisica (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_situacao_fisica (code,code_name) VALUES (1,'Abandonada');
INSERT INTO dominios_situacao_fisica (code,code_name) VALUES (2,'Destruída');
INSERT INTO dominios_situacao_fisica (code,code_name) VALUES (3,'Em construção');
INSERT INTO dominios_situacao_fisica (code,code_name) VALUES (4,'Planejada');
INSERT INTO dominios_situacao_fisica (code,code_name) VALUES (5,'Construída');
INSERT INTO dominios_situacao_fisica (code,code_name) VALUES (6,'Construída, mas em obras');
INSERT INTO dominios_situacao_fisica (code,code_name) VALUES (97,'Não aplicável');

CREATE TABLE dominios_tipo_pavimentacao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_pavimentacao_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_pavimentacao (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_pavimentacao (code,code_name) VALUES (2,'Asfalto');
INSERT INTO dominios_tipo_pavimentacao (code,code_name) VALUES (3,'Placa de concreto');
INSERT INTO dominios_tipo_pavimentacao (code,code_name) VALUES (4,'Pedra regular');
INSERT INTO dominios_tipo_pavimentacao (code,code_name) VALUES (5,'Ladrilho de concreto');
INSERT INTO dominios_tipo_pavimentacao (code,code_name) VALUES (6,'Paralelepípedo');
INSERT INTO dominios_tipo_pavimentacao (code,code_name) VALUES (7,'Pedra irregular');
INSERT INTO dominios_tipo_pavimentacao (code,code_name) VALUES (97,'Não aplicável');
INSERT INTO dominios_tipo_pavimentacao (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_edif_energia (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_energia_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_energia (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_energia (code,code_name) VALUES (1,'Administração');
INSERT INTO dominios_tipo_edif_energia (code,code_name) VALUES (2,'Oficinas');
INSERT INTO dominios_tipo_edif_energia (code,code_name) VALUES (3,'Segurança');
INSERT INTO dominios_tipo_edif_energia (code,code_name) VALUES (4,'Depósito');
INSERT INTO dominios_tipo_edif_energia (code,code_name) VALUES (5,'Chaminé');
INSERT INTO dominios_tipo_edif_energia (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_trafego (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT trafego_pk PRIMARY KEY (code)
);

INSERT INTO dominios_trafego (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_trafego (code,code_name) VALUES (1,'Permanente');
INSERT INTO dominios_trafego (code,code_name) VALUES (2,'Periódico');
INSERT INTO dominios_trafego (code,code_name) VALUES (4,'Temporário');

CREATE TABLE dominios_tipo_manguezal (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_manguezal_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_manguezal (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_manguezal (code,code_name) VALUES (2,'Manguezal');
INSERT INTO dominios_tipo_manguezal (code,code_name) VALUES (3,'Manguezal tipo apicum');
INSERT INTO dominios_tipo_manguezal (code,code_name) VALUES (4,'Manguezal tipo salgado');

CREATE TABLE dominios_posicao_rel_edific (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT posicao_rel_edific_pk PRIMARY KEY (code)
);

INSERT INTO dominios_posicao_rel_edific (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_posicao_rel_edific (code,code_name) VALUES (14,'Isolada');
INSERT INTO dominios_posicao_rel_edific (code,code_name) VALUES (17,'Adjacente à edificação');
INSERT INTO dominios_posicao_rel_edific (code,code_name) VALUES (18,'Sobre edificação');

CREATE TABLE dominios_posicao_relativa (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT posicao_relativa_pk PRIMARY KEY (code)
);

INSERT INTO dominios_posicao_relativa (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_posicao_relativa (code,code_name) VALUES (2,'Superfície');
INSERT INTO dominios_posicao_relativa (code,code_name) VALUES (3,'Elevada');
INSERT INTO dominios_posicao_relativa (code,code_name) VALUES (4,'Emersa');
INSERT INTO dominios_posicao_relativa (code,code_name) VALUES (5,'Submersa');
INSERT INTO dominios_posicao_relativa (code,code_name) VALUES (6,'Subterrânea');

CREATE TABLE dominios_tipo_campo (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_campo_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_campo (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_campo (code,code_name) VALUES (1,'Sujo');
INSERT INTO dominios_tipo_campo (code,code_name) VALUES (2,'Limpo');
INSERT INTO dominios_tipo_campo (code,code_name) VALUES (3,'Rupestre');

CREATE TABLE dominios_tipo_passag_viad (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_passag_viad_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_passag_viad (code,code_name) VALUES (5,'Passagem elevada');
INSERT INTO dominios_tipo_passag_viad (code,code_name) VALUES (6,'Viaduto');

CREATE TABLE dominios_tipo_queda (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_queda_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_queda (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_queda (code,code_name) VALUES (1,'Cachoeira');
INSERT INTO dominios_tipo_queda (code,code_name) VALUES (2,'Salto');
INSERT INTO dominios_tipo_queda (code,code_name) VALUES (3,'Catarata');

CREATE TABLE dominios_tipo_conteudo (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_conteudo_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_conteudo (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_conteudo (code,code_name) VALUES (1,'Insumo');
INSERT INTO dominios_tipo_conteudo (code,code_name) VALUES (2,'Produto');
INSERT INTO dominios_tipo_conteudo (code,code_name) VALUES (3,'Resíduo');

CREATE TABLE dominios_tipo_localidade (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_localidade_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_localidade (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_localidade (code,code_name) VALUES (1,'Aglomerado rural');
INSERT INTO dominios_tipo_localidade (code,code_name) VALUES (2,'Aglomerado rural de extensão urbana');
INSERT INTO dominios_tipo_localidade (code,code_name) VALUES (3,'Aglomerado rural isolado');
INSERT INTO dominios_tipo_localidade (code,code_name) VALUES (4,'Capital');
INSERT INTO dominios_tipo_localidade (code,code_name) VALUES (5,'Cidade');
INSERT INTO dominios_tipo_localidade (code,code_name) VALUES (6,'Vila');

CREATE TABLE dominios_proximidade (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT proximidade_pk PRIMARY KEY (code)
);

INSERT INTO dominios_proximidade (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_proximidade (code,code_name) VALUES (14,'Isolada');
INSERT INTO dominios_proximidade (code,code_name) VALUES (15,'Adjacente');
INSERT INTO dominios_proximidade (code,code_name) VALUES (16,'Coincidente');

CREATE TABLE dominios_tipo_ext_min (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_ext_min_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_ext_min (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_ext_min (code,code_name) VALUES (1,'Poço para água subterrânea');
INSERT INTO dominios_tipo_ext_min (code,code_name) VALUES (4,'Mina');
INSERT INTO dominios_tipo_ext_min (code,code_name) VALUES (5,'Garimpo');
INSERT INTO dominios_tipo_ext_min (code,code_name) VALUES (6,'Salina');
INSERT INTO dominios_tipo_ext_min (code,code_name) VALUES (8,'Poço de petróleo');
INSERT INTO dominios_tipo_ext_min (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_fundeadouro (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_fundeadouro_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_fundeadouro (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_fundeadouro (code,code_name) VALUES (1,'Com limite definido');
INSERT INTO dominios_tipo_fundeadouro (code,code_name) VALUES (2,'Sem limite definido');

CREATE TABLE dominios_classificacao_porte (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT classificacao_porte_pk PRIMARY KEY (code)
);

INSERT INTO dominios_classificacao_porte (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_classificacao_porte (code,code_name) VALUES (2,'Rasteira');
INSERT INTO dominios_classificacao_porte (code,code_name) VALUES (3,'Herbácea');
INSERT INTO dominios_classificacao_porte (code,code_name) VALUES (4,'Arbórea');
INSERT INTO dominios_classificacao_porte (code,code_name) VALUES (5,'Arbustiva');
INSERT INTO dominios_classificacao_porte (code,code_name) VALUES (98,'Mista');

CREATE TABLE dominios_tipo_edif_comerc_serv (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_comerc_serv_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (3,'Centro comercial');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (4,'Mercado público');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (5,'Centro de convenções');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (6,'Banca de jornal');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (7,'Hotel');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (8,'Restaurante');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (9,'Comércio de carnes');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (10,'Farmácia');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (11,'Banco');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (12,'Loja de conveniência');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (13,'Loja de materiais de construção e/ou ferragem');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (14,'Loja de móveis');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (15,'Loja de roupas e/ou tecidos');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (16,'Motel');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (17,'Oficina mecânica');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (18,'Outros comércios');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (19,'Posto de combustível');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (20,'Pousada');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (21,'Quiosque');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (22,'Quitanda');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (23,'Supermercado');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (24,'Venda de veículos');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (25,'Administração');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (26,'Centro de exposições');
INSERT INTO dominios_tipo_edif_comerc_serv (code,code_name) VALUES (99,'Outros serviços');

CREATE TABLE dominios_situacao_costa (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT situacao_costa_pk PRIMARY KEY (code)
);

INSERT INTO dominios_situacao_costa (code,code_name) VALUES (10,'Contígua');
INSERT INTO dominios_situacao_costa (code,code_name) VALUES (11,'Afastada');

CREATE TABLE dominios_finalidade (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT finalidade_pk PRIMARY KEY (code)
);

INSERT INTO dominios_finalidade (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_finalidade (code,code_name) VALUES (1,'Comercial');
INSERT INTO dominios_finalidade (code,code_name) VALUES (2,'Residencial');
INSERT INTO dominios_finalidade (code,code_name) VALUES (4,'Serviço');
INSERT INTO dominios_finalidade (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_referencial_altim (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT referencial_altim_pk PRIMARY KEY (code)
);

INSERT INTO dominios_referencial_altim (code,code_name) VALUES (1,'Torres');
INSERT INTO dominios_referencial_altim (code,code_name) VALUES (2,'Imbituba');
INSERT INTO dominios_referencial_altim (code,code_name) VALUES (3,'Santana');
INSERT INTO dominios_referencial_altim (code,code_name) VALUES (99,'Outra referência');

CREATE TABLE dominios_tipo_pto_est_med (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_pto_est_med_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (1,'Climatológica principal - CP');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (2,'Climatológica auxiliar - CA');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (3,'Agroclimatológica - AC');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (4,'Pluviométrica - PL');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (5,'Eólica - EO');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (6,'Evaporimétrica - EV');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (7,'Solarimétrica - SL');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (8,'Radar metereológico - RD');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (9,'Radiossonda - RS');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (10,'Fluviométrica - FL');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (11,'Maregráfica - MA');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (12,'Marés terrestres-crosta');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (13,'Metero-maregráfica');
INSERT INTO dominios_tipo_pto_est_med (code,code_name) VALUES (14,'Hidrológica');

CREATE TABLE dominios_tipo_recife (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_recife_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_recife (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_recife (code,code_name) VALUES (1,'Arenito');
INSERT INTO dominios_tipo_recife (code,code_name) VALUES (2,'Rochoso');
INSERT INTO dominios_tipo_recife (code,code_name) VALUES (20,'Coral');

CREATE TABLE dominios_tipo_edif_agropec (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_agropec_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_agropec (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_agropec (code,code_name) VALUES (4,'Administração');
INSERT INTO dominios_tipo_edif_agropec (code,code_name) VALUES (12,'Sede operacional de fazenda');
INSERT INTO dominios_tipo_edif_agropec (code,code_name) VALUES (13,'Aviário');
INSERT INTO dominios_tipo_edif_agropec (code,code_name) VALUES (14,'Apiário');
INSERT INTO dominios_tipo_edif_agropec (code,code_name) VALUES (15,'Viveiro de plantas');
INSERT INTO dominios_tipo_edif_agropec (code,code_name) VALUES (16,'Viveiro para aquicultura');
INSERT INTO dominios_tipo_edif_agropec (code,code_name) VALUES (17,'Pocilga');
INSERT INTO dominios_tipo_edif_agropec (code,code_name) VALUES (18,'Curral');
INSERT INTO dominios_tipo_edif_agropec (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_trecho_drenagem (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_trecho_drenagem_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_trecho_drenagem (code,code_name) VALUES (4,'Curso d''água');
INSERT INTO dominios_tipo_trecho_drenagem (code,code_name) VALUES (5,'Pluvial');

CREATE TABLE dominios_tipo_cemiterio (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_cemiterio_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_cemiterio (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_cemiterio (code,code_name) VALUES (1,'Crematório');
INSERT INTO dominios_tipo_cemiterio (code,code_name) VALUES (2,'Parque');
INSERT INTO dominios_tipo_cemiterio (code,code_name) VALUES (3,'Vertical');
INSERT INTO dominios_tipo_cemiterio (code,code_name) VALUES (4,'Comum');
INSERT INTO dominios_tipo_cemiterio (code,code_name) VALUES (5,'Túmulo isolado');
INSERT INTO dominios_tipo_cemiterio (code,code_name) VALUES (6,'Horizontal/vertical');
INSERT INTO dominios_tipo_cemiterio (code,code_name) VALUES (98,'Misto');
INSERT INTO dominios_tipo_cemiterio (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_unid_uso_sust (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_unid_uso_sust_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_unid_uso_sust (code,code_name) VALUES (1,'Área de proteção ambiental - APA');
INSERT INTO dominios_tipo_unid_uso_sust (code,code_name) VALUES (2,'Área de relevante interesse ecológico – ARIE');
INSERT INTO dominios_tipo_unid_uso_sust (code,code_name) VALUES (3,'Floresta – FLO');
INSERT INTO dominios_tipo_unid_uso_sust (code,code_name) VALUES (4,'Reserva de desenvolvimento sustentável – RDS');
INSERT INTO dominios_tipo_unid_uso_sust (code,code_name) VALUES (5,'Reserva extrativista');
INSERT INTO dominios_tipo_unid_uso_sust (code,code_name) VALUES (6,'Reserva de fauna – REFAU');
INSERT INTO dominios_tipo_unid_uso_sust (code,code_name) VALUES (7,'Reserva particular de patrimônio natural – RPPN');

CREATE TABLE dominios_tipo_edif_port (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_port_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (15,'Administração');
INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (26,'Terminal de passageiros');
INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (27,'Terminal de cargas');
INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (32,'Armazém');
INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (33,'Estaleiro');
INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (34,'Dique de estaleiro');
INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (35,'Rampa transportadora');
INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (36,'Carreira');
INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (37,'Terminal de uso privativo');
INSERT INTO dominios_tipo_edif_port (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_plataforma (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_plataforma_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_plataforma (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_plataforma (code,code_name) VALUES (3,'Petróleo');
INSERT INTO dominios_tipo_plataforma (code,code_name) VALUES (5,'Gás');
INSERT INTO dominios_tipo_plataforma (code,code_name) VALUES (98,'Misto');

CREATE TABLE dominios_tipo_posto_fisc (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_posto_fisc_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_posto_fisc (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_posto_fisc (code,code_name) VALUES (10,'Tributação');
INSERT INTO dominios_tipo_posto_fisc (code,code_name) VALUES (12,'Fiscalização sanitária');
INSERT INTO dominios_tipo_posto_fisc (code,code_name) VALUES (13,'Posto de pesagem');
INSERT INTO dominios_tipo_posto_fisc (code,code_name) VALUES (98,'Misto');
INSERT INTO dominios_tipo_posto_fisc (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_unid_protegida (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_unid_protegida_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_unid_protegida (code,code_name) VALUES (1,'Unidade de conservação não SNUC');
INSERT INTO dominios_tipo_unid_protegida (code,code_name) VALUES (2,'Unidade de proteção integral');
INSERT INTO dominios_tipo_unid_protegida (code,code_name) VALUES (3,'Unidade de uso sustentável');
INSERT INTO dominios_tipo_unid_protegida (code,code_name) VALUES (4,'Unidade de conservação');
INSERT INTO dominios_tipo_unid_protegida (code,code_name) VALUES (5,'Outras unidades protegidas');

CREATE TABLE dominios_tipo_edif_abast (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_abast_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_abast (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_abast (code,code_name) VALUES (1,'Captação');
INSERT INTO dominios_tipo_edif_abast (code,code_name) VALUES (2,'Tratamento');
INSERT INTO dominios_tipo_edif_abast (code,code_name) VALUES (3,'Recalque');
INSERT INTO dominios_tipo_edif_abast (code,code_name) VALUES (4,'Administração');
INSERT INTO dominios_tipo_edif_abast (code,code_name) VALUES (98,'Misto');
INSERT INTO dominios_tipo_edif_abast (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_proc_extracao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT proc_extracao_pk PRIMARY KEY (code)
);

INSERT INTO dominios_proc_extracao (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_proc_extracao (code,code_name) VALUES (1,'Mecanizado');
INSERT INTO dominios_proc_extracao (code,code_name) VALUES (2,'Manual');

CREATE TABLE dominios_tipo_area_umida (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_area_umida_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_area_umida (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_area_umida (code,code_name) VALUES (3,'Lamacento');
INSERT INTO dominios_tipo_area_umida (code,code_name) VALUES (4,'Arenoso');

CREATE TABLE dominios_mat_transp (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT mat_transp_pk PRIMARY KEY (code)
);

INSERT INTO dominios_mat_transp (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (1,'Água');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (2,'Óleo');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (3,'Petróleo');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (4,'Nafta');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (5,'Gás');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (6,'Grãos');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (7,'Minério');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (8,'Efluentes');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (9,'Esgoto');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (29,'Gasolina');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (30,'Álcool');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (31,'Querosene');
INSERT INTO dominios_mat_transp (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_poco_mina (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_poco_mina_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_poco_mina (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_poco_mina (code,code_name) VALUES (2,'Horizontal');
INSERT INTO dominios_tipo_poco_mina (code,code_name) VALUES (3,'Vertical');
INSERT INTO dominios_tipo_poco_mina (code,code_name) VALUES (97,'Não aplicável');

CREATE TABLE dominios_tipo_edif_metro_ferrov (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_metro_ferrov_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_metro_ferrov (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_metro_ferrov (code,code_name) VALUES (15,'Administração');
INSERT INTO dominios_tipo_edif_metro_ferrov (code,code_name) VALUES (16,'Estação ferroviária de passageiros');
INSERT INTO dominios_tipo_edif_metro_ferrov (code,code_name) VALUES (17,'Estação metroviária');
INSERT INTO dominios_tipo_edif_metro_ferrov (code,code_name) VALUES (18,'Terminal ferroviário de cargas');
INSERT INTO dominios_tipo_edif_metro_ferrov (code,code_name) VALUES (19,'Terminal ferroviário de passageiros e cargas');
INSERT INTO dominios_tipo_edif_metro_ferrov (code,code_name) VALUES (20,'Oficina de manutenção');
INSERT INTO dominios_tipo_edif_metro_ferrov (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_nivel_atencao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT nivel_atencao_pk PRIMARY KEY (code)
);

INSERT INTO dominios_nivel_atencao (code,code_name) VALUES (5,'Primário');
INSERT INTO dominios_nivel_atencao (code,code_name) VALUES (6,'Secundário');
INSERT INTO dominios_nivel_atencao (code,code_name) VALUES (7,'Terciário');

CREATE TABLE dominios_setor (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT setor_pk PRIMARY KEY (code)
);

INSERT INTO dominios_setor (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_setor (code,code_name) VALUES (1,'Energético');
INSERT INTO dominios_setor (code,code_name) VALUES (2,'Econômico');
INSERT INTO dominios_setor (code,code_name) VALUES (3,'Abastecimento de água');
INSERT INTO dominios_setor (code,code_name) VALUES (4,'Saneamento básico');

CREATE TABLE dominios_revestimento (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT revestimento_pk PRIMARY KEY (code)
);

INSERT INTO dominios_revestimento (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_revestimento (code,code_name) VALUES (1,'Sem revestimento (leito natural)');
INSERT INTO dominios_revestimento (code,code_name) VALUES (2,'Revestimento primário (solto)');
INSERT INTO dominios_revestimento (code,code_name) VALUES (3,'Pavimentado');
INSERT INTO dominios_revestimento (code,code_name) VALUES (4,'Madeira');
INSERT INTO dominios_revestimento (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_finalidade_deposito (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT finalidade_deposito_pk PRIMARY KEY (code)
);

INSERT INTO dominios_finalidade_deposito (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_finalidade_deposito (code,code_name) VALUES (2,'Tratamento');
INSERT INTO dominios_finalidade_deposito (code,code_name) VALUES (3,'Recalque');
INSERT INTO dominios_finalidade_deposito (code,code_name) VALUES (4,'Distribuição');
INSERT INTO dominios_finalidade_deposito (code,code_name) VALUES (8,'Armazenamento');

CREATE TABLE dominios_tipo_poste (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_poste_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_poste (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_poste (code,code_name) VALUES (2,'Iluminação');
INSERT INTO dominios_tipo_poste (code,code_name) VALUES (3,'Ornamental');
INSERT INTO dominios_tipo_poste (code,code_name) VALUES (4,'Rede elétrica');
INSERT INTO dominios_tipo_poste (code,code_name) VALUES (5,'Sinalização');
INSERT INTO dominios_tipo_poste (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_unidade_volume (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT unidade_volume_pk PRIMARY KEY (code)
);

INSERT INTO dominios_unidade_volume (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_unidade_volume (code,code_name) VALUES (1,'Litro');
INSERT INTO dominios_unidade_volume (code,code_name) VALUES (2,'Metro cúbico');

CREATE TABLE dominios_tipo_edif_saneam (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_edif_saneam_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_edif_saneam (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_tipo_edif_saneam (code,code_name) VALUES (3,'Recalque');
INSERT INTO dominios_tipo_edif_saneam (code,code_name) VALUES (5,'Tratamento de esgoto');
INSERT INTO dominios_tipo_edif_saneam (code,code_name) VALUES (6,'Usina de reciclagem');
INSERT INTO dominios_tipo_edif_saneam (code,code_name) VALUES (7,'Incinerador');
INSERT INTO dominios_tipo_edif_saneam (code,code_name) VALUES (8,'Administração');
INSERT INTO dominios_tipo_edif_saneam (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_tipo_sum_vert (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_sum_vert_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_sum_vert (code,code_name) VALUES (1,'Sumidouro');
INSERT INTO dominios_tipo_sum_vert (code,code_name) VALUES (2,'Vertedouro');

CREATE TABLE dominios_tipo_elevador (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_elevador_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_elevador (code,code_name) VALUES (2,'Inclinado');
INSERT INTO dominios_tipo_elevador (code,code_name) VALUES (3,'Vertical');

CREATE TABLE dominios_tipo_elem_nat (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_elem_nat_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (1,'Serra');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (2,'Morro');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (3,'Montanha');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (4,'Chapada');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (5,'Maciço');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (6,'Planalto');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (7,'Planície');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (8,'Escarpa');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (9,'Península');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (10,'Ponta');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (11,'Cabo');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (12,'Praia');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (13,'Falésia');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (14,'Talude');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (15,'Caverna');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (16,'Dolina');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (17,'Duna');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (18,'Falha');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (19,'Fenda');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (20,'Gruta');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (21,'Ilha');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (22,'Pico');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (23,'Rocha');
INSERT INTO dominios_tipo_elem_nat (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_mat_condutor (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT mat_condutor_pk PRIMARY KEY (code)
);

INSERT INTO dominios_mat_condutor (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_mat_condutor (code,code_name) VALUES (1,'Fibra ótica');
INSERT INTO dominios_mat_condutor (code,code_name) VALUES (2,'Fio metálico');
INSERT INTO dominios_mat_condutor (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_mat_constr (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT mat_constr_pk PRIMARY KEY (code)
);

INSERT INTO dominios_mat_constr (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_mat_constr (code,code_name) VALUES (1,'Alvenaria');
INSERT INTO dominios_mat_constr (code,code_name) VALUES (2,'Concreto');
INSERT INTO dominios_mat_constr (code,code_name) VALUES (3,'Metal');
INSERT INTO dominios_mat_constr (code,code_name) VALUES (4,'Rocha');
INSERT INTO dominios_mat_constr (code,code_name) VALUES (5,'Madeira');
INSERT INTO dominios_mat_constr (code,code_name) VALUES (8,'Fibra');
INSERT INTO dominios_mat_constr (code,code_name) VALUES (23,'Terra');
INSERT INTO dominios_mat_constr (code,code_name) VALUES (97,'Não aplicável');
INSERT INTO dominios_mat_constr (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_situacao_espacial (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT situacao_espacial_pk PRIMARY KEY (code)
);

INSERT INTO dominios_situacao_espacial (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_situacao_espacial (code,code_name) VALUES (2,'Subterrânea');
INSERT INTO dominios_situacao_espacial (code,code_name) VALUES (4,'Superposta nível 2');
INSERT INTO dominios_situacao_espacial (code,code_name) VALUES (5,'Nível do solo');
INSERT INTO dominios_situacao_espacial (code,code_name) VALUES (7,'Superposta nível 3');
INSERT INTO dominios_situacao_espacial (code,code_name) VALUES (12,'Adjacente');
INSERT INTO dominios_situacao_espacial (code,code_name) VALUES (13,'Superposta nível 1');
INSERT INTO dominios_situacao_espacial (code,code_name) VALUES (97,'Não aplicável');
INSERT INTO dominios_situacao_espacial (code,code_name) VALUES (99,'Outra');

CREATE TABLE dominios_tipo_associado (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT tipo_associado_pk PRIMARY KEY (code)
);

INSERT INTO dominios_tipo_associado (code,code_name) VALUES (1,'Cidade');
INSERT INTO dominios_tipo_associado (code,code_name) VALUES (4,'Vila');

CREATE TABLE dominios_finalidade_patio (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT finalidade_patio_pk PRIMARY KEY (code)
);

INSERT INTO dominios_finalidade_patio (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_finalidade_patio (code,code_name) VALUES (2,'Depósito temporário de cargas e contêineres');
INSERT INTO dominios_finalidade_patio (code,code_name) VALUES (3,'Estacionamento de veículos');
INSERT INTO dominios_finalidade_patio (code,code_name) VALUES (4,'Estacionamento de locomotivas');
INSERT INTO dominios_finalidade_patio (code,code_name) VALUES (5,'Estacionamento de aeronaves');
INSERT INTO dominios_finalidade_patio (code,code_name) VALUES (6,'Manobra de cargas');
INSERT INTO dominios_finalidade_patio (code,code_name) VALUES (7,'Manobra de veículos em geral');
INSERT INTO dominios_finalidade_patio (code,code_name) VALUES (8,'Manutenção');
INSERT INTO dominios_finalidade_patio (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_jurisdicao (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT jurisdicao_pk PRIMARY KEY (code)
);

INSERT INTO dominios_jurisdicao (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_jurisdicao (code,code_name) VALUES (1,'Federal');
INSERT INTO dominios_jurisdicao (code,code_name) VALUES (2,'Estadual/Distrital');
INSERT INTO dominios_jurisdicao (code,code_name) VALUES (3,'Municipal');
INSERT INTO dominios_jurisdicao (code,code_name) VALUES (4,'Internacional');
INSERT INTO dominios_jurisdicao (code,code_name) VALUES (8,'Propriedade particular');

CREATE TABLE dominios_destinado_a (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT destinado_a_pk PRIMARY KEY (code)
);

INSERT INTO dominios_destinado_a (code,code_name) VALUES (0,'Desconhecido');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (5,'Madeira');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (18,'Açaí');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (34,'Turfa');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (35,'Látex');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (36,'Castanha');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (37,'Carnaúba');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (38,'Coco');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (39,'Jaborandi');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (40,'Palmito');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (41,'Babaçu');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (43,'Pecuária');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (44,'Pesca');
INSERT INTO dominios_destinado_a (code,code_name) VALUES (99,'Outros');

CREATE TABLE dominios_condicao_terreno (
	 code smallint NOT NULL,
	 code_name text NOT NULL,
	 CONSTRAINT condicao_terreno_pk PRIMARY KEY (code)
);

INSERT INTO dominios_condicao_terreno (code,code_name) VALUES (0,'Desconhecida');
INSERT INTO dominios_condicao_terreno (code,code_name) VALUES (1,'Seco');
INSERT INTO dominios_condicao_terreno (code,code_name) VALUES (2,'Irrigado');
INSERT INTO dominios_condicao_terreno (code,code_name) VALUES (3,'Inundado');

CREATE TABLE edgv_aer_pista_ponto_pouso_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipopista smallint NOT NULL,
	 revestimento smallint NOT NULL,
	 usopista smallint NOT NULL,
	 homologacao smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 largura real,
	 extensao real,
	 altitude real,
	 geom MultiLinestring,
	 CONSTRAINT aer_pista_ponto_pouso_l_tipopista_check CHECK ((tipopista = 9) OR (tipopista = 10) OR (tipopista = 11)),
	 CONSTRAINT aer_pista_ponto_pouso_l_revestimento_check CHECK ((revestimento = 0) OR (revestimento = 1) OR (revestimento = 2) OR (revestimento = 3) OR (revestimento = 4) OR (revestimento = 99)),
	 CONSTRAINT aer_pista_ponto_pouso_l_usopista_check CHECK ((usopista = 0) OR (usopista = 6) OR (usopista = 11) OR (usopista = 12) OR (usopista = 13)),
	 CONSTRAINT aer_pista_ponto_pouso_l_homologacao_check CHECK ((homologacao = 0) OR (homologacao = 1) OR (homologacao = 2)),
	 CONSTRAINT aer_pista_ponto_pouso_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT aer_pista_ponto_pouso_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 5) OR (situacaofisica = 6))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_aer_pista_ponto_pouso_l', 'features','edgv_aer_pista_ponto_pouso_l', 'Camada aer_pista_ponto_pouso_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_aer_pista_ponto_pouso_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_aer_pista_ponto_pouso_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_aer_pista_ponto_pouso_l" AFTER INSERT ON "edgv_aer_pista_ponto_pouso_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_aer_pista_ponto_pouso_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_aer_pista_ponto_pouso_l" AFTER DELETE ON "edgv_aer_pista_ponto_pouso_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_aer_pista_ponto_pouso_l'); END ;

CREATE TABLE edgv_aer_pista_ponto_pouso_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipopista smallint NOT NULL,
	 revestimento smallint NOT NULL,
	 usopista smallint NOT NULL,
	 homologacao smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 largura real,
	 extensao real,
	 altitude real,
	 geom MultiPoint,
	 CONSTRAINT aer_pista_ponto_pouso_p_tipopista_check CHECK ((tipopista = 9) OR (tipopista = 10) OR (tipopista = 11)),
	 CONSTRAINT aer_pista_ponto_pouso_p_revestimento_check CHECK ((revestimento = 0) OR (revestimento = 1) OR (revestimento = 2) OR (revestimento = 3) OR (revestimento = 4) OR (revestimento = 99)),
	 CONSTRAINT aer_pista_ponto_pouso_p_usopista_check CHECK ((usopista = 0) OR (usopista = 6) OR (usopista = 11) OR (usopista = 12) OR (usopista = 13)),
	 CONSTRAINT aer_pista_ponto_pouso_p_homologacao_check CHECK ((homologacao = 0) OR (homologacao = 1) OR (homologacao = 2)),
	 CONSTRAINT aer_pista_ponto_pouso_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT aer_pista_ponto_pouso_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 5) OR (situacaofisica = 6))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_aer_pista_ponto_pouso_p', 'features','edgv_aer_pista_ponto_pouso_p', 'Camada aer_pista_ponto_pouso_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_aer_pista_ponto_pouso_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_aer_pista_ponto_pouso_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_aer_pista_ponto_pouso_p" AFTER INSERT ON "edgv_aer_pista_ponto_pouso_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_aer_pista_ponto_pouso_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_aer_pista_ponto_pouso_p" AFTER DELETE ON "edgv_aer_pista_ponto_pouso_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_aer_pista_ponto_pouso_p'); END ;

CREATE TABLE edgv_aer_pista_ponto_pouso_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipopista smallint NOT NULL,
	 revestimento smallint NOT NULL,
	 usopista smallint NOT NULL,
	 homologacao smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 largura real,
	 extensao real,
	 altitude real,
	 geom MultiPolygon,
	 CONSTRAINT aer_pista_ponto_pouso_a_tipopista_check CHECK ((tipopista = 9) OR (tipopista = 10) OR (tipopista = 11)),
	 CONSTRAINT aer_pista_ponto_pouso_a_revestimento_check CHECK ((revestimento = 0) OR (revestimento = 1) OR (revestimento = 2) OR (revestimento = 3) OR (revestimento = 4) OR (revestimento = 99)),
	 CONSTRAINT aer_pista_ponto_pouso_a_usopista_check CHECK ((usopista = 0) OR (usopista = 6) OR (usopista = 11) OR (usopista = 12) OR (usopista = 13)),
	 CONSTRAINT aer_pista_ponto_pouso_a_homologacao_check CHECK ((homologacao = 0) OR (homologacao = 1) OR (homologacao = 2)),
	 CONSTRAINT aer_pista_ponto_pouso_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT aer_pista_ponto_pouso_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 5) OR (situacaofisica = 6))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_aer_pista_ponto_pouso_a', 'features','edgv_aer_pista_ponto_pouso_a', 'Camada aer_pista_ponto_pouso_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_aer_pista_ponto_pouso_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_aer_pista_ponto_pouso_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_aer_pista_ponto_pouso_a" AFTER INSERT ON "edgv_aer_pista_ponto_pouso_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_aer_pista_ponto_pouso_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_aer_pista_ponto_pouso_a" AFTER DELETE ON "edgv_aer_pista_ponto_pouso_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_aer_pista_ponto_pouso_a'); END ;

CREATE TABLE edgv_aux_moldura_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 escala varchar(255),
	 inom varchar(255),
	 mi varchar(255),
	 nome varchar(80),
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_aux_moldura_a', 'features','edgv_aux_moldura_a', 'Camada aux_moldura_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_aux_moldura_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_aux_moldura_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_aux_moldura_a" AFTER INSERT ON "edgv_aux_moldura_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_aux_moldura_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_aux_moldura_a" AFTER DELETE ON "edgv_aux_moldura_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_aux_moldura_a'); END ;

CREATE TABLE edgv_enc_subest_transm_distrib_energia_eletrica_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 idtsub integer,
	 centrodecarga smallint NOT NULL,
	 classeativecon smallint NOT NULL,
	 operacional smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT enc_subest_transm_distrib_energia_eletrica_a_classeativecon_check CHECK ((classeativecon = 3) OR (classeativecon = 4)),
	 CONSTRAINT enc_subest_transm_distrib_energia_eletrica_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_subest_transm_distrib_energia_eletrica_a', 'features','edgv_enc_subest_transm_distrib_energia_eletrica_a', 'Camada enc_subest_transm_distrib_energia_eletrica_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_subest_transm_distrib_energia_eletrica_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_subest_transm_distrib_energia_eletrica_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_subest_transm_distrib_energia_eletrica_a" AFTER INSERT ON "edgv_enc_subest_transm_distrib_energia_eletrica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_subest_transm_distrib_energia_eletrica_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_subest_transm_distrib_energia_eletrica_a" AFTER DELETE ON "edgv_enc_subest_transm_distrib_energia_eletrica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_subest_transm_distrib_energia_eletrica_a'); END ;

CREATE TABLE edgv_cbge_deposito_geral_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipodepgeral smallint,
	 matconstr smallint,
	 tipoexposicao smallint NOT NULL,
	 tipoprodutoresiduo smallint,
	 tipoconteudo smallint,
	 unidadevolume smallint,
	 valorvolume real,
	 tratamento smallint NOT NULL,
	 estadofisico smallint,
	 finalidadedep smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT cbge_deposito_geral_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT cbge_deposito_geral_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT cbge_deposito_geral_p_tipodepgeral_check CHECK ((tipodepgeral = 0) OR (tipodepgeral = 1) OR (tipodepgeral = 2) OR (tipodepgeral = 3) OR (tipodepgeral = 4) OR (tipodepgeral = 5) OR (tipodepgeral = 6) OR (tipodepgeral = 8) OR (tipodepgeral = 9) OR (tipodepgeral = 10) OR (tipodepgeral = 11) OR (tipodepgeral = 19) OR (tipodepgeral = 26) OR (tipodepgeral = 32) OR (tipodepgeral = 99)),
	 CONSTRAINT cbge_deposito_geral_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT cbge_deposito_geral_p_tipoexposicao_check CHECK ((tipoexposicao = 0) OR (tipoexposicao = 3) OR (tipoexposicao = 4) OR (tipoexposicao = 5) OR (tipoexposicao = 99)),
	 CONSTRAINT cbge_deposito_geral_p_tipoprodutoresiduo_check CHECK ((tipoprodutoresiduo = 0) OR (tipoprodutoresiduo = 3) OR (tipoprodutoresiduo = 5) OR (tipoprodutoresiduo = 6) OR (tipoprodutoresiduo = 16) OR (tipoprodutoresiduo = 17) OR (tipoprodutoresiduo = 18) OR (tipoprodutoresiduo = 20) OR (tipoprodutoresiduo = 21) OR (tipoprodutoresiduo = 22) OR (tipoprodutoresiduo = 23) OR (tipoprodutoresiduo = 24) OR (tipoprodutoresiduo = 25) OR (tipoprodutoresiduo = 26) OR (tipoprodutoresiduo = 27) OR (tipoprodutoresiduo = 28) OR (tipoprodutoresiduo = 29) OR (tipoprodutoresiduo = 30) OR (tipoprodutoresiduo = 31) OR (tipoprodutoresiduo = 32) OR (tipoprodutoresiduo = 33) OR (tipoprodutoresiduo = 34) OR (tipoprodutoresiduo = 35) OR (tipoprodutoresiduo = 36) OR (tipoprodutoresiduo = 37) OR (tipoprodutoresiduo = 38) OR (tipoprodutoresiduo = 39) OR (tipoprodutoresiduo = 40) OR (tipoprodutoresiduo = 41) OR (tipoprodutoresiduo = 42) OR (tipoprodutoresiduo = 43) OR (tipoprodutoresiduo = 45) OR (tipoprodutoresiduo = 46) OR (tipoprodutoresiduo = 47) OR (tipoprodutoresiduo = 48) OR (tipoprodutoresiduo = 49) OR (tipoprodutoresiduo = 50) OR (tipoprodutoresiduo = 51) OR (tipoprodutoresiduo = 52) OR (tipoprodutoresiduo = 53) OR (tipoprodutoresiduo = 54) OR (tipoprodutoresiduo = 55) OR (tipoprodutoresiduo = 56) OR (tipoprodutoresiduo = 57) OR (tipoprodutoresiduo = 58) OR (tipoprodutoresiduo = 59) OR (tipoprodutoresiduo = 60) OR (tipoprodutoresiduo = 61) OR (tipoprodutoresiduo = 62) OR (tipoprodutoresiduo = 63) OR (tipoprodutoresiduo = 64) OR (tipoprodutoresiduo = 65) OR (tipoprodutoresiduo = 66) OR (tipoprodutoresiduo = 67) OR (tipoprodutoresiduo = 68) OR (tipoprodutoresiduo = 69) OR (tipoprodutoresiduo = 70) OR (tipoprodutoresiduo = 71) OR (tipoprodutoresiduo = 72) OR (tipoprodutoresiduo = 73) OR (tipoprodutoresiduo = 74) OR (tipoprodutoresiduo = 75) OR (tipoprodutoresiduo = 76) OR (tipoprodutoresiduo = 77) OR (tipoprodutoresiduo = 78) OR (tipoprodutoresiduo = 79) OR (tipoprodutoresiduo = 80) OR (tipoprodutoresiduo = 81) OR (tipoprodutoresiduo = 82) OR (tipoprodutoresiduo = 83) OR (tipoprodutoresiduo = 84) OR (tipoprodutoresiduo = 85) OR (tipoprodutoresiduo = 86) OR (tipoprodutoresiduo = 87) OR (tipoprodutoresiduo = 88) OR (tipoprodutoresiduo = 89) OR (tipoprodutoresiduo = 90) OR (tipoprodutoresiduo = 91) OR (tipoprodutoresiduo = 92) OR (tipoprodutoresiduo = 93) OR (tipoprodutoresiduo = 94) OR (tipoprodutoresiduo = 99) OR (tipoprodutoresiduo = 100)),
	 CONSTRAINT cbge_deposito_geral_p_tipoconteudo_check CHECK ((tipoconteudo = 0) OR (tipoconteudo = 1) OR (tipoconteudo = 2) OR (tipoconteudo = 3)),
	 CONSTRAINT cbge_deposito_geral_p_unidadevolume_check CHECK ((unidadevolume = 0) OR (unidadevolume = 1) OR (unidadevolume = 2)),
	 CONSTRAINT cbge_deposito_geral_p_tratamento_check CHECK ((tratamento = 0) OR (tratamento = 1) OR (tratamento = 2)),
	 CONSTRAINT cbge_deposito_geral_p_estadofisico_check CHECK ((estadofisico = 0) OR (estadofisico = 1) OR (estadofisico = 2) OR (estadofisico = 3) OR (estadofisico = 98)),
	 CONSTRAINT cbge_deposito_geral_p_finalidadedep_check CHECK ((finalidadedep = 0) OR (finalidadedep = 2) OR (finalidadedep = 3) OR (finalidadedep = 4) OR (finalidadedep = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_deposito_geral_p', 'features','edgv_cbge_deposito_geral_p', 'Camada cbge_deposito_geral_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_deposito_geral_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_deposito_geral_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_deposito_geral_p" AFTER INSERT ON "edgv_cbge_deposito_geral_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_deposito_geral_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_deposito_geral_p" AFTER DELETE ON "edgv_cbge_deposito_geral_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_deposito_geral_p'); END ;

CREATE TABLE edgv_cbge_deposito_geral_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipodepgeral smallint,
	 matconstr smallint,
	 tipoexposicao smallint NOT NULL,
	 tipoprodutoresiduo smallint,
	 tipoconteudo smallint,
	 unidadevolume smallint,
	 valorvolume real,
	 tratamento smallint NOT NULL,
	 estadofisico smallint,
	 finalidadedep smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT cbge_deposito_geral_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT cbge_deposito_geral_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT cbge_deposito_geral_a_tipodepgeral_check CHECK ((tipodepgeral = 0) OR (tipodepgeral = 1) OR (tipodepgeral = 2) OR (tipodepgeral = 3) OR (tipodepgeral = 4) OR (tipodepgeral = 5) OR (tipodepgeral = 6) OR (tipodepgeral = 8) OR (tipodepgeral = 9) OR (tipodepgeral = 10) OR (tipodepgeral = 11) OR (tipodepgeral = 19) OR (tipodepgeral = 26) OR (tipodepgeral = 32) OR (tipodepgeral = 99)),
	 CONSTRAINT cbge_deposito_geral_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT cbge_deposito_geral_a_tipoexposicao_check CHECK ((tipoexposicao = 0) OR (tipoexposicao = 3) OR (tipoexposicao = 4) OR (tipoexposicao = 5) OR (tipoexposicao = 99)),
	 CONSTRAINT cbge_deposito_geral_a_tipoprodutoresiduo_check CHECK ((tipoprodutoresiduo = 0) OR (tipoprodutoresiduo = 3) OR (tipoprodutoresiduo = 5) OR (tipoprodutoresiduo = 6) OR (tipoprodutoresiduo = 16) OR (tipoprodutoresiduo = 17) OR (tipoprodutoresiduo = 18) OR (tipoprodutoresiduo = 20) OR (tipoprodutoresiduo = 21) OR (tipoprodutoresiduo = 22) OR (tipoprodutoresiduo = 23) OR (tipoprodutoresiduo = 24) OR (tipoprodutoresiduo = 25) OR (tipoprodutoresiduo = 26) OR (tipoprodutoresiduo = 27) OR (tipoprodutoresiduo = 28) OR (tipoprodutoresiduo = 29) OR (tipoprodutoresiduo = 30) OR (tipoprodutoresiduo = 31) OR (tipoprodutoresiduo = 32) OR (tipoprodutoresiduo = 33) OR (tipoprodutoresiduo = 34) OR (tipoprodutoresiduo = 35) OR (tipoprodutoresiduo = 36) OR (tipoprodutoresiduo = 37) OR (tipoprodutoresiduo = 38) OR (tipoprodutoresiduo = 39) OR (tipoprodutoresiduo = 40) OR (tipoprodutoresiduo = 41) OR (tipoprodutoresiduo = 42) OR (tipoprodutoresiduo = 43) OR (tipoprodutoresiduo = 45) OR (tipoprodutoresiduo = 46) OR (tipoprodutoresiduo = 47) OR (tipoprodutoresiduo = 48) OR (tipoprodutoresiduo = 49) OR (tipoprodutoresiduo = 50) OR (tipoprodutoresiduo = 51) OR (tipoprodutoresiduo = 52) OR (tipoprodutoresiduo = 53) OR (tipoprodutoresiduo = 54) OR (tipoprodutoresiduo = 55) OR (tipoprodutoresiduo = 56) OR (tipoprodutoresiduo = 57) OR (tipoprodutoresiduo = 58) OR (tipoprodutoresiduo = 59) OR (tipoprodutoresiduo = 60) OR (tipoprodutoresiduo = 61) OR (tipoprodutoresiduo = 62) OR (tipoprodutoresiduo = 63) OR (tipoprodutoresiduo = 64) OR (tipoprodutoresiduo = 65) OR (tipoprodutoresiduo = 66) OR (tipoprodutoresiduo = 67) OR (tipoprodutoresiduo = 68) OR (tipoprodutoresiduo = 69) OR (tipoprodutoresiduo = 70) OR (tipoprodutoresiduo = 71) OR (tipoprodutoresiduo = 72) OR (tipoprodutoresiduo = 73) OR (tipoprodutoresiduo = 74) OR (tipoprodutoresiduo = 75) OR (tipoprodutoresiduo = 76) OR (tipoprodutoresiduo = 77) OR (tipoprodutoresiduo = 78) OR (tipoprodutoresiduo = 79) OR (tipoprodutoresiduo = 80) OR (tipoprodutoresiduo = 81) OR (tipoprodutoresiduo = 82) OR (tipoprodutoresiduo = 83) OR (tipoprodutoresiduo = 84) OR (tipoprodutoresiduo = 85) OR (tipoprodutoresiduo = 86) OR (tipoprodutoresiduo = 87) OR (tipoprodutoresiduo = 88) OR (tipoprodutoresiduo = 89) OR (tipoprodutoresiduo = 90) OR (tipoprodutoresiduo = 91) OR (tipoprodutoresiduo = 92) OR (tipoprodutoresiduo = 93) OR (tipoprodutoresiduo = 94) OR (tipoprodutoresiduo = 99) OR (tipoprodutoresiduo = 100)),
	 CONSTRAINT cbge_deposito_geral_a_tipoconteudo_check CHECK ((tipoconteudo = 0) OR (tipoconteudo = 1) OR (tipoconteudo = 2) OR (tipoconteudo = 3)),
	 CONSTRAINT cbge_deposito_geral_a_unidadevolume_check CHECK ((unidadevolume = 0) OR (unidadevolume = 1) OR (unidadevolume = 2)),
	 CONSTRAINT cbge_deposito_geral_a_tratamento_check CHECK ((tratamento = 0) OR (tratamento = 1) OR (tratamento = 2)),
	 CONSTRAINT cbge_deposito_geral_a_estadofisico_check CHECK ((estadofisico = 0) OR (estadofisico = 1) OR (estadofisico = 2) OR (estadofisico = 3) OR (estadofisico = 98)),
	 CONSTRAINT cbge_deposito_geral_a_finalidadedep_check CHECK ((finalidadedep = 0) OR (finalidadedep = 2) OR (finalidadedep = 3) OR (finalidadedep = 4) OR (finalidadedep = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_deposito_geral_a', 'features','edgv_cbge_deposito_geral_a', 'Camada cbge_deposito_geral_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_deposito_geral_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_deposito_geral_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_deposito_geral_a" AFTER INSERT ON "edgv_cbge_deposito_geral_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_deposito_geral_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_deposito_geral_a" AFTER DELETE ON "edgv_cbge_deposito_geral_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_deposito_geral_a'); END ;

CREATE TABLE edgv_cbge_area_agropec_ext_vegetal_pesca_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoarea smallint NOT NULL,
	 destinadoa smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT cbge_area_agropec_ext_vegetal_pesca_a_tipoarea_check CHECK ((tipoarea = 4)),
	 CONSTRAINT cbge_area_agropec_ext_vegetal_pesca_a_destinadoa_check CHECK ((destinadoa = 0) OR (destinadoa = 5) OR (destinadoa = 18) OR (destinadoa = 34) OR (destinadoa = 35) OR (destinadoa = 36) OR (destinadoa = 37) OR (destinadoa = 38) OR (destinadoa = 39) OR (destinadoa = 40) OR (destinadoa = 41) OR (destinadoa = 43) OR (destinadoa = 44) OR (destinadoa = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_area_agropec_ext_vegetal_pesca_a', 'features','edgv_cbge_area_agropec_ext_vegetal_pesca_a', 'Camada cbge_area_agropec_ext_vegetal_pesca_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_area_agropec_ext_vegetal_pesca_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_area_agropec_ext_vegetal_pesca_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_area_agropec_ext_vegetal_pesca_a" AFTER INSERT ON "edgv_cbge_area_agropec_ext_vegetal_pesca_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_area_agropec_ext_vegetal_pesca_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_area_agropec_ext_vegetal_pesca_a" AFTER DELETE ON "edgv_cbge_area_agropec_ext_vegetal_pesca_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_area_agropec_ext_vegetal_pesca_a'); END ;

CREATE TABLE edgv_cbge_canteiro_central_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 situacaoespacial smallint,
	 geom MultiLinestring,
	 CONSTRAINT cbge_canteiro_central_l_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_canteiro_central_l', 'features','edgv_cbge_canteiro_central_l', 'Camada cbge_canteiro_central_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_canteiro_central_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_canteiro_central_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_canteiro_central_l" AFTER INSERT ON "edgv_cbge_canteiro_central_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_canteiro_central_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_canteiro_central_l" AFTER DELETE ON "edgv_cbge_canteiro_central_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_canteiro_central_l'); END ;

CREATE TABLE edgv_cbge_canteiro_central_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 situacaoespacial smallint,
	 geom MultiPolygon,
	 CONSTRAINT cbge_canteiro_central_a_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_canteiro_central_a', 'features','edgv_cbge_canteiro_central_a', 'Camada cbge_canteiro_central_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_canteiro_central_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_canteiro_central_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_canteiro_central_a" AFTER INSERT ON "edgv_cbge_canteiro_central_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_canteiro_central_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_canteiro_central_a" AFTER DELETE ON "edgv_cbge_canteiro_central_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_canteiro_central_a'); END ;

CREATE TABLE edgv_cbge_poste_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 codident varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 matconstr smallint,
	 tipoposte smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT cbge_poste_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT cbge_poste_p_tipoposte_check CHECK ((tipoposte = 0) OR (tipoposte = 2) OR (tipoposte = 3) OR (tipoposte = 4) OR (tipoposte = 5) OR (tipoposte = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_poste_p', 'features','edgv_cbge_poste_p', 'Camada cbge_poste_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_poste_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_poste_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_poste_p" AFTER INSERT ON "edgv_cbge_poste_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_poste_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_poste_p" AFTER DELETE ON "edgv_cbge_poste_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_poste_p'); END ;

CREATE TABLE edgv_cbge_espelho_dagua_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 codident varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_espelho_dagua_a', 'features','edgv_cbge_espelho_dagua_a', 'Camada cbge_espelho_dagua_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_espelho_dagua_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_espelho_dagua_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_espelho_dagua_a" AFTER INSERT ON "edgv_cbge_espelho_dagua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_espelho_dagua_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_espelho_dagua_a" AFTER DELETE ON "edgv_cbge_espelho_dagua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_espelho_dagua_a'); END ;

CREATE TABLE edgv_cbge_entroncamento_area_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoentroncamento smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT cbge_entroncamento_area_a_tipoentroncamento_check CHECK ((tipoentroncamento = 1) OR (tipoentroncamento = 2) OR (tipoentroncamento = 3) OR (tipoentroncamento = 4) OR (tipoentroncamento = 5) OR (tipoentroncamento = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_entroncamento_area_a', 'features','edgv_cbge_entroncamento_area_a', 'Camada cbge_entroncamento_area_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_entroncamento_area_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_entroncamento_area_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_entroncamento_area_a" AFTER INSERT ON "edgv_cbge_entroncamento_area_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_entroncamento_area_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_entroncamento_area_a" AFTER DELETE ON "edgv_cbge_entroncamento_area_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_entroncamento_area_a'); END ;

CREATE TABLE edgv_cbge_retorno_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 geom MultiLinestring
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_retorno_l', 'features','edgv_cbge_retorno_l', 'Camada cbge_retorno_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_retorno_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_retorno_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_retorno_l" AFTER INSERT ON "edgv_cbge_retorno_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_retorno_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_retorno_l" AFTER DELETE ON "edgv_cbge_retorno_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_retorno_l'); END ;

CREATE TABLE edgv_cbge_retorno_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_retorno_p', 'features','edgv_cbge_retorno_p', 'Camada cbge_retorno_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_retorno_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_retorno_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_retorno_p" AFTER INSERT ON "edgv_cbge_retorno_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_retorno_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_retorno_p" AFTER DELETE ON "edgv_cbge_retorno_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_retorno_p'); END ;

CREATE TABLE edgv_cbge_trecho_arruamento_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 jurisdicao smallint NOT NULL,
	 administracao smallint NOT NULL,
	 concessionaria varchar(100),
	 revestimento smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 canteirodivisorio smallint NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 trafego smallint NOT NULL,
	 tipopavimentacao smallint NOT NULL,
	 tipovia smallint NOT NULL,
	 meiofio boolean NOT NULL,
	 sarjeta boolean NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT cbge_trecho_arruamento_l_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT cbge_trecho_arruamento_l_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT cbge_trecho_arruamento_l_revestimento_check CHECK ((revestimento = 0) OR (revestimento = 1) OR (revestimento = 2) OR (revestimento = 3) OR (revestimento = 4) OR (revestimento = 99)),
	 CONSTRAINT cbge_trecho_arruamento_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT cbge_trecho_arruamento_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT cbge_trecho_arruamento_l_canteirodivisorio_check CHECK ((canteirodivisorio = 0) OR (canteirodivisorio = 1) OR (canteirodivisorio = 2)),
	 CONSTRAINT cbge_trecho_arruamento_l_trafego_check CHECK ((trafego = 0) OR (trafego = 1) OR (trafego = 2) OR (trafego = 4)),
	 CONSTRAINT cbge_trecho_arruamento_l_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT cbge_trecho_arruamento_l_tipovia_check CHECK ((tipovia = 1) OR (tipovia = 2) OR (tipovia = 3) OR (tipovia = 4) OR (tipovia = 5) OR (tipovia = 6) OR (tipovia = 7) OR (tipovia = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_trecho_arruamento_l', 'features','edgv_cbge_trecho_arruamento_l', 'Camada cbge_trecho_arruamento_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_trecho_arruamento_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_trecho_arruamento_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_trecho_arruamento_l" AFTER INSERT ON "edgv_cbge_trecho_arruamento_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_trecho_arruamento_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_trecho_arruamento_l" AFTER DELETE ON "edgv_cbge_trecho_arruamento_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_trecho_arruamento_l'); END ;

CREATE TABLE edgv_cbge_trecho_arruamento_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 jurisdicao smallint NOT NULL,
	 administracao smallint NOT NULL,
	 concessionaria varchar(100),
	 revestimento smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 canteirodivisorio smallint NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 trafego smallint NOT NULL,
	 tipopavimentacao smallint NOT NULL,
	 tipovia smallint NOT NULL,
	 meiofio boolean NOT NULL,
	 sarjeta boolean NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT cbge_trecho_arruamento_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT cbge_trecho_arruamento_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT cbge_trecho_arruamento_a_revestimento_check CHECK ((revestimento = 0) OR (revestimento = 1) OR (revestimento = 2) OR (revestimento = 3) OR (revestimento = 4) OR (revestimento = 99)),
	 CONSTRAINT cbge_trecho_arruamento_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT cbge_trecho_arruamento_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT cbge_trecho_arruamento_a_canteirodivisorio_check CHECK ((canteirodivisorio = 0) OR (canteirodivisorio = 1) OR (canteirodivisorio = 2)),
	 CONSTRAINT cbge_trecho_arruamento_a_trafego_check CHECK ((trafego = 0) OR (trafego = 1) OR (trafego = 2) OR (trafego = 4)),
	 CONSTRAINT cbge_trecho_arruamento_a_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT cbge_trecho_arruamento_a_tipovia_check CHECK ((tipovia = 1) OR (tipovia = 2) OR (tipovia = 3) OR (tipovia = 4) OR (tipovia = 5) OR (tipovia = 6) OR (tipovia = 7) OR (tipovia = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_trecho_arruamento_a', 'features','edgv_cbge_trecho_arruamento_a', 'Camada cbge_trecho_arruamento_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_trecho_arruamento_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_trecho_arruamento_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_trecho_arruamento_a" AFTER INSERT ON "edgv_cbge_trecho_arruamento_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_trecho_arruamento_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_trecho_arruamento_a" AFTER DELETE ON "edgv_cbge_trecho_arruamento_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_trecho_arruamento_a'); END ;

CREATE TABLE edgv_cbge_cemiterio_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipocemiterio smallint NOT NULL,
	 denominacaoassociada smallint,
	 destinacaocemiterio smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT cbge_cemiterio_p_tipocemiterio_check CHECK ((tipocemiterio = 0) OR (tipocemiterio = 1) OR (tipocemiterio = 2) OR (tipocemiterio = 3) OR (tipocemiterio = 4) OR (tipocemiterio = 5) OR (tipocemiterio = 6) OR (tipocemiterio = 98) OR (tipocemiterio = 99)),
	 CONSTRAINT cbge_cemiterio_p_denominacaoassociada_check CHECK ((denominacaoassociada = 5) OR (denominacaoassociada = 6) OR (denominacaoassociada = 7) OR (denominacaoassociada = 97) OR (denominacaoassociada = 99)),
	 CONSTRAINT cbge_cemiterio_p_destinacaocemiterio_check CHECK ((destinacaocemiterio = 2) OR (destinacaocemiterio = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_cemiterio_p', 'features','edgv_cbge_cemiterio_p', 'Camada cbge_cemiterio_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_cemiterio_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_cemiterio_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_cemiterio_p" AFTER INSERT ON "edgv_cbge_cemiterio_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_cemiterio_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_cemiterio_p" AFTER DELETE ON "edgv_cbge_cemiterio_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_cemiterio_p'); END ;

CREATE TABLE edgv_cbge_cemiterio_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipocemiterio smallint NOT NULL,
	 denominacaoassociada smallint,
	 destinacaocemiterio smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT cbge_cemiterio_a_tipocemiterio_check CHECK ((tipocemiterio = 0) OR (tipocemiterio = 1) OR (tipocemiterio = 2) OR (tipocemiterio = 3) OR (tipocemiterio = 4) OR (tipocemiterio = 5) OR (tipocemiterio = 6) OR (tipocemiterio = 98) OR (tipocemiterio = 99)),
	 CONSTRAINT cbge_cemiterio_a_denominacaoassociada_check CHECK ((denominacaoassociada = 5) OR (denominacaoassociada = 6) OR (denominacaoassociada = 7) OR (denominacaoassociada = 97) OR (denominacaoassociada = 99)),
	 CONSTRAINT cbge_cemiterio_a_destinacaocemiterio_check CHECK ((destinacaocemiterio = 2) OR (destinacaocemiterio = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_cemiterio_a', 'features','edgv_cbge_cemiterio_a', 'Camada cbge_cemiterio_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_cemiterio_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_cemiterio_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_cemiterio_a" AFTER INSERT ON "edgv_cbge_cemiterio_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_cemiterio_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_cemiterio_a" AFTER DELETE ON "edgv_cbge_cemiterio_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_cemiterio_a'); END ;

CREATE TABLE edgv_cbge_delimitacao_fisica_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipodelimfis smallint NOT NULL,
	 matconstr smallint,
	 eletrificada smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT cbge_delimitacao_fisica_l_tipodelimfis_check CHECK ((tipodelimfis = 0) OR (tipodelimfis = 1) OR (tipodelimfis = 2) OR (tipodelimfis = 3) OR (tipodelimfis = 4)),
	 CONSTRAINT cbge_delimitacao_fisica_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT cbge_delimitacao_fisica_l_eletrificada_check CHECK ((eletrificada = 0) OR (eletrificada = 1) OR (eletrificada = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_delimitacao_fisica_l', 'features','edgv_cbge_delimitacao_fisica_l', 'Camada cbge_delimitacao_fisica_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_delimitacao_fisica_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_delimitacao_fisica_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_delimitacao_fisica_l" AFTER INSERT ON "edgv_cbge_delimitacao_fisica_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_delimitacao_fisica_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_delimitacao_fisica_l" AFTER DELETE ON "edgv_cbge_delimitacao_fisica_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_delimitacao_fisica_l'); END ;

CREATE TABLE edgv_cbge_area_construida_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_area_construida_a', 'features','edgv_cbge_area_construida_a', 'Camada cbge_area_construida_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_area_construida_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_area_construida_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_area_construida_a" AFTER INSERT ON "edgv_cbge_area_construida_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_area_construida_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_area_construida_a" AFTER DELETE ON "edgv_cbge_area_construida_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_area_construida_a'); END ;

CREATE TABLE edgv_cbge_area_habitacional_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoarea smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT cbge_area_habitacional_a_tipoarea_check CHECK ((tipoarea = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_area_habitacional_a', 'features','edgv_cbge_area_habitacional_a', 'Camada cbge_area_habitacional_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_area_habitacional_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_area_habitacional_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_area_habitacional_a" AFTER INSERT ON "edgv_cbge_area_habitacional_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_area_habitacional_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_area_habitacional_a" AFTER DELETE ON "edgv_cbge_area_habitacional_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_area_habitacional_a'); END ;

CREATE TABLE edgv_cbge_estacionamento_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint NOT NULL,
	 administracao smallint,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 finalidadepatio smallint NOT NULL,
	 publico boolean NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT cbge_estacionamento_a_modaluso_check CHECK ((modaluso = 4)),
	 CONSTRAINT cbge_estacionamento_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT cbge_estacionamento_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT cbge_estacionamento_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT cbge_estacionamento_a_finalidadepatio_check CHECK ((finalidadepatio = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_estacionamento_a', 'features','edgv_cbge_estacionamento_a', 'Camada cbge_estacionamento_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_estacionamento_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_estacionamento_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_estacionamento_a" AFTER INSERT ON "edgv_cbge_estacionamento_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_estacionamento_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_estacionamento_a" AFTER DELETE ON "edgv_cbge_estacionamento_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_estacionamento_a'); END ;

CREATE TABLE edgv_cbge_praca_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80) NOT NULL,
	 geometriaaproximada boolean NOT NULL,
	 turistica boolean,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_praca_a', 'features','edgv_cbge_praca_a', 'Camada cbge_praca_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_praca_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_praca_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_praca_a" AFTER INSERT ON "edgv_cbge_praca_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_praca_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_praca_a" AFTER DELETE ON "edgv_cbge_praca_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_praca_a'); END ;

CREATE TABLE edgv_cbge_area_duto_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoarea smallint NOT NULL,
	 areavalvulas boolean,
	 bombeamento boolean,
	 geom MultiPolygon,
	 CONSTRAINT cbge_area_duto_a_tipoarea_check CHECK ((tipoarea = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_area_duto_a', 'features','edgv_cbge_area_duto_a', 'Camada cbge_area_duto_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_area_duto_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_area_duto_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_area_duto_a" AFTER INSERT ON "edgv_cbge_area_duto_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_area_duto_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_area_duto_a" AFTER DELETE ON "edgv_cbge_area_duto_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_area_duto_a'); END ;

CREATE TABLE edgv_cbge_area_de_propriedade_particular_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoarea smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT cbge_area_de_propriedade_particular_a_tipoarea_check CHECK ((tipoarea = 1))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_area_de_propriedade_particular_a', 'features','edgv_cbge_area_de_propriedade_particular_a', 'Camada cbge_area_de_propriedade_particular_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_area_de_propriedade_particular_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_area_de_propriedade_particular_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_area_de_propriedade_particular_a" AFTER INSERT ON "edgv_cbge_area_de_propriedade_particular_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_area_de_propriedade_particular_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_area_de_propriedade_particular_a" AFTER DELETE ON "edgv_cbge_area_de_propriedade_particular_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_area_de_propriedade_particular_a'); END ;

CREATE TABLE edgv_cbge_quadra_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_quadra_a', 'features','edgv_cbge_quadra_a', 'Camada cbge_quadra_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_quadra_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_quadra_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_quadra_a" AFTER INSERT ON "edgv_cbge_quadra_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_quadra_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_quadra_a" AFTER DELETE ON "edgv_cbge_quadra_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_quadra_a'); END ;

CREATE TABLE edgv_cbge_area_uso_especifico_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoarea smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT cbge_area_uso_especifico_a_tipoarea_check CHECK ((tipoarea = 0) OR (tipoarea = 5) OR (tipoarea = 6) OR (tipoarea = 7) OR (tipoarea = 8) OR (tipoarea = 9) OR (tipoarea = 10) OR (tipoarea = 11) OR (tipoarea = 12) OR (tipoarea = 13) OR (tipoarea = 14) OR (tipoarea = 15) OR (tipoarea = 16) OR (tipoarea = 17) OR (tipoarea = 18) OR (tipoarea = 19) OR (tipoarea = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_area_uso_especifico_a', 'features','edgv_cbge_area_uso_especifico_a', 'Camada cbge_area_uso_especifico_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_area_uso_especifico_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_area_uso_especifico_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_area_uso_especifico_a" AFTER INSERT ON "edgv_cbge_area_uso_especifico_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_area_uso_especifico_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_area_uso_especifico_a" AFTER DELETE ON "edgv_cbge_area_uso_especifico_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_area_uso_especifico_a'); END ;

CREATE TABLE edgv_cbge_passeio_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 largura real,
	 calcada smallint NOT NULL,
	 pavimentacao smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT cbge_passeio_l_calcada_check CHECK ((calcada = 0) OR (calcada = 1) OR (calcada = 2)),
	 CONSTRAINT cbge_passeio_l_pavimentacao_check CHECK ((pavimentacao = 0) OR (pavimentacao = 2) OR (pavimentacao = 3) OR (pavimentacao = 4) OR (pavimentacao = 5) OR (pavimentacao = 6) OR (pavimentacao = 7) OR (pavimentacao = 97) OR (pavimentacao = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_passeio_l', 'features','edgv_cbge_passeio_l', 'Camada cbge_passeio_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_passeio_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_passeio_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_passeio_l" AFTER INSERT ON "edgv_cbge_passeio_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_passeio_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_passeio_l" AFTER DELETE ON "edgv_cbge_passeio_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_passeio_l'); END ;

CREATE TABLE edgv_cbge_passeio_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 largura real,
	 calcada smallint NOT NULL,
	 pavimentacao smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT cbge_passeio_a_calcada_check CHECK ((calcada = 0) OR (calcada = 1) OR (calcada = 2)),
	 CONSTRAINT cbge_passeio_a_pavimentacao_check CHECK ((pavimentacao = 0) OR (pavimentacao = 2) OR (pavimentacao = 3) OR (pavimentacao = 4) OR (pavimentacao = 5) OR (pavimentacao = 6) OR (pavimentacao = 7) OR (pavimentacao = 97) OR (pavimentacao = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_passeio_a', 'features','edgv_cbge_passeio_a', 'Camada cbge_passeio_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_passeio_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_passeio_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_passeio_a" AFTER INSERT ON "edgv_cbge_passeio_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_passeio_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_passeio_a" AFTER DELETE ON "edgv_cbge_passeio_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_passeio_a'); END ;

CREATE TABLE edgv_cbge_largo_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_cbge_largo_a', 'features','edgv_cbge_largo_a', 'Camada cbge_largo_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_cbge_largo_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_cbge_largo_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_cbge_largo_a" AFTER INSERT ON "edgv_cbge_largo_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_cbge_largo_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_cbge_largo_a" AFTER DELETE ON "edgv_cbge_largo_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_cbge_largo_a'); END ;

CREATE TABLE edgv_dut_galeria_bueiro_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipotrechoduto smallint NOT NULL,
	 mattransp smallint,
	 setor smallint NOT NULL,
	 posicaorelativa smallint,
	 matconstr smallint,
	 nrdutos integer,
	 situacaoespacial smallint,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 finalidade smallint,
	 pesosuportmaximo real,
	 largura real,
	 geom MultiLinestring,
	 CONSTRAINT dut_galeria_bueiro_l_tipotrechoduto_check CHECK ((tipotrechoduto = 4) OR (tipotrechoduto = 5)),
	 CONSTRAINT dut_galeria_bueiro_l_mattransp_check CHECK ((mattransp = 0) OR (mattransp = 1) OR (mattransp = 2) OR (mattransp = 3) OR (mattransp = 4) OR (mattransp = 5) OR (mattransp = 6) OR (mattransp = 7) OR (mattransp = 8) OR (mattransp = 9) OR (mattransp = 29) OR (mattransp = 30) OR (mattransp = 31) OR (mattransp = 99)),
	 CONSTRAINT dut_galeria_bueiro_l_setor_check CHECK ((setor = 0) OR (setor = 4)),
	 CONSTRAINT dut_galeria_bueiro_l_posicaorelativa_check CHECK ((posicaorelativa = 0) OR (posicaorelativa = 2) OR (posicaorelativa = 3) OR (posicaorelativa = 4) OR (posicaorelativa = 5) OR (posicaorelativa = 6)),
	 CONSTRAINT dut_galeria_bueiro_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT dut_galeria_bueiro_l_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99)),
	 CONSTRAINT dut_galeria_bueiro_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT dut_galeria_bueiro_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT dut_galeria_bueiro_l_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 3) OR (finalidade = 4) OR (finalidade = 5) OR (finalidade = 6) OR (finalidade = 7) OR (finalidade = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_dut_galeria_bueiro_l', 'features','edgv_dut_galeria_bueiro_l', 'Camada dut_galeria_bueiro_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_dut_galeria_bueiro_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_dut_galeria_bueiro_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_dut_galeria_bueiro_l" AFTER INSERT ON "edgv_dut_galeria_bueiro_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_dut_galeria_bueiro_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_dut_galeria_bueiro_l" AFTER DELETE ON "edgv_dut_galeria_bueiro_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_dut_galeria_bueiro_l'); END ;

CREATE TABLE edgv_dut_galeria_bueiro_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipotrechoduto smallint NOT NULL,
	 mattransp smallint,
	 setor smallint NOT NULL,
	 posicaorelativa smallint,
	 matconstr smallint,
	 nrdutos integer,
	 situacaoespacial smallint,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 finalidade smallint,
	 pesosuportmaximo real,
	 largura real,
	 geom MultiPoint,
	 CONSTRAINT dut_galeria_bueiro_p_tipotrechoduto_check CHECK ((tipotrechoduto = 4) OR (tipotrechoduto = 5)),
	 CONSTRAINT dut_galeria_bueiro_p_mattransp_check CHECK ((mattransp = 0) OR (mattransp = 1) OR (mattransp = 2) OR (mattransp = 3) OR (mattransp = 4) OR (mattransp = 5) OR (mattransp = 6) OR (mattransp = 7) OR (mattransp = 8) OR (mattransp = 9) OR (mattransp = 29) OR (mattransp = 30) OR (mattransp = 31) OR (mattransp = 99)),
	 CONSTRAINT dut_galeria_bueiro_p_setor_check CHECK ((setor = 0) OR (setor = 4)),
	 CONSTRAINT dut_galeria_bueiro_p_posicaorelativa_check CHECK ((posicaorelativa = 0) OR (posicaorelativa = 2) OR (posicaorelativa = 3) OR (posicaorelativa = 4) OR (posicaorelativa = 5) OR (posicaorelativa = 6)),
	 CONSTRAINT dut_galeria_bueiro_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT dut_galeria_bueiro_p_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99)),
	 CONSTRAINT dut_galeria_bueiro_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT dut_galeria_bueiro_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT dut_galeria_bueiro_p_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 3) OR (finalidade = 4) OR (finalidade = 5) OR (finalidade = 6) OR (finalidade = 7) OR (finalidade = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_dut_galeria_bueiro_p', 'features','edgv_dut_galeria_bueiro_p', 'Camada dut_galeria_bueiro_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_dut_galeria_bueiro_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_dut_galeria_bueiro_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_dut_galeria_bueiro_p" AFTER INSERT ON "edgv_dut_galeria_bueiro_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_dut_galeria_bueiro_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_dut_galeria_bueiro_p" AFTER DELETE ON "edgv_dut_galeria_bueiro_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_dut_galeria_bueiro_p'); END ;

CREATE TABLE edgv_dut_trecho_duto_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipotrechoduto smallint NOT NULL,
	 mattransp smallint,
	 setor smallint NOT NULL,
	 posicaorelativa smallint,
	 matconstr smallint,
	 nrdutos integer,
	 situacaoespacial smallint,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT dut_trecho_duto_l_tipotrechoduto_check CHECK ((tipotrechoduto = 0) OR (tipotrechoduto = 1) OR (tipotrechoduto = 2) OR (tipotrechoduto = 3)),
	 CONSTRAINT dut_trecho_duto_l_mattransp_check CHECK ((mattransp = 0) OR (mattransp = 1) OR (mattransp = 2) OR (mattransp = 3) OR (mattransp = 4) OR (mattransp = 5) OR (mattransp = 6) OR (mattransp = 7) OR (mattransp = 8) OR (mattransp = 9) OR (mattransp = 29) OR (mattransp = 30) OR (mattransp = 31) OR (mattransp = 99)),
	 CONSTRAINT dut_trecho_duto_l_setor_check CHECK ((setor = 0) OR (setor = 1) OR (setor = 2) OR (setor = 3) OR (setor = 4)),
	 CONSTRAINT dut_trecho_duto_l_posicaorelativa_check CHECK ((posicaorelativa = 0) OR (posicaorelativa = 2) OR (posicaorelativa = 3) OR (posicaorelativa = 4) OR (posicaorelativa = 5) OR (posicaorelativa = 6)),
	 CONSTRAINT dut_trecho_duto_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT dut_trecho_duto_l_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99)),
	 CONSTRAINT dut_trecho_duto_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT dut_trecho_duto_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_dut_trecho_duto_l', 'features','edgv_dut_trecho_duto_l', 'Camada dut_trecho_duto_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_dut_trecho_duto_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_dut_trecho_duto_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_dut_trecho_duto_l" AFTER INSERT ON "edgv_dut_trecho_duto_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_dut_trecho_duto_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_dut_trecho_duto_l" AFTER DELETE ON "edgv_dut_trecho_duto_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_dut_trecho_duto_l'); END ;

CREATE TABLE edgv_eco_equip_agropec_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipoequipagropec smallint NOT NULL,
	 matconstr smallint,
	 geom MultiLinestring,
	 CONSTRAINT eco_equip_agropec_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT eco_equip_agropec_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT eco_equip_agropec_l_tipoequipagropec_check CHECK ((tipoequipagropec = 0) OR (tipoequipagropec = 1) OR (tipoequipagropec = 2) OR (tipoequipagropec = 3) OR (tipoequipagropec = 4) OR (tipoequipagropec = 5) OR (tipoequipagropec = 6) OR (tipoequipagropec = 99)),
	 CONSTRAINT eco_equip_agropec_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_eco_equip_agropec_l', 'features','edgv_eco_equip_agropec_l', 'Camada eco_equip_agropec_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_eco_equip_agropec_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_eco_equip_agropec_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_eco_equip_agropec_l" AFTER INSERT ON "edgv_eco_equip_agropec_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_eco_equip_agropec_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_eco_equip_agropec_l" AFTER DELETE ON "edgv_eco_equip_agropec_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_eco_equip_agropec_l'); END ;

CREATE TABLE edgv_eco_equip_agropec_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipoequipagropec smallint NOT NULL,
	 matconstr smallint,
	 geom MultiPoint,
	 CONSTRAINT eco_equip_agropec_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT eco_equip_agropec_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT eco_equip_agropec_p_tipoequipagropec_check CHECK ((tipoequipagropec = 0) OR (tipoequipagropec = 1) OR (tipoequipagropec = 2) OR (tipoequipagropec = 3) OR (tipoequipagropec = 4) OR (tipoequipagropec = 5) OR (tipoequipagropec = 6) OR (tipoequipagropec = 99)),
	 CONSTRAINT eco_equip_agropec_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_eco_equip_agropec_p', 'features','edgv_eco_equip_agropec_p', 'Camada eco_equip_agropec_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_eco_equip_agropec_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_eco_equip_agropec_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_eco_equip_agropec_p" AFTER INSERT ON "edgv_eco_equip_agropec_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_eco_equip_agropec_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_eco_equip_agropec_p" AFTER DELETE ON "edgv_eco_equip_agropec_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_eco_equip_agropec_p'); END ;

CREATE TABLE edgv_eco_equip_agropec_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipoequipagropec smallint NOT NULL,
	 matconstr smallint,
	 geom MultiPolygon,
	 CONSTRAINT eco_equip_agropec_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT eco_equip_agropec_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT eco_equip_agropec_a_tipoequipagropec_check CHECK ((tipoequipagropec = 0) OR (tipoequipagropec = 1) OR (tipoequipagropec = 2) OR (tipoequipagropec = 3) OR (tipoequipagropec = 4) OR (tipoequipagropec = 5) OR (tipoequipagropec = 6) OR (tipoequipagropec = 99)),
	 CONSTRAINT eco_equip_agropec_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_eco_equip_agropec_a', 'features','edgv_eco_equip_agropec_a', 'Camada eco_equip_agropec_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_eco_equip_agropec_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_eco_equip_agropec_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_eco_equip_agropec_a" AFTER INSERT ON "edgv_eco_equip_agropec_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_eco_equip_agropec_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_eco_equip_agropec_a" AFTER DELETE ON "edgv_eco_equip_agropec_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_eco_equip_agropec_a'); END ;

CREATE TABLE edgv_eco_ext_mineral_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 secaoativecon smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipoextmin smallint NOT NULL,
	 tipoproduto smallint NOT NULL,
	 tipopocomina smallint NOT NULL,
	 procextracao smallint,
	 formaextracao smallint NOT NULL,
	 atividade smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT eco_ext_mineral_p_tipoalterantrop_check CHECK ((tipoalterantrop = 32)),
	 CONSTRAINT eco_ext_mineral_p_secaoativecon_check CHECK ((secaoativecon = 1)),
	 CONSTRAINT eco_ext_mineral_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT eco_ext_mineral_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT eco_ext_mineral_p_tipoextmin_check CHECK ((tipoextmin = 0) OR (tipoextmin = 1) OR (tipoextmin = 4) OR (tipoextmin = 5) OR (tipoextmin = 6) OR (tipoextmin = 8) OR (tipoextmin = 99)),
	 CONSTRAINT eco_ext_mineral_p_tipoproduto_check CHECK ((tipoproduto = 0) OR (tipoproduto = 3) OR (tipoproduto = 5) OR (tipoproduto = 6) OR (tipoproduto = 16) OR (tipoproduto = 17) OR (tipoproduto = 18) OR (tipoproduto = 20) OR (tipoproduto = 21) OR (tipoproduto = 22) OR (tipoproduto = 23) OR (tipoproduto = 24) OR (tipoproduto = 25) OR (tipoproduto = 26) OR (tipoproduto = 27) OR (tipoproduto = 28) OR (tipoproduto = 29) OR (tipoproduto = 30) OR (tipoproduto = 31) OR (tipoproduto = 32) OR (tipoproduto = 33) OR (tipoproduto = 34) OR (tipoproduto = 35) OR (tipoproduto = 36) OR (tipoproduto = 37) OR (tipoproduto = 38) OR (tipoproduto = 39) OR (tipoproduto = 40) OR (tipoproduto = 41) OR (tipoproduto = 42) OR (tipoproduto = 43) OR (tipoproduto = 45) OR (tipoproduto = 46) OR (tipoproduto = 47) OR (tipoproduto = 48) OR (tipoproduto = 49) OR (tipoproduto = 50) OR (tipoproduto = 51) OR (tipoproduto = 52) OR (tipoproduto = 53) OR (tipoproduto = 54) OR (tipoproduto = 55) OR (tipoproduto = 56) OR (tipoproduto = 57) OR (tipoproduto = 58) OR (tipoproduto = 59) OR (tipoproduto = 60) OR (tipoproduto = 61) OR (tipoproduto = 62) OR (tipoproduto = 63) OR (tipoproduto = 64) OR (tipoproduto = 65) OR (tipoproduto = 66) OR (tipoproduto = 67) OR (tipoproduto = 68) OR (tipoproduto = 69) OR (tipoproduto = 70) OR (tipoproduto = 71) OR (tipoproduto = 72) OR (tipoproduto = 73) OR (tipoproduto = 74) OR (tipoproduto = 75) OR (tipoproduto = 76) OR (tipoproduto = 77) OR (tipoproduto = 78) OR (tipoproduto = 79) OR (tipoproduto = 80) OR (tipoproduto = 81) OR (tipoproduto = 82) OR (tipoproduto = 83) OR (tipoproduto = 84) OR (tipoproduto = 85) OR (tipoproduto = 86) OR (tipoproduto = 87) OR (tipoproduto = 88) OR (tipoproduto = 89) OR (tipoproduto = 90) OR (tipoproduto = 91) OR (tipoproduto = 92) OR (tipoproduto = 93) OR (tipoproduto = 94) OR (tipoproduto = 99) OR (tipoproduto = 100)),
	 CONSTRAINT eco_ext_mineral_p_tipopocomina_check CHECK ((tipopocomina = 0) OR (tipopocomina = 2) OR (tipopocomina = 3) OR (tipopocomina = 97)),
	 CONSTRAINT eco_ext_mineral_p_procextracao_check CHECK ((procextracao = 0) OR (procextracao = 1) OR (procextracao = 2)),
	 CONSTRAINT eco_ext_mineral_p_formaextracao_check CHECK ((formaextracao = 0) OR (formaextracao = 5) OR (formaextracao = 6)),
	 CONSTRAINT eco_ext_mineral_p_atividade_check CHECK ((atividade = 0) OR (atividade = 9) OR (atividade = 10))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_eco_ext_mineral_p', 'features','edgv_eco_ext_mineral_p', 'Camada eco_ext_mineral_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_eco_ext_mineral_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_eco_ext_mineral_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_eco_ext_mineral_p" AFTER INSERT ON "edgv_eco_ext_mineral_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_eco_ext_mineral_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_eco_ext_mineral_p" AFTER DELETE ON "edgv_eco_ext_mineral_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_eco_ext_mineral_p'); END ;

CREATE TABLE edgv_eco_ext_mineral_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 secaoativecon smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipoextmin smallint NOT NULL,
	 tipoproduto smallint NOT NULL,
	 tipopocomina smallint NOT NULL,
	 procextracao smallint,
	 formaextracao smallint NOT NULL,
	 atividade smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT eco_ext_mineral_a_tipoalterantrop_check CHECK ((tipoalterantrop = 32)),
	 CONSTRAINT eco_ext_mineral_a_secaoativecon_check CHECK ((secaoativecon = 1)),
	 CONSTRAINT eco_ext_mineral_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT eco_ext_mineral_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT eco_ext_mineral_a_tipoextmin_check CHECK ((tipoextmin = 0) OR (tipoextmin = 1) OR (tipoextmin = 4) OR (tipoextmin = 5) OR (tipoextmin = 6) OR (tipoextmin = 8) OR (tipoextmin = 99)),
	 CONSTRAINT eco_ext_mineral_a_tipoproduto_check CHECK ((tipoproduto = 0) OR (tipoproduto = 3) OR (tipoproduto = 5) OR (tipoproduto = 6) OR (tipoproduto = 16) OR (tipoproduto = 17) OR (tipoproduto = 18) OR (tipoproduto = 20) OR (tipoproduto = 21) OR (tipoproduto = 22) OR (tipoproduto = 23) OR (tipoproduto = 24) OR (tipoproduto = 25) OR (tipoproduto = 26) OR (tipoproduto = 27) OR (tipoproduto = 28) OR (tipoproduto = 29) OR (tipoproduto = 30) OR (tipoproduto = 31) OR (tipoproduto = 32) OR (tipoproduto = 33) OR (tipoproduto = 34) OR (tipoproduto = 35) OR (tipoproduto = 36) OR (tipoproduto = 37) OR (tipoproduto = 38) OR (tipoproduto = 39) OR (tipoproduto = 40) OR (tipoproduto = 41) OR (tipoproduto = 42) OR (tipoproduto = 43) OR (tipoproduto = 45) OR (tipoproduto = 46) OR (tipoproduto = 47) OR (tipoproduto = 48) OR (tipoproduto = 49) OR (tipoproduto = 50) OR (tipoproduto = 51) OR (tipoproduto = 52) OR (tipoproduto = 53) OR (tipoproduto = 54) OR (tipoproduto = 55) OR (tipoproduto = 56) OR (tipoproduto = 57) OR (tipoproduto = 58) OR (tipoproduto = 59) OR (tipoproduto = 60) OR (tipoproduto = 61) OR (tipoproduto = 62) OR (tipoproduto = 63) OR (tipoproduto = 64) OR (tipoproduto = 65) OR (tipoproduto = 66) OR (tipoproduto = 67) OR (tipoproduto = 68) OR (tipoproduto = 69) OR (tipoproduto = 70) OR (tipoproduto = 71) OR (tipoproduto = 72) OR (tipoproduto = 73) OR (tipoproduto = 74) OR (tipoproduto = 75) OR (tipoproduto = 76) OR (tipoproduto = 77) OR (tipoproduto = 78) OR (tipoproduto = 79) OR (tipoproduto = 80) OR (tipoproduto = 81) OR (tipoproduto = 82) OR (tipoproduto = 83) OR (tipoproduto = 84) OR (tipoproduto = 85) OR (tipoproduto = 86) OR (tipoproduto = 87) OR (tipoproduto = 88) OR (tipoproduto = 89) OR (tipoproduto = 90) OR (tipoproduto = 91) OR (tipoproduto = 92) OR (tipoproduto = 93) OR (tipoproduto = 94) OR (tipoproduto = 99) OR (tipoproduto = 100)),
	 CONSTRAINT eco_ext_mineral_a_tipopocomina_check CHECK ((tipopocomina = 0) OR (tipopocomina = 2) OR (tipopocomina = 3) OR (tipopocomina = 97)),
	 CONSTRAINT eco_ext_mineral_a_procextracao_check CHECK ((procextracao = 0) OR (procextracao = 1) OR (procextracao = 2)),
	 CONSTRAINT eco_ext_mineral_a_formaextracao_check CHECK ((formaextracao = 0) OR (formaextracao = 5) OR (formaextracao = 6)),
	 CONSTRAINT eco_ext_mineral_a_atividade_check CHECK ((atividade = 0) OR (atividade = 9) OR (atividade = 10))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_eco_ext_mineral_a', 'features','edgv_eco_ext_mineral_a', 'Camada eco_ext_mineral_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_eco_ext_mineral_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_eco_ext_mineral_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_eco_ext_mineral_a" AFTER INSERT ON "edgv_eco_ext_mineral_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_eco_ext_mineral_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_eco_ext_mineral_a" AFTER DELETE ON "edgv_eco_ext_mineral_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_eco_ext_mineral_a'); END ;

CREATE TABLE edgv_eco_plataforma_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoplataforma smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT eco_plataforma_p_tipoplataforma_check CHECK ((tipoplataforma = 0) OR (tipoplataforma = 3) OR (tipoplataforma = 5) OR (tipoplataforma = 98))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_eco_plataforma_p', 'features','edgv_eco_plataforma_p', 'Camada eco_plataforma_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_eco_plataforma_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_eco_plataforma_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_eco_plataforma_p" AFTER INSERT ON "edgv_eco_plataforma_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_eco_plataforma_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_eco_plataforma_p" AFTER DELETE ON "edgv_eco_plataforma_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_eco_plataforma_p'); END ;

CREATE TABLE edgv_eco_plataforma_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoplataforma smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT eco_plataforma_a_tipoplataforma_check CHECK ((tipoplataforma = 0) OR (tipoplataforma = 3) OR (tipoplataforma = 5) OR (tipoplataforma = 98))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_eco_plataforma_a', 'features','edgv_eco_plataforma_a', 'Camada eco_plataforma_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_eco_plataforma_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_eco_plataforma_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_eco_plataforma_a" AFTER INSERT ON "edgv_eco_plataforma_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_eco_plataforma_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_eco_plataforma_a" AFTER DELETE ON "edgv_eco_plataforma_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_eco_plataforma_a'); END ;

CREATE TABLE edgv_edf_edif_rodoviaria_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifrod smallint NOT NULL,
	 jurisdicao smallint,
	 concessionaria varchar(100),
	 geom MultiPoint,
	 CONSTRAINT edf_edif_rodoviaria_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_rodoviaria_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_rodoviaria_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_rodoviaria_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_rodoviaria_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_rodoviaria_p_tipoedifrod_check CHECK ((tipoedifrod = 0) OR (tipoedifrod = 8) OR (tipoedifrod = 9) OR (tipoedifrod = 10) OR (tipoedifrod = 13) OR (tipoedifrod = 15) OR (tipoedifrod = 20) OR (tipoedifrod = 99)),
	 CONSTRAINT edf_edif_rodoviaria_p_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_rodoviaria_p', 'features','edgv_edf_edif_rodoviaria_p', 'Camada edf_edif_rodoviaria_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_rodoviaria_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_rodoviaria_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_rodoviaria_p" AFTER INSERT ON "edgv_edf_edif_rodoviaria_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_rodoviaria_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_rodoviaria_p" AFTER DELETE ON "edgv_edf_edif_rodoviaria_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_rodoviaria_p'); END ;

CREATE TABLE edgv_edf_edif_rodoviaria_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifrod smallint NOT NULL,
	 jurisdicao smallint,
	 concessionaria varchar(100),
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_rodoviaria_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_rodoviaria_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_rodoviaria_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_rodoviaria_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_rodoviaria_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_rodoviaria_a_tipoedifrod_check CHECK ((tipoedifrod = 0) OR (tipoedifrod = 8) OR (tipoedifrod = 9) OR (tipoedifrod = 10) OR (tipoedifrod = 13) OR (tipoedifrod = 15) OR (tipoedifrod = 20) OR (tipoedifrod = 99)),
	 CONSTRAINT edf_edif_rodoviaria_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_rodoviaria_a', 'features','edgv_edf_edif_rodoviaria_a', 'Camada edf_edif_rodoviaria_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_rodoviaria_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_rodoviaria_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_rodoviaria_a" AFTER INSERT ON "edgv_edf_edif_rodoviaria_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_rodoviaria_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_rodoviaria_a" AFTER DELETE ON "edgv_edf_edif_rodoviaria_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_rodoviaria_a'); END ;

CREATE TABLE edgv_edf_edif_constr_turistica_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifturist smallint NOT NULL,
	 ovgd smallint NOT NULL,
	 tombada boolean,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_constr_turistica_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_constr_turistica_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_constr_turistica_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_constr_turistica_p_turistica_check CHECK ((turistica = 1)),
	 CONSTRAINT edf_edif_constr_turistica_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_constr_turistica_p_tipoedifturist_check CHECK ((tipoedifturist = 0) OR (tipoedifturist = 9) OR (tipoedifturist = 10) OR (tipoedifturist = 11) OR (tipoedifturist = 12) OR (tipoedifturist = 13) OR (tipoedifturist = 14) OR (tipoedifturist = 15) OR (tipoedifturist = 16) OR (tipoedifturist = 17) OR (tipoedifturist = 18) OR (tipoedifturist = 19) OR (tipoedifturist = 99)),
	 CONSTRAINT edf_edif_constr_turistica_p_ovgd_check CHECK ((ovgd = 0) OR (ovgd = 1) OR (ovgd = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_constr_turistica_p', 'features','edgv_edf_edif_constr_turistica_p', 'Camada edf_edif_constr_turistica_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_constr_turistica_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_constr_turistica_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_constr_turistica_p" AFTER INSERT ON "edgv_edf_edif_constr_turistica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_turistica_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_constr_turistica_p" AFTER DELETE ON "edgv_edf_edif_constr_turistica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_turistica_p'); END ;

CREATE TABLE edgv_edf_edif_constr_turistica_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifturist smallint NOT NULL,
	 ovgd smallint NOT NULL,
	 tombada boolean,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_constr_turistica_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_constr_turistica_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_constr_turistica_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_constr_turistica_a_turistica_check CHECK ((turistica = 1)),
	 CONSTRAINT edf_edif_constr_turistica_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_constr_turistica_a_tipoedifturist_check CHECK ((tipoedifturist = 0) OR (tipoedifturist = 9) OR (tipoedifturist = 10) OR (tipoedifturist = 11) OR (tipoedifturist = 12) OR (tipoedifturist = 13) OR (tipoedifturist = 14) OR (tipoedifturist = 15) OR (tipoedifturist = 16) OR (tipoedifturist = 17) OR (tipoedifturist = 18) OR (tipoedifturist = 19) OR (tipoedifturist = 99)),
	 CONSTRAINT edf_edif_constr_turistica_a_ovgd_check CHECK ((ovgd = 0) OR (ovgd = 1) OR (ovgd = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_constr_turistica_a', 'features','edgv_edf_edif_constr_turistica_a', 'Camada edf_edif_constr_turistica_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_constr_turistica_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_constr_turistica_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_constr_turistica_a" AFTER INSERT ON "edgv_edf_edif_constr_turistica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_turistica_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_constr_turistica_a" AFTER DELETE ON "edgv_edf_edif_constr_turistica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_turistica_a'); END ;

CREATE TABLE edgv_edf_representacao_diplomatica_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tiporepdiplomatica smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_representacao_diplomatica_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_representacao_diplomatica_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_representacao_diplomatica_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_representacao_diplomatica_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_representacao_diplomatica_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_representacao_diplomatica_p_tiporepdiplomatica_check CHECK ((tiporepdiplomatica = 2) OR (tiporepdiplomatica = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_representacao_diplomatica_p', 'features','edgv_edf_representacao_diplomatica_p', 'Camada edf_representacao_diplomatica_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_representacao_diplomatica_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_representacao_diplomatica_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_representacao_diplomatica_p" AFTER INSERT ON "edgv_edf_representacao_diplomatica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_representacao_diplomatica_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_representacao_diplomatica_p" AFTER DELETE ON "edgv_edf_representacao_diplomatica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_representacao_diplomatica_p'); END ;

CREATE TABLE edgv_edf_representacao_diplomatica_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tiporepdiplomatica smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_representacao_diplomatica_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_representacao_diplomatica_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_representacao_diplomatica_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_representacao_diplomatica_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_representacao_diplomatica_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_representacao_diplomatica_a_tiporepdiplomatica_check CHECK ((tiporepdiplomatica = 2) OR (tiporepdiplomatica = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_representacao_diplomatica_a', 'features','edgv_edf_representacao_diplomatica_a', 'Camada edf_representacao_diplomatica_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_representacao_diplomatica_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_representacao_diplomatica_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_representacao_diplomatica_a" AFTER INSERT ON "edgv_edf_representacao_diplomatica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_representacao_diplomatica_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_representacao_diplomatica_a" AFTER DELETE ON "edgv_edf_representacao_diplomatica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_representacao_diplomatica_a'); END ;

CREATE TABLE edgv_edf_edif_agropec_ext_vegetal_pesca_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifagropec smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_p_tipoedifagropec_check CHECK ((tipoedifagropec = 0) OR (tipoedifagropec = 4) OR (tipoedifagropec = 12) OR (tipoedifagropec = 13) OR (tipoedifagropec = 14) OR (tipoedifagropec = 15) OR (tipoedifagropec = 16) OR (tipoedifagropec = 17) OR (tipoedifagropec = 18) OR (tipoedifagropec = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_agropec_ext_vegetal_pesca_p', 'features','edgv_edf_edif_agropec_ext_vegetal_pesca_p', 'Camada edf_edif_agropec_ext_vegetal_pesca_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_agropec_ext_vegetal_pesca_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_agropec_ext_vegetal_pesca_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_agropec_ext_vegetal_pesca_p" AFTER INSERT ON "edgv_edf_edif_agropec_ext_vegetal_pesca_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_agropec_ext_vegetal_pesca_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_agropec_ext_vegetal_pesca_p" AFTER DELETE ON "edgv_edf_edif_agropec_ext_vegetal_pesca_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_agropec_ext_vegetal_pesca_p'); END ;

CREATE TABLE edgv_edf_edif_agropec_ext_vegetal_pesca_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifagropec smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_agropec_ext_vegetal_pesca_a_tipoedifagropec_check CHECK ((tipoedifagropec = 0) OR (tipoedifagropec = 4) OR (tipoedifagropec = 12) OR (tipoedifagropec = 13) OR (tipoedifagropec = 14) OR (tipoedifagropec = 15) OR (tipoedifagropec = 16) OR (tipoedifagropec = 17) OR (tipoedifagropec = 18) OR (tipoedifagropec = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_agropec_ext_vegetal_pesca_a', 'features','edgv_edf_edif_agropec_ext_vegetal_pesca_a', 'Camada edf_edif_agropec_ext_vegetal_pesca_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_agropec_ext_vegetal_pesca_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_agropec_ext_vegetal_pesca_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_agropec_ext_vegetal_pesca_a" AFTER INSERT ON "edgv_edf_edif_agropec_ext_vegetal_pesca_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_agropec_ext_vegetal_pesca_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_agropec_ext_vegetal_pesca_a" AFTER DELETE ON "edgv_edf_edif_agropec_ext_vegetal_pesca_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_agropec_ext_vegetal_pesca_a'); END ;

CREATE TABLE edgv_edf_edif_constr_aeroportuaria_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifaero smallint NOT NULL,
	 jurisdicao smallint,
	 concessionaria varchar(100),
	 geom MultiPoint,
	 CONSTRAINT edf_edif_constr_aeroportuaria_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_p_tipoedifaero_check CHECK ((tipoedifaero = 0) OR (tipoedifaero = 15) OR (tipoedifaero = 26) OR (tipoedifaero = 27) OR (tipoedifaero = 28) OR (tipoedifaero = 29) OR (tipoedifaero = 30) OR (tipoedifaero = 99)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_p_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_constr_aeroportuaria_p', 'features','edgv_edf_edif_constr_aeroportuaria_p', 'Camada edf_edif_constr_aeroportuaria_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_constr_aeroportuaria_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_constr_aeroportuaria_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_constr_aeroportuaria_p" AFTER INSERT ON "edgv_edf_edif_constr_aeroportuaria_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_aeroportuaria_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_constr_aeroportuaria_p" AFTER DELETE ON "edgv_edf_edif_constr_aeroportuaria_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_aeroportuaria_p'); END ;

CREATE TABLE edgv_edf_edif_constr_aeroportuaria_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifaero smallint NOT NULL,
	 jurisdicao smallint,
	 concessionaria varchar(100),
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_constr_aeroportuaria_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_a_tipoedifaero_check CHECK ((tipoedifaero = 0) OR (tipoedifaero = 15) OR (tipoedifaero = 26) OR (tipoedifaero = 27) OR (tipoedifaero = 28) OR (tipoedifaero = 29) OR (tipoedifaero = 30) OR (tipoedifaero = 99)),
	 CONSTRAINT edf_edif_constr_aeroportuaria_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_constr_aeroportuaria_a', 'features','edgv_edf_edif_constr_aeroportuaria_a', 'Camada edf_edif_constr_aeroportuaria_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_constr_aeroportuaria_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_constr_aeroportuaria_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_constr_aeroportuaria_a" AFTER INSERT ON "edgv_edf_edif_constr_aeroportuaria_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_aeroportuaria_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_constr_aeroportuaria_a" AFTER DELETE ON "edgv_edf_edif_constr_aeroportuaria_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_aeroportuaria_a'); END ;

CREATE TABLE edgv_edf_banheiro_publico_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_banheiro_publico_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_banheiro_publico_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_banheiro_publico_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_banheiro_publico_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_banheiro_publico_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_banheiro_publico_p', 'features','edgv_edf_banheiro_publico_p', 'Camada edf_banheiro_publico_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_banheiro_publico_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_banheiro_publico_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_banheiro_publico_p" AFTER INSERT ON "edgv_edf_banheiro_publico_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_banheiro_publico_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_banheiro_publico_p" AFTER DELETE ON "edgv_edf_banheiro_publico_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_banheiro_publico_p'); END ;

CREATE TABLE edgv_edf_banheiro_publico_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_banheiro_publico_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_banheiro_publico_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_banheiro_publico_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_banheiro_publico_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_banheiro_publico_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_banheiro_publico_a', 'features','edgv_edf_banheiro_publico_a', 'Camada edf_banheiro_publico_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_banheiro_publico_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_banheiro_publico_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_banheiro_publico_a" AFTER INSERT ON "edgv_edf_banheiro_publico_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_banheiro_publico_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_banheiro_publico_a" AFTER DELETE ON "edgv_edf_banheiro_publico_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_banheiro_publico_a'); END ;

CREATE TABLE edgv_edf_edif_metro_ferroviaria_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifmetroferrov smallint NOT NULL,
	 jurisdicao smallint,
	 concessionaria varchar(100),
	 geom MultiPoint,
	 CONSTRAINT edf_edif_metro_ferroviaria_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_metro_ferroviaria_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_metro_ferroviaria_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_metro_ferroviaria_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_metro_ferroviaria_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_metro_ferroviaria_p_tipoedifmetroferrov_check CHECK ((tipoedifmetroferrov = 0) OR (tipoedifmetroferrov = 15) OR (tipoedifmetroferrov = 16) OR (tipoedifmetroferrov = 17) OR (tipoedifmetroferrov = 18) OR (tipoedifmetroferrov = 19) OR (tipoedifmetroferrov = 20) OR (tipoedifmetroferrov = 99)),
	 CONSTRAINT edf_edif_metro_ferroviaria_p_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_metro_ferroviaria_p', 'features','edgv_edf_edif_metro_ferroviaria_p', 'Camada edf_edif_metro_ferroviaria_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_metro_ferroviaria_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_metro_ferroviaria_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_metro_ferroviaria_p" AFTER INSERT ON "edgv_edf_edif_metro_ferroviaria_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_metro_ferroviaria_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_metro_ferroviaria_p" AFTER DELETE ON "edgv_edf_edif_metro_ferroviaria_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_metro_ferroviaria_p'); END ;

CREATE TABLE edgv_edf_edif_metro_ferroviaria_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifmetroferrov smallint NOT NULL,
	 jurisdicao smallint,
	 concessionaria varchar(100),
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_metro_ferroviaria_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_metro_ferroviaria_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_metro_ferroviaria_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_metro_ferroviaria_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_metro_ferroviaria_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_metro_ferroviaria_a_tipoedifmetroferrov_check CHECK ((tipoedifmetroferrov = 0) OR (tipoedifmetroferrov = 15) OR (tipoedifmetroferrov = 16) OR (tipoedifmetroferrov = 17) OR (tipoedifmetroferrov = 18) OR (tipoedifmetroferrov = 19) OR (tipoedifmetroferrov = 20) OR (tipoedifmetroferrov = 99)),
	 CONSTRAINT edf_edif_metro_ferroviaria_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_metro_ferroviaria_a', 'features','edgv_edf_edif_metro_ferroviaria_a', 'Camada edf_edif_metro_ferroviaria_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_metro_ferroviaria_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_metro_ferroviaria_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_metro_ferroviaria_a" AFTER INSERT ON "edgv_edf_edif_metro_ferroviaria_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_metro_ferroviaria_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_metro_ferroviaria_a" AFTER DELETE ON "edgv_edf_edif_metro_ferroviaria_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_metro_ferroviaria_a'); END ;

CREATE TABLE edgv_edf_edif_comerc_serv_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifcomercserv smallint NOT NULL,
	 finalidade smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_comerc_serv_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_comerc_serv_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_comerc_serv_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_comerc_serv_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_comerc_serv_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_comerc_serv_p_tipoedifcomercserv_check CHECK ((tipoedifcomercserv = 0) OR (tipoedifcomercserv = 3) OR (tipoedifcomercserv = 4) OR (tipoedifcomercserv = 5) OR (tipoedifcomercserv = 6) OR (tipoedifcomercserv = 7) OR (tipoedifcomercserv = 8) OR (tipoedifcomercserv = 9) OR (tipoedifcomercserv = 10) OR (tipoedifcomercserv = 11) OR (tipoedifcomercserv = 12) OR (tipoedifcomercserv = 13) OR (tipoedifcomercserv = 14) OR (tipoedifcomercserv = 15) OR (tipoedifcomercserv = 16) OR (tipoedifcomercserv = 17) OR (tipoedifcomercserv = 18) OR (tipoedifcomercserv = 19) OR (tipoedifcomercserv = 20) OR (tipoedifcomercserv = 21) OR (tipoedifcomercserv = 22) OR (tipoedifcomercserv = 23) OR (tipoedifcomercserv = 24) OR (tipoedifcomercserv = 25) OR (tipoedifcomercserv = 26) OR (tipoedifcomercserv = 99)),
	 CONSTRAINT edf_edif_comerc_serv_p_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 4) OR (finalidade = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_comerc_serv_p', 'features','edgv_edf_edif_comerc_serv_p', 'Camada edf_edif_comerc_serv_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_comerc_serv_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_comerc_serv_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_comerc_serv_p" AFTER INSERT ON "edgv_edf_edif_comerc_serv_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_comerc_serv_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_comerc_serv_p" AFTER DELETE ON "edgv_edf_edif_comerc_serv_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_comerc_serv_p'); END ;

CREATE TABLE edgv_edf_edif_comerc_serv_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifcomercserv smallint NOT NULL,
	 finalidade smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_comerc_serv_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_comerc_serv_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_comerc_serv_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_comerc_serv_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_comerc_serv_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_comerc_serv_a_tipoedifcomercserv_check CHECK ((tipoedifcomercserv = 0) OR (tipoedifcomercserv = 3) OR (tipoedifcomercserv = 4) OR (tipoedifcomercserv = 5) OR (tipoedifcomercserv = 6) OR (tipoedifcomercserv = 7) OR (tipoedifcomercserv = 8) OR (tipoedifcomercserv = 9) OR (tipoedifcomercserv = 10) OR (tipoedifcomercserv = 11) OR (tipoedifcomercserv = 12) OR (tipoedifcomercserv = 13) OR (tipoedifcomercserv = 14) OR (tipoedifcomercserv = 15) OR (tipoedifcomercserv = 16) OR (tipoedifcomercserv = 17) OR (tipoedifcomercserv = 18) OR (tipoedifcomercserv = 19) OR (tipoedifcomercserv = 20) OR (tipoedifcomercserv = 21) OR (tipoedifcomercserv = 22) OR (tipoedifcomercserv = 23) OR (tipoedifcomercserv = 24) OR (tipoedifcomercserv = 25) OR (tipoedifcomercserv = 26) OR (tipoedifcomercserv = 99)),
	 CONSTRAINT edf_edif_comerc_serv_a_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 4) OR (finalidade = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_comerc_serv_a', 'features','edgv_edf_edif_comerc_serv_a', 'Camada edf_edif_comerc_serv_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_comerc_serv_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_comerc_serv_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_comerc_serv_a" AFTER INSERT ON "edgv_edf_edif_comerc_serv_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_comerc_serv_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_comerc_serv_a" AFTER DELETE ON "edgv_edf_edif_comerc_serv_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_comerc_serv_a'); END ;

CREATE TABLE edgv_edf_edificacao_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edificacao_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edificacao_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edificacao_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edificacao_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edificacao_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edificacao_p', 'features','edgv_edf_edificacao_p', 'Camada edf_edificacao_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edificacao_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edificacao_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edificacao_p" AFTER INSERT ON "edgv_edf_edificacao_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edificacao_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edificacao_p" AFTER DELETE ON "edgv_edf_edificacao_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edificacao_p'); END ;

CREATE TABLE edgv_edf_edificacao_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edificacao_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edificacao_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edificacao_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edificacao_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edificacao_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edificacao_a', 'features','edgv_edf_edificacao_a', 'Camada edf_edificacao_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edificacao_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edificacao_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edificacao_a" AFTER INSERT ON "edgv_edf_edificacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edificacao_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edificacao_a" AFTER DELETE ON "edgv_edf_edificacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edificacao_a'); END ;

CREATE TABLE edgv_edf_edif_saude_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 nivelatencao smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_saude_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_saude_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_saude_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_saude_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_saude_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_saude_p_nivelatencao_check CHECK ((nivelatencao = 5) OR (nivelatencao = 6) OR (nivelatencao = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_saude_p', 'features','edgv_edf_edif_saude_p', 'Camada edf_edif_saude_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_saude_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_saude_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_saude_p" AFTER INSERT ON "edgv_edf_edif_saude_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_saude_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_saude_p" AFTER DELETE ON "edgv_edf_edif_saude_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_saude_p'); END ;

CREATE TABLE edgv_edf_edif_saude_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 nivelatencao smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_saude_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_saude_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_saude_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_saude_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_saude_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_saude_a_nivelatencao_check CHECK ((nivelatencao = 5) OR (nivelatencao = 6) OR (nivelatencao = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_saude_a', 'features','edgv_edf_edif_saude_a', 'Camada edf_edif_saude_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_saude_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_saude_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_saude_a" AFTER INSERT ON "edgv_edf_edif_saude_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_saude_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_saude_a" AFTER DELETE ON "edgv_edf_edif_saude_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_saude_a'); END ;

CREATE TABLE edgv_edf_posto_guarda_municipal_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoedifpubcivil smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_posto_guarda_municipal_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_posto_guarda_municipal_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_posto_guarda_municipal_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_posto_guarda_municipal_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_posto_guarda_municipal_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_posto_guarda_municipal_p_tipousoedif_check CHECK ((tipousoedif = 5)),
	 CONSTRAINT edf_posto_guarda_municipal_p_jurisdicao_check CHECK ((jurisdicao = 3)),
	 CONSTRAINT edf_posto_guarda_municipal_p_tipoedifpubcivil_check CHECK ((tipoedifpubcivil = 1))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_posto_guarda_municipal_p', 'features','edgv_edf_posto_guarda_municipal_p', 'Camada edf_posto_guarda_municipal_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_posto_guarda_municipal_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_posto_guarda_municipal_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_posto_guarda_municipal_p" AFTER INSERT ON "edgv_edf_posto_guarda_municipal_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_posto_guarda_municipal_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_posto_guarda_municipal_p" AFTER DELETE ON "edgv_edf_posto_guarda_municipal_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_posto_guarda_municipal_p'); END ;

CREATE TABLE edgv_edf_posto_guarda_municipal_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoedifpubcivil smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_posto_guarda_municipal_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_posto_guarda_municipal_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_posto_guarda_municipal_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_posto_guarda_municipal_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_posto_guarda_municipal_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_posto_guarda_municipal_a_tipousoedif_check CHECK ((tipousoedif = 5)),
	 CONSTRAINT edf_posto_guarda_municipal_a_jurisdicao_check CHECK ((jurisdicao = 3)),
	 CONSTRAINT edf_posto_guarda_municipal_a_tipoedifpubcivil_check CHECK ((tipoedifpubcivil = 1))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_posto_guarda_municipal_a', 'features','edgv_edf_posto_guarda_municipal_a', 'Camada edf_posto_guarda_municipal_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_posto_guarda_municipal_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_posto_guarda_municipal_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_posto_guarda_municipal_a" AFTER INSERT ON "edgv_edf_posto_guarda_municipal_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_posto_guarda_municipal_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_posto_guarda_municipal_a" AFTER DELETE ON "edgv_edf_posto_guarda_municipal_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_posto_guarda_municipal_a'); END ;

CREATE TABLE edgv_edf_edif_abast_agua_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifabast smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_abast_agua_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_abast_agua_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_abast_agua_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_abast_agua_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_abast_agua_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_abast_agua_p_tipoedifabast_check CHECK ((tipoedifabast = 0) OR (tipoedifabast = 1) OR (tipoedifabast = 2) OR (tipoedifabast = 3) OR (tipoedifabast = 4) OR (tipoedifabast = 98) OR (tipoedifabast = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_abast_agua_p', 'features','edgv_edf_edif_abast_agua_p', 'Camada edf_edif_abast_agua_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_abast_agua_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_abast_agua_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_abast_agua_p" AFTER INSERT ON "edgv_edf_edif_abast_agua_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_abast_agua_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_abast_agua_p" AFTER DELETE ON "edgv_edf_edif_abast_agua_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_abast_agua_p'); END ;

CREATE TABLE edgv_edf_edif_abast_agua_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifabast smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_abast_agua_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_abast_agua_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_abast_agua_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_abast_agua_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_abast_agua_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_abast_agua_a_tipoedifabast_check CHECK ((tipoedifabast = 0) OR (tipoedifabast = 1) OR (tipoedifabast = 2) OR (tipoedifabast = 3) OR (tipoedifabast = 4) OR (tipoedifabast = 98) OR (tipoedifabast = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_abast_agua_a', 'features','edgv_edf_edif_abast_agua_a', 'Camada edf_edif_abast_agua_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_abast_agua_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_abast_agua_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_abast_agua_a" AFTER INSERT ON "edgv_edf_edif_abast_agua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_abast_agua_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_abast_agua_a" AFTER DELETE ON "edgv_edf_edif_abast_agua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_abast_agua_a'); END ;

CREATE TABLE edgv_edf_posto_fiscal_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoedifpubcivil smallint NOT NULL,
	 tipopostofisc smallint NOT NULL,
	 concessionaria varchar(100),
	 geom MultiPoint,
	 CONSTRAINT edf_posto_fiscal_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_posto_fiscal_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_posto_fiscal_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_posto_fiscal_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_posto_fiscal_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_posto_fiscal_p_tipousoedif_check CHECK ((tipousoedif = 0) OR (tipousoedif = 1) OR (tipousoedif = 2) OR (tipousoedif = 5) OR (tipousoedif = 6) OR (tipousoedif = 99)),
	 CONSTRAINT edf_posto_fiscal_p_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT edf_posto_fiscal_p_tipoedifpubcivil_check CHECK ((tipoedifpubcivil = 99)),
	 CONSTRAINT edf_posto_fiscal_p_tipopostofisc_check CHECK ((tipopostofisc = 0) OR (tipopostofisc = 10) OR (tipopostofisc = 12) OR (tipopostofisc = 13) OR (tipopostofisc = 98) OR (tipopostofisc = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_posto_fiscal_p', 'features','edgv_edf_posto_fiscal_p', 'Camada edf_posto_fiscal_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_posto_fiscal_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_posto_fiscal_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_posto_fiscal_p" AFTER INSERT ON "edgv_edf_posto_fiscal_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_posto_fiscal_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_posto_fiscal_p" AFTER DELETE ON "edgv_edf_posto_fiscal_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_posto_fiscal_p'); END ;

CREATE TABLE edgv_edf_posto_fiscal_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoedifpubcivil smallint NOT NULL,
	 tipopostofisc smallint NOT NULL,
	 concessionaria varchar(100),
	 geom MultiPolygon,
	 CONSTRAINT edf_posto_fiscal_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_posto_fiscal_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_posto_fiscal_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_posto_fiscal_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_posto_fiscal_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_posto_fiscal_a_tipousoedif_check CHECK ((tipousoedif = 0) OR (tipousoedif = 1) OR (tipousoedif = 2) OR (tipousoedif = 5) OR (tipousoedif = 6) OR (tipousoedif = 99)),
	 CONSTRAINT edf_posto_fiscal_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT edf_posto_fiscal_a_tipoedifpubcivil_check CHECK ((tipoedifpubcivil = 99)),
	 CONSTRAINT edf_posto_fiscal_a_tipopostofisc_check CHECK ((tipopostofisc = 0) OR (tipopostofisc = 10) OR (tipopostofisc = 12) OR (tipopostofisc = 13) OR (tipopostofisc = 98) OR (tipopostofisc = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_posto_fiscal_a', 'features','edgv_edf_posto_fiscal_a', 'Camada edf_posto_fiscal_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_posto_fiscal_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_posto_fiscal_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_posto_fiscal_a" AFTER INSERT ON "edgv_edf_posto_fiscal_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_posto_fiscal_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_posto_fiscal_a" AFTER DELETE ON "edgv_edf_posto_fiscal_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_posto_fiscal_a'); END ;

CREATE TABLE edgv_edf_edif_religiosa_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifrelig smallint NOT NULL,
	 ensino smallint NOT NULL,
	 religiao varchar(100),
	 crista boolean NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_religiosa_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_religiosa_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_religiosa_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_religiosa_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_religiosa_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_religiosa_p_tipoedifrelig_check CHECK ((tipoedifrelig = 0) OR (tipoedifrelig = 1) OR (tipoedifrelig = 2) OR (tipoedifrelig = 3) OR (tipoedifrelig = 4) OR (tipoedifrelig = 5) OR (tipoedifrelig = 6) OR (tipoedifrelig = 7) OR (tipoedifrelig = 8) OR (tipoedifrelig = 9) OR (tipoedifrelig = 10) OR (tipoedifrelig = 99)),
	 CONSTRAINT edf_edif_religiosa_p_ensino_check CHECK ((ensino = 0) OR (ensino = 1) OR (ensino = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_religiosa_p', 'features','edgv_edf_edif_religiosa_p', 'Camada edf_edif_religiosa_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_religiosa_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_religiosa_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_religiosa_p" AFTER INSERT ON "edgv_edf_edif_religiosa_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_religiosa_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_religiosa_p" AFTER DELETE ON "edgv_edf_edif_religiosa_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_religiosa_p'); END ;

CREATE TABLE edgv_edf_edif_religiosa_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifrelig smallint NOT NULL,
	 ensino smallint NOT NULL,
	 religiao varchar(100),
	 crista boolean NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_religiosa_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_religiosa_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_religiosa_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_religiosa_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_religiosa_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_religiosa_a_tipoedifrelig_check CHECK ((tipoedifrelig = 0) OR (tipoedifrelig = 1) OR (tipoedifrelig = 2) OR (tipoedifrelig = 3) OR (tipoedifrelig = 4) OR (tipoedifrelig = 5) OR (tipoedifrelig = 6) OR (tipoedifrelig = 7) OR (tipoedifrelig = 8) OR (tipoedifrelig = 9) OR (tipoedifrelig = 10) OR (tipoedifrelig = 99)),
	 CONSTRAINT edf_edif_religiosa_a_ensino_check CHECK ((ensino = 0) OR (ensino = 1) OR (ensino = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_religiosa_a', 'features','edgv_edf_edif_religiosa_a', 'Camada edf_edif_religiosa_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_religiosa_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_religiosa_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_religiosa_a" AFTER INSERT ON "edgv_edf_edif_religiosa_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_religiosa_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_religiosa_a" AFTER DELETE ON "edgv_edf_edif_religiosa_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_religiosa_a'); END ;

CREATE TABLE edgv_edf_edif_ext_mineral_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_ext_mineral_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_ext_mineral_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_ext_mineral_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_ext_mineral_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_ext_mineral_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_ext_mineral_p', 'features','edgv_edf_edif_ext_mineral_p', 'Camada edf_edif_ext_mineral_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_ext_mineral_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_ext_mineral_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_ext_mineral_p" AFTER INSERT ON "edgv_edf_edif_ext_mineral_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_ext_mineral_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_ext_mineral_p" AFTER DELETE ON "edgv_edf_edif_ext_mineral_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_ext_mineral_p'); END ;

CREATE TABLE edgv_edf_edif_ext_mineral_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_ext_mineral_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_ext_mineral_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_ext_mineral_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_ext_mineral_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_ext_mineral_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_ext_mineral_a', 'features','edgv_edf_edif_ext_mineral_a', 'Camada edf_edif_ext_mineral_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_ext_mineral_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_ext_mineral_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_ext_mineral_a" AFTER INSERT ON "edgv_edf_edif_ext_mineral_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_ext_mineral_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_ext_mineral_a" AFTER DELETE ON "edgv_edf_edif_ext_mineral_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_ext_mineral_a'); END ;

CREATE TABLE edgv_edf_edif_constr_est_med_fen_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_constr_est_med_fen_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_constr_est_med_fen_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_constr_est_med_fen_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_constr_est_med_fen_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_constr_est_med_fen_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_constr_est_med_fen_p', 'features','edgv_edf_edif_constr_est_med_fen_p', 'Camada edf_edif_constr_est_med_fen_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_constr_est_med_fen_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_constr_est_med_fen_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_constr_est_med_fen_p" AFTER INSERT ON "edgv_edf_edif_constr_est_med_fen_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_est_med_fen_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_constr_est_med_fen_p" AFTER DELETE ON "edgv_edf_edif_constr_est_med_fen_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_est_med_fen_p'); END ;

CREATE TABLE edgv_edf_edif_constr_est_med_fen_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_constr_est_med_fen_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_constr_est_med_fen_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_constr_est_med_fen_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_constr_est_med_fen_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_constr_est_med_fen_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_constr_est_med_fen_a', 'features','edgv_edf_edif_constr_est_med_fen_a', 'Camada edf_edif_constr_est_med_fen_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_constr_est_med_fen_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_constr_est_med_fen_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_constr_est_med_fen_a" AFTER INSERT ON "edgv_edf_edif_constr_est_med_fen_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_est_med_fen_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_constr_est_med_fen_a" AFTER DELETE ON "edgv_edf_edif_constr_est_med_fen_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_est_med_fen_a'); END ;

CREATE TABLE edgv_edf_edif_ensino_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_ensino_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_ensino_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_ensino_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_ensino_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_ensino_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_ensino_p', 'features','edgv_edf_edif_ensino_p', 'Camada edf_edif_ensino_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_ensino_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_ensino_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_ensino_p" AFTER INSERT ON "edgv_edf_edif_ensino_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_ensino_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_ensino_p" AFTER DELETE ON "edgv_edf_edif_ensino_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_ensino_p'); END ;

CREATE TABLE edgv_edf_edif_ensino_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_ensino_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_ensino_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_ensino_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_ensino_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_ensino_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_ensino_a', 'features','edgv_edf_edif_ensino_a', 'Camada edf_edif_ensino_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_ensino_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_ensino_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_ensino_a" AFTER INSERT ON "edgv_edf_edif_ensino_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_ensino_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_ensino_a" AFTER DELETE ON "edgv_edf_edif_ensino_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_ensino_a'); END ;

CREATE TABLE edgv_edf_posto_combustivel_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifcomercserv smallint NOT NULL,
	 finalidade smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_posto_combustivel_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_posto_combustivel_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_posto_combustivel_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_posto_combustivel_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_posto_combustivel_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_posto_combustivel_p_tipoedifcomercserv_check CHECK ((tipoedifcomercserv = 19)),
	 CONSTRAINT edf_posto_combustivel_p_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 4) OR (finalidade = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_posto_combustivel_p', 'features','edgv_edf_posto_combustivel_p', 'Camada edf_posto_combustivel_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_posto_combustivel_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_posto_combustivel_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_posto_combustivel_p" AFTER INSERT ON "edgv_edf_posto_combustivel_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_posto_combustivel_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_posto_combustivel_p" AFTER DELETE ON "edgv_edf_posto_combustivel_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_posto_combustivel_p'); END ;

CREATE TABLE edgv_edf_posto_combustivel_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifcomercserv smallint NOT NULL,
	 finalidade smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_posto_combustivel_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_posto_combustivel_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_posto_combustivel_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_posto_combustivel_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_posto_combustivel_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_posto_combustivel_a_tipoedifcomercserv_check CHECK ((tipoedifcomercserv = 19)),
	 CONSTRAINT edf_posto_combustivel_a_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 4) OR (finalidade = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_posto_combustivel_a', 'features','edgv_edf_posto_combustivel_a', 'Camada edf_posto_combustivel_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_posto_combustivel_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_posto_combustivel_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_posto_combustivel_a" AFTER INSERT ON "edgv_edf_posto_combustivel_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_posto_combustivel_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_posto_combustivel_a" AFTER DELETE ON "edgv_edf_posto_combustivel_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_posto_combustivel_a'); END ;

CREATE TABLE edgv_edf_posto_policia_militar_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoinstalmilitar smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_posto_policia_militar_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_posto_policia_militar_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_posto_policia_militar_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_posto_policia_militar_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_posto_policia_militar_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_posto_policia_militar_p_tipousoedif_check CHECK ((tipousoedif = 6)),
	 CONSTRAINT edf_posto_policia_militar_p_jurisdicao_check CHECK ((jurisdicao = 2)),
	 CONSTRAINT edf_posto_policia_militar_p_tipoinstalmilitar_check CHECK ((tipoinstalmilitar = 14))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_posto_policia_militar_p', 'features','edgv_edf_posto_policia_militar_p', 'Camada edf_posto_policia_militar_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_posto_policia_militar_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_posto_policia_militar_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_posto_policia_militar_p" AFTER INSERT ON "edgv_edf_posto_policia_militar_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_posto_policia_militar_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_posto_policia_militar_p" AFTER DELETE ON "edgv_edf_posto_policia_militar_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_posto_policia_militar_p'); END ;

CREATE TABLE edgv_edf_posto_policia_militar_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoinstalmilitar smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_posto_policia_militar_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_posto_policia_militar_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_posto_policia_militar_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_posto_policia_militar_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_posto_policia_militar_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_posto_policia_militar_a_tipousoedif_check CHECK ((tipousoedif = 6)),
	 CONSTRAINT edf_posto_policia_militar_a_jurisdicao_check CHECK ((jurisdicao = 2)),
	 CONSTRAINT edf_posto_policia_militar_a_tipoinstalmilitar_check CHECK ((tipoinstalmilitar = 14))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_posto_policia_militar_a', 'features','edgv_edf_posto_policia_militar_a', 'Camada edf_posto_policia_militar_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_posto_policia_militar_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_posto_policia_militar_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_posto_policia_militar_a" AFTER INSERT ON "edgv_edf_posto_policia_militar_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_posto_policia_militar_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_posto_policia_militar_a" AFTER DELETE ON "edgv_edf_posto_policia_militar_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_posto_policia_militar_a'); END ;

CREATE TABLE edgv_edf_hab_indigena_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 coletiva smallint NOT NULL,
	 isolada smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_hab_indigena_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_hab_indigena_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_hab_indigena_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_hab_indigena_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_hab_indigena_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_hab_indigena_p_coletiva_check CHECK ((coletiva = 0) OR (coletiva = 1) OR (coletiva = 2)),
	 CONSTRAINT edf_hab_indigena_p_isolada_check CHECK ((isolada = 0) OR (isolada = 1) OR (isolada = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_hab_indigena_p', 'features','edgv_edf_hab_indigena_p', 'Camada edf_hab_indigena_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_hab_indigena_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_hab_indigena_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_hab_indigena_p" AFTER INSERT ON "edgv_edf_hab_indigena_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_hab_indigena_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_hab_indigena_p" AFTER DELETE ON "edgv_edf_hab_indigena_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_hab_indigena_p'); END ;

CREATE TABLE edgv_edf_hab_indigena_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 coletiva smallint NOT NULL,
	 isolada smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_hab_indigena_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_hab_indigena_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_hab_indigena_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_hab_indigena_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_hab_indigena_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_hab_indigena_a_coletiva_check CHECK ((coletiva = 0) OR (coletiva = 1) OR (coletiva = 2)),
	 CONSTRAINT edf_hab_indigena_a_isolada_check CHECK ((isolada = 0) OR (isolada = 1) OR (isolada = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_hab_indigena_a', 'features','edgv_edf_hab_indigena_a', 'Camada edf_hab_indigena_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_hab_indigena_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_hab_indigena_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_hab_indigena_a" AFTER INSERT ON "edgv_edf_hab_indigena_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_hab_indigena_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_hab_indigena_a" AFTER DELETE ON "edgv_edf_hab_indigena_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_hab_indigena_a'); END ;

CREATE TABLE edgv_edf_edif_desenv_social_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 sigla varchar(80),
	 codequipdesenvsocial varchar(80),
	 localizacaoequipdesenvsocial smallint,
	 tipoequipdesenvsocial smallint,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_desenv_social_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_desenv_social_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_desenv_social_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_desenv_social_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_desenv_social_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_desenv_social_p_localizacaoequipdesenvsocial_check CHECK ((localizacaoequipdesenvsocial = 0) OR (localizacaoequipdesenvsocial = 1) OR (localizacaoequipdesenvsocial = 2) OR (localizacaoequipdesenvsocial = 3) OR (localizacaoequipdesenvsocial = 4) OR (localizacaoequipdesenvsocial = 5) OR (localizacaoequipdesenvsocial = 6) OR (localizacaoequipdesenvsocial = 7)),
	 CONSTRAINT edf_edif_desenv_social_p_tipoequipdesenvsocial_check CHECK ((tipoequipdesenvsocial = 0) OR (tipoequipdesenvsocial = 1) OR (tipoequipdesenvsocial = 2) OR (tipoequipdesenvsocial = 3) OR (tipoequipdesenvsocial = 4) OR (tipoequipdesenvsocial = 5) OR (tipoequipdesenvsocial = 6) OR (tipoequipdesenvsocial = 7) OR (tipoequipdesenvsocial = 8) OR (tipoequipdesenvsocial = 9) OR (tipoequipdesenvsocial = 10) OR (tipoequipdesenvsocial = 11) OR (tipoequipdesenvsocial = 12) OR (tipoequipdesenvsocial = 13) OR (tipoequipdesenvsocial = 14) OR (tipoequipdesenvsocial = 15) OR (tipoequipdesenvsocial = 16) OR (tipoequipdesenvsocial = 17) OR (tipoequipdesenvsocial = 18) OR (tipoequipdesenvsocial = 19) OR (tipoequipdesenvsocial = 20) OR (tipoequipdesenvsocial = 21) OR (tipoequipdesenvsocial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_desenv_social_p', 'features','edgv_edf_edif_desenv_social_p', 'Camada edf_edif_desenv_social_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_desenv_social_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_desenv_social_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_desenv_social_p" AFTER INSERT ON "edgv_edf_edif_desenv_social_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_desenv_social_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_desenv_social_p" AFTER DELETE ON "edgv_edf_edif_desenv_social_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_desenv_social_p'); END ;

CREATE TABLE edgv_edf_edif_desenv_social_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 sigla varchar(80),
	 codequipdesenvsocial varchar(80),
	 localizacaoequipdesenvsocial smallint,
	 tipoequipdesenvsocial smallint,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_desenv_social_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_desenv_social_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_desenv_social_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_desenv_social_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_desenv_social_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_desenv_social_a_localizacaoequipdesenvsocial_check CHECK ((localizacaoequipdesenvsocial = 0) OR (localizacaoequipdesenvsocial = 1) OR (localizacaoequipdesenvsocial = 2) OR (localizacaoequipdesenvsocial = 3) OR (localizacaoequipdesenvsocial = 4) OR (localizacaoequipdesenvsocial = 5) OR (localizacaoequipdesenvsocial = 6) OR (localizacaoequipdesenvsocial = 7)),
	 CONSTRAINT edf_edif_desenv_social_a_tipoequipdesenvsocial_check CHECK ((tipoequipdesenvsocial = 0) OR (tipoequipdesenvsocial = 1) OR (tipoequipdesenvsocial = 2) OR (tipoequipdesenvsocial = 3) OR (tipoequipdesenvsocial = 4) OR (tipoequipdesenvsocial = 5) OR (tipoequipdesenvsocial = 6) OR (tipoequipdesenvsocial = 7) OR (tipoequipdesenvsocial = 8) OR (tipoequipdesenvsocial = 9) OR (tipoequipdesenvsocial = 10) OR (tipoequipdesenvsocial = 11) OR (tipoequipdesenvsocial = 12) OR (tipoequipdesenvsocial = 13) OR (tipoequipdesenvsocial = 14) OR (tipoequipdesenvsocial = 15) OR (tipoequipdesenvsocial = 16) OR (tipoequipdesenvsocial = 17) OR (tipoequipdesenvsocial = 18) OR (tipoequipdesenvsocial = 19) OR (tipoequipdesenvsocial = 20) OR (tipoequipdesenvsocial = 21) OR (tipoequipdesenvsocial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_desenv_social_a', 'features','edgv_edf_edif_desenv_social_a', 'Camada edf_edif_desenv_social_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_desenv_social_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_desenv_social_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_desenv_social_a" AFTER INSERT ON "edgv_edf_edif_desenv_social_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_desenv_social_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_desenv_social_a" AFTER DELETE ON "edgv_edf_edif_desenv_social_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_desenv_social_a'); END ;

CREATE TABLE edgv_edf_edif_constr_lazer_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoediflazer smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_constr_lazer_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_constr_lazer_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_constr_lazer_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_constr_lazer_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_constr_lazer_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_constr_lazer_p_tipoediflazer_check CHECK ((tipoediflazer = 0) OR (tipoediflazer = 1) OR (tipoediflazer = 2) OR (tipoediflazer = 3) OR (tipoediflazer = 4) OR (tipoediflazer = 5) OR (tipoediflazer = 6) OR (tipoediflazer = 7) OR (tipoediflazer = 8) OR (tipoediflazer = 9) OR (tipoediflazer = 10) OR (tipoediflazer = 11) OR (tipoediflazer = 12) OR (tipoediflazer = 13) OR (tipoediflazer = 14) OR (tipoediflazer = 15) OR (tipoediflazer = 17) OR (tipoediflazer = 18) OR (tipoediflazer = 19) OR (tipoediflazer = 21) OR (tipoediflazer = 22) OR (tipoediflazer = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_constr_lazer_p', 'features','edgv_edf_edif_constr_lazer_p', 'Camada edf_edif_constr_lazer_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_constr_lazer_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_constr_lazer_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_constr_lazer_p" AFTER INSERT ON "edgv_edf_edif_constr_lazer_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_lazer_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_constr_lazer_p" AFTER DELETE ON "edgv_edf_edif_constr_lazer_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_lazer_p'); END ;

CREATE TABLE edgv_edf_edif_constr_lazer_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoediflazer smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_constr_lazer_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_constr_lazer_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_constr_lazer_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_constr_lazer_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_constr_lazer_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_constr_lazer_a_tipoediflazer_check CHECK ((tipoediflazer = 0) OR (tipoediflazer = 1) OR (tipoediflazer = 2) OR (tipoediflazer = 3) OR (tipoediflazer = 4) OR (tipoediflazer = 5) OR (tipoediflazer = 6) OR (tipoediflazer = 7) OR (tipoediflazer = 8) OR (tipoediflazer = 9) OR (tipoediflazer = 10) OR (tipoediflazer = 11) OR (tipoediflazer = 12) OR (tipoediflazer = 13) OR (tipoediflazer = 14) OR (tipoediflazer = 15) OR (tipoediflazer = 17) OR (tipoediflazer = 18) OR (tipoediflazer = 19) OR (tipoediflazer = 21) OR (tipoediflazer = 22) OR (tipoediflazer = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_constr_lazer_a', 'features','edgv_edf_edif_constr_lazer_a', 'Camada edf_edif_constr_lazer_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_constr_lazer_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_constr_lazer_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_constr_lazer_a" AFTER INSERT ON "edgv_edf_edif_constr_lazer_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_lazer_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_constr_lazer_a" AFTER DELETE ON "edgv_edf_edif_constr_lazer_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_lazer_a'); END ;

CREATE TABLE edgv_edf_edif_energia_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifenergia smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_energia_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_energia_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_energia_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_energia_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_energia_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_energia_p_tipoedifenergia_check CHECK ((tipoedifenergia = 0) OR (tipoedifenergia = 1) OR (tipoedifenergia = 2) OR (tipoedifenergia = 3) OR (tipoedifenergia = 4) OR (tipoedifenergia = 5) OR (tipoedifenergia = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_energia_p', 'features','edgv_edf_edif_energia_p', 'Camada edf_edif_energia_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_energia_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_energia_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_energia_p" AFTER INSERT ON "edgv_edf_edif_energia_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_energia_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_energia_p" AFTER DELETE ON "edgv_edf_edif_energia_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_energia_p'); END ;

CREATE TABLE edgv_edf_edif_energia_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifenergia smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_energia_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_energia_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_energia_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_energia_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_energia_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_energia_a_tipoedifenergia_check CHECK ((tipoedifenergia = 0) OR (tipoedifenergia = 1) OR (tipoedifenergia = 2) OR (tipoedifenergia = 3) OR (tipoedifenergia = 4) OR (tipoedifenergia = 5) OR (tipoedifenergia = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_energia_a', 'features','edgv_edf_edif_energia_a', 'Camada edf_edif_energia_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_energia_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_energia_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_energia_a" AFTER INSERT ON "edgv_edf_edif_energia_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_energia_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_energia_a" AFTER DELETE ON "edgv_edf_edif_energia_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_energia_a'); END ;

CREATE TABLE edgv_edf_edif_industrial_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 chamine smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_industrial_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_industrial_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_industrial_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_industrial_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_industrial_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_industrial_p_chamine_check CHECK ((chamine = 0) OR (chamine = 1) OR (chamine = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_industrial_p', 'features','edgv_edf_edif_industrial_p', 'Camada edf_edif_industrial_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_industrial_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_industrial_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_industrial_p" AFTER INSERT ON "edgv_edf_edif_industrial_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_industrial_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_industrial_p" AFTER DELETE ON "edgv_edf_edif_industrial_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_industrial_p'); END ;

CREATE TABLE edgv_edf_edif_industrial_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 chamine smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_industrial_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_industrial_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_industrial_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_industrial_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_industrial_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_industrial_a_chamine_check CHECK ((chamine = 0) OR (chamine = 1) OR (chamine = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_industrial_a', 'features','edgv_edf_edif_industrial_a', 'Camada edf_edif_industrial_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_industrial_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_industrial_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_industrial_a" AFTER INSERT ON "edgv_edf_edif_industrial_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_industrial_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_industrial_a" AFTER DELETE ON "edgv_edf_edif_industrial_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_industrial_a'); END ;

CREATE TABLE edgv_edf_edif_constr_portuaria_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifport smallint NOT NULL,
	 jurisdicao smallint,
	 concessionaria varchar(100),
	 geom MultiPoint,
	 CONSTRAINT edf_edif_constr_portuaria_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_constr_portuaria_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_constr_portuaria_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_constr_portuaria_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_constr_portuaria_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_constr_portuaria_p_tipoedifport_check CHECK ((tipoedifport = 0) OR (tipoedifport = 15) OR (tipoedifport = 26) OR (tipoedifport = 27) OR (tipoedifport = 32) OR (tipoedifport = 33) OR (tipoedifport = 34) OR (tipoedifport = 35) OR (tipoedifport = 36) OR (tipoedifport = 37) OR (tipoedifport = 99)),
	 CONSTRAINT edf_edif_constr_portuaria_p_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_constr_portuaria_p', 'features','edgv_edf_edif_constr_portuaria_p', 'Camada edf_edif_constr_portuaria_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_constr_portuaria_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_constr_portuaria_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_constr_portuaria_p" AFTER INSERT ON "edgv_edf_edif_constr_portuaria_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_portuaria_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_constr_portuaria_p" AFTER DELETE ON "edgv_edf_edif_constr_portuaria_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_portuaria_p'); END ;

CREATE TABLE edgv_edf_edif_constr_portuaria_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifport smallint NOT NULL,
	 jurisdicao smallint,
	 concessionaria varchar(100),
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_constr_portuaria_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_constr_portuaria_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_constr_portuaria_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_constr_portuaria_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_constr_portuaria_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_constr_portuaria_a_tipoedifport_check CHECK ((tipoedifport = 0) OR (tipoedifport = 15) OR (tipoedifport = 26) OR (tipoedifport = 27) OR (tipoedifport = 32) OR (tipoedifport = 33) OR (tipoedifport = 34) OR (tipoedifport = 35) OR (tipoedifport = 36) OR (tipoedifport = 37) OR (tipoedifport = 99)),
	 CONSTRAINT edf_edif_constr_portuaria_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_constr_portuaria_a', 'features','edgv_edf_edif_constr_portuaria_a', 'Camada edf_edif_constr_portuaria_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_constr_portuaria_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_constr_portuaria_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_constr_portuaria_a" AFTER INSERT ON "edgv_edf_edif_constr_portuaria_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_portuaria_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_constr_portuaria_a" AFTER DELETE ON "edgv_edf_edif_constr_portuaria_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_constr_portuaria_a'); END ;

CREATE TABLE edgv_edf_edif_comunic_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifcomunic smallint NOT NULL,
	 modalidade smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_comunic_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_comunic_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_comunic_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_comunic_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_comunic_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_comunic_p_tipoedifcomunic_check CHECK ((tipoedifcomunic = 0) OR (tipoedifcomunic = 1) OR (tipoedifcomunic = 2) OR (tipoedifcomunic = 3) OR (tipoedifcomunic = 4) OR (tipoedifcomunic = 5)),
	 CONSTRAINT edf_edif_comunic_p_modalidade_check CHECK ((modalidade = 0) OR (modalidade = 1) OR (modalidade = 2) OR (modalidade = 3) OR (modalidade = 4) OR (modalidade = 5) OR (modalidade = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_comunic_p', 'features','edgv_edf_edif_comunic_p', 'Camada edf_edif_comunic_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_comunic_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_comunic_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_comunic_p" AFTER INSERT ON "edgv_edf_edif_comunic_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_comunic_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_comunic_p" AFTER DELETE ON "edgv_edf_edif_comunic_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_comunic_p'); END ;

CREATE TABLE edgv_edf_edif_comunic_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifcomunic smallint NOT NULL,
	 modalidade smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_comunic_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_comunic_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_comunic_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_comunic_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_comunic_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_comunic_a_tipoedifcomunic_check CHECK ((tipoedifcomunic = 0) OR (tipoedifcomunic = 1) OR (tipoedifcomunic = 2) OR (tipoedifcomunic = 3) OR (tipoedifcomunic = 4) OR (tipoedifcomunic = 5)),
	 CONSTRAINT edf_edif_comunic_a_modalidade_check CHECK ((modalidade = 0) OR (modalidade = 1) OR (modalidade = 2) OR (modalidade = 3) OR (modalidade = 4) OR (modalidade = 5) OR (modalidade = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_comunic_a', 'features','edgv_edf_edif_comunic_a', 'Camada edf_edif_comunic_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_comunic_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_comunic_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_comunic_a" AFTER INSERT ON "edgv_edf_edif_comunic_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_comunic_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_comunic_a" AFTER DELETE ON "edgv_edf_edif_comunic_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_comunic_a'); END ;

CREATE TABLE edgv_edf_posto_policia_rod_federal_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoedifpubcivil smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_posto_policia_rod_federal_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_posto_policia_rod_federal_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_posto_policia_rod_federal_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_posto_policia_rod_federal_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_posto_policia_rod_federal_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_posto_policia_rod_federal_p_tipousoedif_check CHECK ((tipousoedif = 2)),
	 CONSTRAINT edf_posto_policia_rod_federal_p_jurisdicao_check CHECK ((jurisdicao = 1)),
	 CONSTRAINT edf_posto_policia_rod_federal_p_tipoedifpubcivil_check CHECK ((tipoedifpubcivil = 1))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_posto_policia_rod_federal_p', 'features','edgv_edf_posto_policia_rod_federal_p', 'Camada edf_posto_policia_rod_federal_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_posto_policia_rod_federal_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_posto_policia_rod_federal_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_posto_policia_rod_federal_p" AFTER INSERT ON "edgv_edf_posto_policia_rod_federal_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_posto_policia_rod_federal_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_posto_policia_rod_federal_p" AFTER DELETE ON "edgv_edf_posto_policia_rod_federal_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_posto_policia_rod_federal_p'); END ;

CREATE TABLE edgv_edf_posto_policia_rod_federal_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoedifpubcivil smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_posto_policia_rod_federal_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_posto_policia_rod_federal_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_posto_policia_rod_federal_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_posto_policia_rod_federal_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_posto_policia_rod_federal_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_posto_policia_rod_federal_a_tipousoedif_check CHECK ((tipousoedif = 2)),
	 CONSTRAINT edf_posto_policia_rod_federal_a_jurisdicao_check CHECK ((jurisdicao = 1)),
	 CONSTRAINT edf_posto_policia_rod_federal_a_tipoedifpubcivil_check CHECK ((tipoedifpubcivil = 1))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_posto_policia_rod_federal_a', 'features','edgv_edf_posto_policia_rod_federal_a', 'Camada edf_posto_policia_rod_federal_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_posto_policia_rod_federal_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_posto_policia_rod_federal_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_posto_policia_rod_federal_a" AFTER INSERT ON "edgv_edf_posto_policia_rod_federal_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_posto_policia_rod_federal_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_posto_policia_rod_federal_a" AFTER DELETE ON "edgv_edf_posto_policia_rod_federal_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_posto_policia_rod_federal_a'); END ;

CREATE TABLE edgv_edf_edif_pub_civil_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoedifpubcivil smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_pub_civil_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_pub_civil_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_pub_civil_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_pub_civil_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_pub_civil_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_pub_civil_p_tipousoedif_check CHECK ((tipousoedif = 0) OR (tipousoedif = 1) OR (tipousoedif = 2) OR (tipousoedif = 5) OR (tipousoedif = 6) OR (tipousoedif = 99)),
	 CONSTRAINT edf_edif_pub_civil_p_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT edf_edif_pub_civil_p_tipoedifpubcivil_check CHECK ((tipoedifpubcivil = 0) OR (tipoedifpubcivil = 3) OR (tipoedifpubcivil = 4) OR (tipoedifpubcivil = 5) OR (tipoedifpubcivil = 6) OR (tipoedifpubcivil = 7) OR (tipoedifpubcivil = 8) OR (tipoedifpubcivil = 9) OR (tipoedifpubcivil = 10) OR (tipoedifpubcivil = 12) OR (tipoedifpubcivil = 13) OR (tipoedifpubcivil = 14) OR (tipoedifpubcivil = 15) OR (tipoedifpubcivil = 16) OR (tipoedifpubcivil = 22) OR (tipoedifpubcivil = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_pub_civil_p', 'features','edgv_edf_edif_pub_civil_p', 'Camada edf_edif_pub_civil_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_pub_civil_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_pub_civil_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_pub_civil_p" AFTER INSERT ON "edgv_edf_edif_pub_civil_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_pub_civil_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_pub_civil_p" AFTER DELETE ON "edgv_edf_edif_pub_civil_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_pub_civil_p'); END ;

CREATE TABLE edgv_edf_edif_pub_civil_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoedifpubcivil smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_pub_civil_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_pub_civil_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_pub_civil_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_pub_civil_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_pub_civil_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_pub_civil_a_tipousoedif_check CHECK ((tipousoedif = 0) OR (tipousoedif = 1) OR (tipousoedif = 2) OR (tipousoedif = 5) OR (tipousoedif = 6) OR (tipousoedif = 99)),
	 CONSTRAINT edf_edif_pub_civil_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT edf_edif_pub_civil_a_tipoedifpubcivil_check CHECK ((tipoedifpubcivil = 0) OR (tipoedifpubcivil = 3) OR (tipoedifpubcivil = 4) OR (tipoedifpubcivil = 5) OR (tipoedifpubcivil = 6) OR (tipoedifpubcivil = 7) OR (tipoedifpubcivil = 8) OR (tipoedifpubcivil = 9) OR (tipoedifpubcivil = 10) OR (tipoedifpubcivil = 12) OR (tipoedifpubcivil = 13) OR (tipoedifpubcivil = 14) OR (tipoedifpubcivil = 15) OR (tipoedifpubcivil = 16) OR (tipoedifpubcivil = 22) OR (tipoedifpubcivil = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_pub_civil_a', 'features','edgv_edf_edif_pub_civil_a', 'Camada edf_edif_pub_civil_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_pub_civil_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_pub_civil_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_pub_civil_a" AFTER INSERT ON "edgv_edf_edif_pub_civil_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_pub_civil_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_pub_civil_a" AFTER DELETE ON "edgv_edf_edif_pub_civil_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_pub_civil_a'); END ;

CREATE TABLE edgv_edf_edif_saneamento_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifsaneam smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_saneamento_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_saneamento_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_saneamento_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_saneamento_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_saneamento_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_saneamento_p_tipoedifsaneam_check CHECK ((tipoedifsaneam = 0) OR (tipoedifsaneam = 3) OR (tipoedifsaneam = 5) OR (tipoedifsaneam = 6) OR (tipoedifsaneam = 7) OR (tipoedifsaneam = 8) OR (tipoedifsaneam = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_saneamento_p', 'features','edgv_edf_edif_saneamento_p', 'Camada edf_edif_saneamento_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_saneamento_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_saneamento_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_saneamento_p" AFTER INSERT ON "edgv_edf_edif_saneamento_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_saneamento_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_saneamento_p" AFTER DELETE ON "edgv_edf_edif_saneamento_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_saneamento_p'); END ;

CREATE TABLE edgv_edf_edif_saneamento_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipoedifsaneam smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_saneamento_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_saneamento_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_saneamento_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_saneamento_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_saneamento_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_saneamento_a_tipoedifsaneam_check CHECK ((tipoedifsaneam = 0) OR (tipoedifsaneam = 3) OR (tipoedifsaneam = 5) OR (tipoedifsaneam = 6) OR (tipoedifsaneam = 7) OR (tipoedifsaneam = 8) OR (tipoedifsaneam = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_saneamento_a', 'features','edgv_edf_edif_saneamento_a', 'Camada edf_edif_saneamento_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_saneamento_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_saneamento_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_saneamento_a" AFTER INSERT ON "edgv_edf_edif_saneamento_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_saneamento_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_saneamento_a" AFTER DELETE ON "edgv_edf_edif_saneamento_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_saneamento_a'); END ;

CREATE TABLE edgv_edf_edif_policia_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoedifpubcivil smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_policia_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_policia_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_policia_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_policia_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_policia_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_policia_p_tipousoedif_check CHECK ((tipousoedif = 0) OR (tipousoedif = 2) OR (tipousoedif = 5) OR (tipousoedif = 6)),
	 CONSTRAINT edf_edif_policia_p_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3)),
	 CONSTRAINT edf_edif_policia_p_tipoedifpubcivil_check CHECK ((tipoedifpubcivil = 1) OR (tipoedifpubcivil = 2) OR (tipoedifpubcivil = 11))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_policia_p', 'features','edgv_edf_edif_policia_p', 'Camada edf_edif_policia_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_policia_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_policia_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_policia_p" AFTER INSERT ON "edgv_edf_edif_policia_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_policia_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_policia_p" AFTER DELETE ON "edgv_edf_edif_policia_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_policia_p'); END ;

CREATE TABLE edgv_edf_edif_policia_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoedifpubcivil smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_policia_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_policia_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_policia_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_policia_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_policia_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_policia_a_tipousoedif_check CHECK ((tipousoedif = 0) OR (tipousoedif = 2) OR (tipousoedif = 5) OR (tipousoedif = 6)),
	 CONSTRAINT edf_edif_policia_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3)),
	 CONSTRAINT edf_edif_policia_a_tipoedifpubcivil_check CHECK ((tipoedifpubcivil = 1) OR (tipoedifpubcivil = 2) OR (tipoedifpubcivil = 11))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_policia_a', 'features','edgv_edf_edif_policia_a', 'Camada edf_edif_policia_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_policia_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_policia_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_policia_a" AFTER INSERT ON "edgv_edf_edif_policia_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_policia_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_policia_a" AFTER DELETE ON "edgv_edf_edif_policia_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_policia_a'); END ;

CREATE TABLE edgv_edf_edif_pub_militar_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoinstalmilitar smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_pub_militar_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_pub_militar_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_pub_militar_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_pub_militar_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_pub_militar_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_pub_militar_p_tipousoedif_check CHECK ((tipousoedif = 0) OR (tipousoedif = 2) OR (tipousoedif = 6)),
	 CONSTRAINT edf_edif_pub_militar_p_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 4)),
	 CONSTRAINT edf_edif_pub_militar_p_tipoinstalmilitar_check CHECK ((tipoinstalmilitar = 0) OR (tipoinstalmilitar = 5) OR (tipoinstalmilitar = 6) OR (tipoinstalmilitar = 7) OR (tipoinstalmilitar = 8) OR (tipoinstalmilitar = 9) OR (tipoinstalmilitar = 10) OR (tipoinstalmilitar = 11) OR (tipoinstalmilitar = 12) OR (tipoinstalmilitar = 13) OR (tipoinstalmilitar = 14) OR (tipoinstalmilitar = 15) OR (tipoinstalmilitar = 16) OR (tipoinstalmilitar = 17) OR (tipoinstalmilitar = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_pub_militar_p', 'features','edgv_edf_edif_pub_militar_p', 'Camada edf_edif_pub_militar_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_pub_militar_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_pub_militar_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_pub_militar_p" AFTER INSERT ON "edgv_edf_edif_pub_militar_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_pub_militar_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_pub_militar_p" AFTER DELETE ON "edgv_edf_edif_pub_militar_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_pub_militar_p'); END ;

CREATE TABLE edgv_edf_edif_pub_militar_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 tipousoedif smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 tipoinstalmilitar smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_pub_militar_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_pub_militar_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_pub_militar_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_pub_militar_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_pub_militar_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2)),
	 CONSTRAINT edf_edif_pub_militar_a_tipousoedif_check CHECK ((tipousoedif = 0) OR (tipousoedif = 2) OR (tipousoedif = 6)),
	 CONSTRAINT edf_edif_pub_militar_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 4)),
	 CONSTRAINT edf_edif_pub_militar_a_tipoinstalmilitar_check CHECK ((tipoinstalmilitar = 0) OR (tipoinstalmilitar = 5) OR (tipoinstalmilitar = 6) OR (tipoinstalmilitar = 7) OR (tipoinstalmilitar = 8) OR (tipoinstalmilitar = 9) OR (tipoinstalmilitar = 10) OR (tipoinstalmilitar = 11) OR (tipoinstalmilitar = 12) OR (tipoinstalmilitar = 13) OR (tipoinstalmilitar = 14) OR (tipoinstalmilitar = 15) OR (tipoinstalmilitar = 16) OR (tipoinstalmilitar = 17) OR (tipoinstalmilitar = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_pub_militar_a', 'features','edgv_edf_edif_pub_militar_a', 'Camada edf_edif_pub_militar_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_pub_militar_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_pub_militar_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_pub_militar_a" AFTER INSERT ON "edgv_edf_edif_pub_militar_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_pub_militar_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_pub_militar_a" AFTER DELETE ON "edgv_edf_edif_pub_militar_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_pub_militar_a'); END ;

CREATE TABLE edgv_edf_edif_residencial_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT edf_edif_residencial_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_residencial_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_residencial_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_residencial_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_residencial_p_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_residencial_p', 'features','edgv_edf_edif_residencial_p', 'Camada edf_edif_residencial_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_residencial_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_residencial_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_residencial_p" AFTER INSERT ON "edgv_edf_edif_residencial_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_residencial_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_residencial_p" AFTER DELETE ON "edgv_edf_edif_residencial_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_residencial_p'); END ;

CREATE TABLE edgv_edf_edif_residencial_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 matconstr smallint,
	 alturaaproximada real,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT edf_edif_residencial_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT edf_edif_residencial_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT edf_edif_residencial_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT edf_edif_residencial_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT edf_edif_residencial_a_cultura_check CHECK ((cultura = 0) OR (cultura = 1) OR (cultura = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_edf_edif_residencial_a', 'features','edgv_edf_edif_residencial_a', 'Camada edf_edif_residencial_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_edf_edif_residencial_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_edf_edif_residencial_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_edf_edif_residencial_a" AFTER INSERT ON "edgv_edf_edif_residencial_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_edf_edif_residencial_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_edf_edif_residencial_a" AFTER DELETE ON "edgv_edf_edif_residencial_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_edf_edif_residencial_a'); END ;

CREATE TABLE edgv_emu_acesso_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT emu_acesso_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_acesso_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_acesso_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_acesso_l_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_acesso_l', 'features','edgv_emu_acesso_l', 'Camada emu_acesso_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_acesso_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_acesso_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_acesso_l" AFTER INSERT ON "edgv_emu_acesso_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_acesso_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_acesso_l" AFTER DELETE ON "edgv_emu_acesso_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_acesso_l'); END ;

CREATE TABLE edgv_emu_acesso_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT emu_acesso_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_acesso_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_acesso_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_acesso_p_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_acesso_p', 'features','edgv_emu_acesso_p', 'Camada emu_acesso_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_acesso_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_acesso_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_acesso_p" AFTER INSERT ON "edgv_emu_acesso_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_acesso_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_acesso_p" AFTER DELETE ON "edgv_emu_acesso_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_acesso_p'); END ;

CREATE TABLE edgv_emu_acesso_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT emu_acesso_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_acesso_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_acesso_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_acesso_a_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_acesso_a', 'features','edgv_emu_acesso_a', 'Camada emu_acesso_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_acesso_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_acesso_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_acesso_a" AFTER INSERT ON "edgv_emu_acesso_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_acesso_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_acesso_a" AFTER DELETE ON "edgv_emu_acesso_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_acesso_a'); END ;

CREATE TABLE edgv_emu_rampa_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT emu_rampa_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_rampa_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_rampa_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_rampa_l_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_rampa_l', 'features','edgv_emu_rampa_l', 'Camada emu_rampa_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_rampa_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_rampa_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_rampa_l" AFTER INSERT ON "edgv_emu_rampa_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_rampa_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_rampa_l" AFTER DELETE ON "edgv_emu_rampa_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_rampa_l'); END ;

CREATE TABLE edgv_emu_rampa_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT emu_rampa_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_rampa_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_rampa_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_rampa_p_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_rampa_p', 'features','edgv_emu_rampa_p', 'Camada emu_rampa_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_rampa_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_rampa_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_rampa_p" AFTER INSERT ON "edgv_emu_rampa_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_rampa_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_rampa_p" AFTER DELETE ON "edgv_emu_rampa_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_rampa_p'); END ;

CREATE TABLE edgv_emu_rampa_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT emu_rampa_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_rampa_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_rampa_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_rampa_a_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_rampa_a', 'features','edgv_emu_rampa_a', 'Camada emu_rampa_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_rampa_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_rampa_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_rampa_a" AFTER INSERT ON "edgv_emu_rampa_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_rampa_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_rampa_a" AFTER DELETE ON "edgv_emu_rampa_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_rampa_a'); END ;

CREATE TABLE edgv_emu_ciclovia_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 revestimento smallint,
	 geom MultiLinestring,
	 CONSTRAINT emu_ciclovia_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_ciclovia_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_ciclovia_l_revestimento_check CHECK ((revestimento = 0) OR (revestimento = 1) OR (revestimento = 2) OR (revestimento = 3) OR (revestimento = 4) OR (revestimento = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_ciclovia_l', 'features','edgv_emu_ciclovia_l', 'Camada emu_ciclovia_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_ciclovia_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_ciclovia_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_ciclovia_l" AFTER INSERT ON "edgv_emu_ciclovia_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_ciclovia_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_ciclovia_l" AFTER DELETE ON "edgv_emu_ciclovia_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_ciclovia_l'); END ;

CREATE TABLE edgv_emu_elevador_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 tipoelevador smallint,
	 geom MultiLinestring,
	 CONSTRAINT emu_elevador_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_elevador_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_elevador_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_elevador_l_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99)),
	 CONSTRAINT emu_elevador_l_tipoelevador_check CHECK ((tipoelevador = 2) OR (tipoelevador = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_elevador_l', 'features','edgv_emu_elevador_l', 'Camada emu_elevador_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_elevador_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_elevador_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_elevador_l" AFTER INSERT ON "edgv_emu_elevador_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_elevador_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_elevador_l" AFTER DELETE ON "edgv_emu_elevador_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_elevador_l'); END ;

CREATE TABLE edgv_emu_elevador_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 tipoelevador smallint,
	 geom MultiPoint,
	 CONSTRAINT emu_elevador_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_elevador_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_elevador_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_elevador_p_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99)),
	 CONSTRAINT emu_elevador_p_tipoelevador_check CHECK ((tipoelevador = 2) OR (tipoelevador = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_elevador_p', 'features','edgv_emu_elevador_p', 'Camada emu_elevador_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_elevador_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_elevador_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_elevador_p" AFTER INSERT ON "edgv_emu_elevador_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_elevador_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_elevador_p" AFTER DELETE ON "edgv_emu_elevador_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_elevador_p'); END ;

CREATE TABLE edgv_emu_elevador_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 tipoelevador smallint,
	 geom MultiPolygon,
	 CONSTRAINT emu_elevador_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_elevador_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_elevador_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_elevador_a_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99)),
	 CONSTRAINT emu_elevador_a_tipoelevador_check CHECK ((tipoelevador = 2) OR (tipoelevador = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_elevador_a', 'features','edgv_emu_elevador_a', 'Camada emu_elevador_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_elevador_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_elevador_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_elevador_a" AFTER INSERT ON "edgv_emu_elevador_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_elevador_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_elevador_a" AFTER DELETE ON "edgv_emu_elevador_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_elevador_a'); END ;

CREATE TABLE edgv_emu_escadaria_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT emu_escadaria_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_escadaria_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_escadaria_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_escadaria_l_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_escadaria_l', 'features','edgv_emu_escadaria_l', 'Camada emu_escadaria_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_escadaria_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_escadaria_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_escadaria_l" AFTER INSERT ON "edgv_emu_escadaria_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_escadaria_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_escadaria_l" AFTER DELETE ON "edgv_emu_escadaria_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_escadaria_l'); END ;

CREATE TABLE edgv_emu_escadaria_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT emu_escadaria_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_escadaria_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_escadaria_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_escadaria_p_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_escadaria_p', 'features','edgv_emu_escadaria_p', 'Camada emu_escadaria_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_escadaria_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_escadaria_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_escadaria_p" AFTER INSERT ON "edgv_emu_escadaria_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_escadaria_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_escadaria_p" AFTER DELETE ON "edgv_emu_escadaria_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_escadaria_p'); END ;

CREATE TABLE edgv_emu_escadaria_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT emu_escadaria_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT emu_escadaria_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT emu_escadaria_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_escadaria_a_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_escadaria_a', 'features','edgv_emu_escadaria_a', 'Camada emu_escadaria_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_escadaria_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_escadaria_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_escadaria_a" AFTER INSERT ON "edgv_emu_escadaria_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_escadaria_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_escadaria_a" AFTER DELETE ON "edgv_emu_escadaria_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_escadaria_a'); END ;

CREATE TABLE edgv_emu_poste_sinalizacao_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 codident varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 matconstr smallint,
	 tipoposte smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT emu_poste_sinalizacao_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT emu_poste_sinalizacao_p_tipoposte_check CHECK ((tipoposte = 5))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_emu_poste_sinalizacao_p', 'features','edgv_emu_poste_sinalizacao_p', 'Camada emu_poste_sinalizacao_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_emu_poste_sinalizacao_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_emu_poste_sinalizacao_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_emu_poste_sinalizacao_p" AFTER INSERT ON "edgv_emu_poste_sinalizacao_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_emu_poste_sinalizacao_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_emu_poste_sinalizacao_p" AFTER DELETE ON "edgv_emu_poste_sinalizacao_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_emu_poste_sinalizacao_p'); END ;

CREATE TABLE edgv_enc_casa_de_forca_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_casa_de_forca_p', 'features','edgv_enc_casa_de_forca_p', 'Camada enc_casa_de_forca_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_casa_de_forca_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_casa_de_forca_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_casa_de_forca_p" AFTER INSERT ON "edgv_enc_casa_de_forca_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_casa_de_forca_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_casa_de_forca_p" AFTER DELETE ON "edgv_enc_casa_de_forca_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_casa_de_forca_p'); END ;

CREATE TABLE edgv_enc_torre_energia_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 ovgd smallint NOT NULL,
	 alturaestimada real,
	 geom MultiPoint,
	 CONSTRAINT enc_torre_energia_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_torre_energia_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT enc_torre_energia_p_ovgd_check CHECK ((ovgd = 0) OR (ovgd = 1) OR (ovgd = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_torre_energia_p', 'features','edgv_enc_torre_energia_p', 'Camada enc_torre_energia_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_torre_energia_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_torre_energia_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_torre_energia_p" AFTER INSERT ON "edgv_enc_torre_energia_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_torre_energia_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_torre_energia_p" AFTER DELETE ON "edgv_enc_torre_energia_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_torre_energia_p'); END ;

CREATE TABLE edgv_enc_trecho_energia_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 especie smallint,
	 posicaorelativa smallint,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 largurafaixaservidao real,
	 sin smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT enc_trecho_energia_l_especie_check CHECK ((especie = 0) OR (especie = 2) OR (especie = 3)),
	 CONSTRAINT enc_trecho_energia_l_posicaorelativa_check CHECK ((posicaorelativa = 0) OR (posicaorelativa = 2) OR (posicaorelativa = 3) OR (posicaorelativa = 4) OR (posicaorelativa = 5) OR (posicaorelativa = 6)),
	 CONSTRAINT enc_trecho_energia_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_trecho_energia_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT enc_trecho_energia_l_sin_check CHECK ((sin = 0) OR (sin = 1) OR (sin = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_trecho_energia_l', 'features','edgv_enc_trecho_energia_l', 'Camada enc_trecho_energia_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_trecho_energia_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_trecho_energia_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_trecho_energia_l" AFTER INSERT ON "edgv_enc_trecho_energia_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_trecho_energia_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_trecho_energia_l" AFTER DELETE ON "edgv_enc_trecho_energia_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_trecho_energia_l'); END ;

CREATE TABLE edgv_enc_grupo_transformadores_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_grupo_transformadores_p', 'features','edgv_enc_grupo_transformadores_p', 'Camada enc_grupo_transformadores_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_grupo_transformadores_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_grupo_transformadores_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_grupo_transformadores_p" AFTER INSERT ON "edgv_enc_grupo_transformadores_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_grupo_transformadores_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_grupo_transformadores_p" AFTER DELETE ON "edgv_enc_grupo_transformadores_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_grupo_transformadores_p'); END ;

CREATE TABLE edgv_enc_grupo_transformadores_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_grupo_transformadores_a', 'features','edgv_enc_grupo_transformadores_a', 'Camada enc_grupo_transformadores_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_grupo_transformadores_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_grupo_transformadores_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_grupo_transformadores_a" AFTER INSERT ON "edgv_enc_grupo_transformadores_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_grupo_transformadores_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_grupo_transformadores_a" AFTER DELETE ON "edgv_enc_grupo_transformadores_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_grupo_transformadores_a'); END ;

CREATE TABLE edgv_enc_est_gerad_energia_eletrica_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 ceg varchar(16),
	 tipoestgerad smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 potenciaout real,
	 geom MultiPoint,
	 CONSTRAINT enc_est_gerad_energia_eletrica_p_tipoestgerad_check CHECK ((tipoestgerad = 0) OR (tipoestgerad = 6) OR (tipoestgerad = 7) OR (tipoestgerad = 99)),
	 CONSTRAINT enc_est_gerad_energia_eletrica_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_est_gerad_energia_eletrica_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_est_gerad_energia_eletrica_p', 'features','edgv_enc_est_gerad_energia_eletrica_p', 'Camada enc_est_gerad_energia_eletrica_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_est_gerad_energia_eletrica_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_est_gerad_energia_eletrica_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_est_gerad_energia_eletrica_p" AFTER INSERT ON "edgv_enc_est_gerad_energia_eletrica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_est_gerad_energia_eletrica_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_est_gerad_energia_eletrica_p" AFTER DELETE ON "edgv_enc_est_gerad_energia_eletrica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_est_gerad_energia_eletrica_p'); END ;

CREATE TABLE edgv_enc_est_gerad_energia_eletrica_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 ceg varchar(16),
	 tipoestgerad smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 potenciaout real,
	 geom MultiPolygon,
	 CONSTRAINT enc_est_gerad_energia_eletrica_a_tipoestgerad_check CHECK ((tipoestgerad = 0) OR (tipoestgerad = 6) OR (tipoestgerad = 7) OR (tipoestgerad = 99)),
	 CONSTRAINT enc_est_gerad_energia_eletrica_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_est_gerad_energia_eletrica_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_est_gerad_energia_eletrica_a', 'features','edgv_enc_est_gerad_energia_eletrica_a', 'Camada enc_est_gerad_energia_eletrica_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_est_gerad_energia_eletrica_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_est_gerad_energia_eletrica_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_est_gerad_energia_eletrica_a" AFTER INSERT ON "edgv_enc_est_gerad_energia_eletrica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_est_gerad_energia_eletrica_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_est_gerad_energia_eletrica_a" AFTER DELETE ON "edgv_enc_est_gerad_energia_eletrica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_est_gerad_energia_eletrica_a'); END ;

CREATE TABLE edgv_enc_central_geradora_eolica_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 ceg varchar(16),
	 tipoestgerad smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 potenciaout real,
	 geom MultiPoint,
	 CONSTRAINT enc_central_geradora_eolica_p_tipoestgerad_check CHECK ((tipoestgerad = 5)),
	 CONSTRAINT enc_central_geradora_eolica_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_central_geradora_eolica_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_central_geradora_eolica_p', 'features','edgv_enc_central_geradora_eolica_p', 'Camada enc_central_geradora_eolica_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_central_geradora_eolica_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_central_geradora_eolica_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_central_geradora_eolica_p" AFTER INSERT ON "edgv_enc_central_geradora_eolica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_central_geradora_eolica_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_central_geradora_eolica_p" AFTER DELETE ON "edgv_enc_central_geradora_eolica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_central_geradora_eolica_p'); END ;

CREATE TABLE edgv_enc_central_geradora_eolica_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 ceg varchar(16),
	 tipoestgerad smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 potenciaout real,
	 geom MultiPolygon,
	 CONSTRAINT enc_central_geradora_eolica_a_tipoestgerad_check CHECK ((tipoestgerad = 5)),
	 CONSTRAINT enc_central_geradora_eolica_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_central_geradora_eolica_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_central_geradora_eolica_a', 'features','edgv_enc_central_geradora_eolica_a', 'Camada enc_central_geradora_eolica_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_central_geradora_eolica_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_central_geradora_eolica_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_central_geradora_eolica_a" AFTER INSERT ON "edgv_enc_central_geradora_eolica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_central_geradora_eolica_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_central_geradora_eolica_a" AFTER DELETE ON "edgv_enc_central_geradora_eolica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_central_geradora_eolica_a'); END ;

CREATE TABLE edgv_enc_aerogerador_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 alturatorreaer real,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_aerogerador_p', 'features','edgv_enc_aerogerador_p', 'Camada enc_aerogerador_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_aerogerador_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_aerogerador_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_aerogerador_p" AFTER INSERT ON "edgv_enc_aerogerador_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_aerogerador_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_aerogerador_p" AFTER DELETE ON "edgv_enc_aerogerador_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_aerogerador_p'); END ;

CREATE TABLE edgv_enc_hidreletrica_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 ceg varchar(16),
	 tipoestgerad smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 potenciaout real,
	 tipoahe smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT enc_hidreletrica_l_tipoestgerad_check CHECK ((tipoestgerad = 8)),
	 CONSTRAINT enc_hidreletrica_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_hidreletrica_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT enc_hidreletrica_l_tipoahe_check CHECK ((tipoahe = 1) OR (tipoahe = 2) OR (tipoahe = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_hidreletrica_l', 'features','edgv_enc_hidreletrica_l', 'Camada enc_hidreletrica_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_hidreletrica_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_hidreletrica_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_hidreletrica_l" AFTER INSERT ON "edgv_enc_hidreletrica_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_hidreletrica_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_hidreletrica_l" AFTER DELETE ON "edgv_enc_hidreletrica_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_hidreletrica_l'); END ;

CREATE TABLE edgv_enc_hidreletrica_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 ceg varchar(16),
	 tipoestgerad smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 potenciaout real,
	 tipoahe smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT enc_hidreletrica_p_tipoestgerad_check CHECK ((tipoestgerad = 8)),
	 CONSTRAINT enc_hidreletrica_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_hidreletrica_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT enc_hidreletrica_p_tipoahe_check CHECK ((tipoahe = 1) OR (tipoahe = 2) OR (tipoahe = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_hidreletrica_p', 'features','edgv_enc_hidreletrica_p', 'Camada enc_hidreletrica_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_hidreletrica_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_hidreletrica_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_hidreletrica_p" AFTER INSERT ON "edgv_enc_hidreletrica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_hidreletrica_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_hidreletrica_p" AFTER DELETE ON "edgv_enc_hidreletrica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_hidreletrica_p'); END ;

CREATE TABLE edgv_enc_hidreletrica_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 ceg varchar(16),
	 tipoestgerad smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 potenciaout real,
	 tipoahe smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT enc_hidreletrica_a_tipoestgerad_check CHECK ((tipoestgerad = 8)),
	 CONSTRAINT enc_hidreletrica_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_hidreletrica_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT enc_hidreletrica_a_tipoahe_check CHECK ((tipoahe = 1) OR (tipoahe = 2) OR (tipoahe = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_hidreletrica_a', 'features','edgv_enc_hidreletrica_a', 'Camada enc_hidreletrica_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_hidreletrica_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_hidreletrica_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_hidreletrica_a" AFTER INSERT ON "edgv_enc_hidreletrica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_hidreletrica_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_hidreletrica_a" AFTER DELETE ON "edgv_enc_hidreletrica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_hidreletrica_a'); END ;

CREATE TABLE edgv_enc_antena_comunic_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 posicaoreledific smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT enc_antena_comunic_p_posicaoreledific_check CHECK ((posicaoreledific = 0) OR (posicaoreledific = 14) OR (posicaoreledific = 17) OR (posicaoreledific = 18))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_antena_comunic_p', 'features','edgv_enc_antena_comunic_p', 'Camada enc_antena_comunic_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_antena_comunic_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_antena_comunic_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_antena_comunic_p" AFTER INSERT ON "edgv_enc_antena_comunic_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_antena_comunic_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_antena_comunic_p" AFTER DELETE ON "edgv_enc_antena_comunic_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_antena_comunic_p'); END ;

CREATE TABLE edgv_enc_termeletrica_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 ceg varchar(16),
	 tipoestgerad smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 potenciaout real,
	 tipocombustivel smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT enc_termeletrica_p_tipoestgerad_check CHECK ((tipoestgerad = 9)),
	 CONSTRAINT enc_termeletrica_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_termeletrica_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT enc_termeletrica_p_tipocombustivel_check CHECK ((tipocombustivel = 0) OR (tipocombustivel = 1) OR (tipocombustivel = 3) OR (tipocombustivel = 5) OR (tipocombustivel = 7) OR (tipocombustivel = 33) OR (tipocombustivel = 98) OR (tipocombustivel = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_termeletrica_p', 'features','edgv_enc_termeletrica_p', 'Camada enc_termeletrica_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_termeletrica_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_termeletrica_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_termeletrica_p" AFTER INSERT ON "edgv_enc_termeletrica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_termeletrica_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_termeletrica_p" AFTER DELETE ON "edgv_enc_termeletrica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_termeletrica_p'); END ;

CREATE TABLE edgv_enc_termeletrica_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 ceg varchar(16),
	 tipoestgerad smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 potenciaout real,
	 tipocombustivel smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT enc_termeletrica_a_tipoestgerad_check CHECK ((tipoestgerad = 9)),
	 CONSTRAINT enc_termeletrica_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_termeletrica_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT enc_termeletrica_a_tipocombustivel_check CHECK ((tipocombustivel = 0) OR (tipocombustivel = 1) OR (tipocombustivel = 3) OR (tipocombustivel = 5) OR (tipocombustivel = 7) OR (tipocombustivel = 33) OR (tipocombustivel = 98) OR (tipocombustivel = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_termeletrica_a', 'features','edgv_enc_termeletrica_a', 'Camada enc_termeletrica_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_termeletrica_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_termeletrica_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_termeletrica_a" AFTER INSERT ON "edgv_enc_termeletrica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_termeletrica_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_termeletrica_a" AFTER DELETE ON "edgv_enc_termeletrica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_termeletrica_a'); END ;

CREATE TABLE edgv_enc_trecho_comunic_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipotrechocomunic smallint NOT NULL,
	 posicaorelativa smallint NOT NULL,
	 matcondutor smallint,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 emduto boolean,
	 geom MultiLinestring,
	 CONSTRAINT enc_trecho_comunic_l_tipotrechocomunic_check CHECK ((tipotrechocomunic = 0) OR (tipotrechocomunic = 3) OR (tipotrechocomunic = 4) OR (tipotrechocomunic = 7) OR (tipotrechocomunic = 99)),
	 CONSTRAINT enc_trecho_comunic_l_posicaorelativa_check CHECK ((posicaorelativa = 0) OR (posicaorelativa = 2) OR (posicaorelativa = 3) OR (posicaorelativa = 4) OR (posicaorelativa = 5) OR (posicaorelativa = 6)),
	 CONSTRAINT enc_trecho_comunic_l_matcondutor_check CHECK ((matcondutor = 0) OR (matcondutor = 1) OR (matcondutor = 2) OR (matcondutor = 99)),
	 CONSTRAINT enc_trecho_comunic_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_trecho_comunic_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_trecho_comunic_l', 'features','edgv_enc_trecho_comunic_l', 'Camada enc_trecho_comunic_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_trecho_comunic_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_trecho_comunic_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_trecho_comunic_l" AFTER INSERT ON "edgv_enc_trecho_comunic_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_trecho_comunic_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_trecho_comunic_l" AFTER DELETE ON "edgv_enc_trecho_comunic_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_trecho_comunic_l'); END ;

CREATE TABLE edgv_enc_torre_comunic_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 posicaoreledific smallint NOT NULL,
	 ovgd smallint NOT NULL,
	 alturaestimada real,
	 modalidade smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT enc_torre_comunic_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT enc_torre_comunic_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT enc_torre_comunic_p_posicaoreledific_check CHECK ((posicaoreledific = 0) OR (posicaoreledific = 14) OR (posicaoreledific = 17) OR (posicaoreledific = 18)),
	 CONSTRAINT enc_torre_comunic_p_ovgd_check CHECK ((ovgd = 0) OR (ovgd = 1) OR (ovgd = 2)),
	 CONSTRAINT enc_torre_comunic_p_modalidade_check CHECK ((modalidade = 0) OR (modalidade = 1) OR (modalidade = 2) OR (modalidade = 3) OR (modalidade = 4) OR (modalidade = 5) OR (modalidade = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_torre_comunic_p', 'features','edgv_enc_torre_comunic_p', 'Camada enc_torre_comunic_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_torre_comunic_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_torre_comunic_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_torre_comunic_p" AFTER INSERT ON "edgv_enc_torre_comunic_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_torre_comunic_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_torre_comunic_p" AFTER DELETE ON "edgv_enc_torre_comunic_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_torre_comunic_p'); END ;

CREATE TABLE edgv_enc_zona_linhas_energia_comunicacao_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_enc_zona_linhas_energia_comunicacao_a', 'features','edgv_enc_zona_linhas_energia_comunicacao_a', 'Camada enc_zona_linhas_energia_comunicacao_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_enc_zona_linhas_energia_comunicacao_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_enc_zona_linhas_energia_comunicacao_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_enc_zona_linhas_energia_comunicacao_a" AFTER INSERT ON "edgv_enc_zona_linhas_energia_comunicacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_enc_zona_linhas_energia_comunicacao_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_enc_zona_linhas_energia_comunicacao_a" AFTER DELETE ON "edgv_enc_zona_linhas_energia_comunicacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_enc_zona_linhas_energia_comunicacao_a'); END ;

CREATE TABLE edgv_fer_girador_ferroviario_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 administracao smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT fer_girador_ferroviario_p_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT fer_girador_ferroviario_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT fer_girador_ferroviario_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_fer_girador_ferroviario_p', 'features','edgv_fer_girador_ferroviario_p', 'Camada fer_girador_ferroviario_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_fer_girador_ferroviario_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_fer_girador_ferroviario_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_fer_girador_ferroviario_p" AFTER INSERT ON "edgv_fer_girador_ferroviario_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_fer_girador_ferroviario_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_fer_girador_ferroviario_p" AFTER DELETE ON "edgv_fer_girador_ferroviario_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_fer_girador_ferroviario_p'); END ;

CREATE TABLE edgv_fer_trecho_ferroviario_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 codtrechoferrov varchar(25) NOT NULL,
	 posicaorelativa smallint NOT NULL,
	 tipotrechoferrov smallint NOT NULL,
	 bitola smallint NOT NULL,
	 eletrificada smallint NOT NULL,
	 nrlinhas smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 administracao smallint NOT NULL,
	 concessionaria varchar(25),
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 cargasuportmaxima real,
	 emarruamento boolean NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT fer_trecho_ferroviario_l_posicaorelativa_check CHECK ((posicaorelativa = 0) OR (posicaorelativa = 2) OR (posicaorelativa = 3) OR (posicaorelativa = 4) OR (posicaorelativa = 5) OR (posicaorelativa = 6)),
	 CONSTRAINT fer_trecho_ferroviario_l_tipotrechoferrov_check CHECK ((tipotrechoferrov = 0) OR (tipotrechoferrov = 5) OR (tipotrechoferrov = 6) OR (tipotrechoferrov = 7) OR (tipotrechoferrov = 8)),
	 CONSTRAINT fer_trecho_ferroviario_l_bitola_check CHECK ((bitola = 0) OR (bitola = 2) OR (bitola = 3) OR (bitola = 4) OR (bitola = 5) OR (bitola = 6) OR (bitola = 7)),
	 CONSTRAINT fer_trecho_ferroviario_l_eletrificada_check CHECK ((eletrificada = 0) OR (eletrificada = 1) OR (eletrificada = 2)),
	 CONSTRAINT fer_trecho_ferroviario_l_nrlinhas_check CHECK ((nrlinhas = 0) OR (nrlinhas = 1) OR (nrlinhas = 2) OR (nrlinhas = 3)),
	 CONSTRAINT fer_trecho_ferroviario_l_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT fer_trecho_ferroviario_l_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT fer_trecho_ferroviario_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT fer_trecho_ferroviario_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_fer_trecho_ferroviario_l', 'features','edgv_fer_trecho_ferroviario_l', 'Camada fer_trecho_ferroviario_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_fer_trecho_ferroviario_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_fer_trecho_ferroviario_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_fer_trecho_ferroviario_l" AFTER INSERT ON "edgv_fer_trecho_ferroviario_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_fer_trecho_ferroviario_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_fer_trecho_ferroviario_l" AFTER DELETE ON "edgv_fer_trecho_ferroviario_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_fer_trecho_ferroviario_l'); END ;

CREATE TABLE edgv_fer_cremalheira_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT fer_cremalheira_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT fer_cremalheira_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_fer_cremalheira_l', 'features','edgv_fer_cremalheira_l', 'Camada fer_cremalheira_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_fer_cremalheira_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_fer_cremalheira_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_fer_cremalheira_l" AFTER INSERT ON "edgv_fer_cremalheira_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_fer_cremalheira_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_fer_cremalheira_l" AFTER DELETE ON "edgv_fer_cremalheira_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_fer_cremalheira_l'); END ;

CREATE TABLE edgv_fer_cremalheira_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT fer_cremalheira_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT fer_cremalheira_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_fer_cremalheira_p', 'features','edgv_fer_cremalheira_p', 'Camada fer_cremalheira_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_fer_cremalheira_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_fer_cremalheira_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_fer_cremalheira_p" AFTER INSERT ON "edgv_fer_cremalheira_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_fer_cremalheira_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_fer_cremalheira_p" AFTER DELETE ON "edgv_fer_cremalheira_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_fer_cremalheira_p'); END ;

CREATE TABLE edgv_hdv_eclusa_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 desnivel real,
	 largura real,
	 extensao real,
	 calado real,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT hdv_eclusa_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hdv_eclusa_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hdv_eclusa_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_eclusa_l', 'features','edgv_hdv_eclusa_l', 'Camada hdv_eclusa_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_eclusa_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_eclusa_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_eclusa_l" AFTER INSERT ON "edgv_hdv_eclusa_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_eclusa_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_eclusa_l" AFTER DELETE ON "edgv_hdv_eclusa_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_eclusa_l'); END ;

CREATE TABLE edgv_hdv_eclusa_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 desnivel real,
	 largura real,
	 extensao real,
	 calado real,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT hdv_eclusa_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hdv_eclusa_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hdv_eclusa_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_eclusa_p', 'features','edgv_hdv_eclusa_p', 'Camada hdv_eclusa_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_eclusa_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_eclusa_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_eclusa_p" AFTER INSERT ON "edgv_hdv_eclusa_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_eclusa_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_eclusa_p" AFTER DELETE ON "edgv_hdv_eclusa_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_eclusa_p'); END ;

CREATE TABLE edgv_hdv_eclusa_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 desnivel real,
	 largura real,
	 extensao real,
	 calado real,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT hdv_eclusa_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hdv_eclusa_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hdv_eclusa_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_eclusa_a', 'features','edgv_hdv_eclusa_a', 'Camada hdv_eclusa_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_eclusa_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_eclusa_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_eclusa_a" AFTER INSERT ON "edgv_hdv_eclusa_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_eclusa_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_eclusa_a" AFTER DELETE ON "edgv_hdv_eclusa_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_eclusa_a'); END ;

CREATE TABLE edgv_hdv_obstaculo_navegacao_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoobst smallint NOT NULL,
	 situacaoemagua smallint,
	 geom MultiLinestring,
	 CONSTRAINT hdv_obstaculo_navegacao_l_tipoobst_check CHECK ((tipoobst = 4) OR (tipoobst = 5)),
	 CONSTRAINT hdv_obstaculo_navegacao_l_situacaoemagua_check CHECK ((situacaoemagua = 0) OR (situacaoemagua = 4) OR (situacaoemagua = 5) OR (situacaoemagua = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_obstaculo_navegacao_l', 'features','edgv_hdv_obstaculo_navegacao_l', 'Camada hdv_obstaculo_navegacao_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_obstaculo_navegacao_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_obstaculo_navegacao_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_obstaculo_navegacao_l" AFTER INSERT ON "edgv_hdv_obstaculo_navegacao_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_obstaculo_navegacao_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_obstaculo_navegacao_l" AFTER DELETE ON "edgv_hdv_obstaculo_navegacao_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_obstaculo_navegacao_l'); END ;

CREATE TABLE edgv_hdv_obstaculo_navegacao_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoobst smallint NOT NULL,
	 situacaoemagua smallint,
	 geom MultiPoint,
	 CONSTRAINT hdv_obstaculo_navegacao_p_tipoobst_check CHECK ((tipoobst = 4) OR (tipoobst = 5)),
	 CONSTRAINT hdv_obstaculo_navegacao_p_situacaoemagua_check CHECK ((situacaoemagua = 0) OR (situacaoemagua = 4) OR (situacaoemagua = 5) OR (situacaoemagua = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_obstaculo_navegacao_p', 'features','edgv_hdv_obstaculo_navegacao_p', 'Camada hdv_obstaculo_navegacao_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_obstaculo_navegacao_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_obstaculo_navegacao_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_obstaculo_navegacao_p" AFTER INSERT ON "edgv_hdv_obstaculo_navegacao_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_obstaculo_navegacao_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_obstaculo_navegacao_p" AFTER DELETE ON "edgv_hdv_obstaculo_navegacao_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_obstaculo_navegacao_p'); END ;

CREATE TABLE edgv_hdv_obstaculo_navegacao_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoobst smallint NOT NULL,
	 situacaoemagua smallint,
	 geom MultiPolygon,
	 CONSTRAINT hdv_obstaculo_navegacao_a_tipoobst_check CHECK ((tipoobst = 4) OR (tipoobst = 5)),
	 CONSTRAINT hdv_obstaculo_navegacao_a_situacaoemagua_check CHECK ((situacaoemagua = 0) OR (situacaoemagua = 4) OR (situacaoemagua = 5) OR (situacaoemagua = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_obstaculo_navegacao_a', 'features','edgv_hdv_obstaculo_navegacao_a', 'Camada hdv_obstaculo_navegacao_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_obstaculo_navegacao_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_obstaculo_navegacao_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_obstaculo_navegacao_a" AFTER INSERT ON "edgv_hdv_obstaculo_navegacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_obstaculo_navegacao_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_obstaculo_navegacao_a" AFTER DELETE ON "edgv_hdv_obstaculo_navegacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_obstaculo_navegacao_a'); END ;

CREATE TABLE edgv_hdv_sinalizacao_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tiposinal smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT hdv_sinalizacao_p_tiposinal_check CHECK ((tiposinal = 0) OR (tiposinal = 1) OR (tiposinal = 2) OR (tiposinal = 3) OR (tiposinal = 4) OR (tiposinal = 5) OR (tiposinal = 6)),
	 CONSTRAINT hdv_sinalizacao_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hdv_sinalizacao_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_sinalizacao_p', 'features','edgv_hdv_sinalizacao_p', 'Camada hdv_sinalizacao_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_sinalizacao_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_sinalizacao_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_sinalizacao_p" AFTER INSERT ON "edgv_hdv_sinalizacao_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_sinalizacao_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_sinalizacao_p" AFTER DELETE ON "edgv_hdv_sinalizacao_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_sinalizacao_p'); END ;

CREATE TABLE edgv_hdv_atracadouro_terminal_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoatracad smallint NOT NULL,
	 administracao smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 aptidaooperacional smallint,
	 geom MultiLinestring,
	 CONSTRAINT hdv_atracadouro_terminal_l_tipoatracad_check CHECK ((tipoatracad = 0) OR (tipoatracad = 38) OR (tipoatracad = 39) OR (tipoatracad = 40) OR (tipoatracad = 41) OR (tipoatracad = 42) OR (tipoatracad = 43) OR (tipoatracad = 44)),
	 CONSTRAINT hdv_atracadouro_terminal_l_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT hdv_atracadouro_terminal_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hdv_atracadouro_terminal_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hdv_atracadouro_terminal_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT hdv_atracadouro_terminal_l_aptidaooperacional_check CHECK ((aptidaooperacional = 2) OR (aptidaooperacional = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_atracadouro_terminal_l', 'features','edgv_hdv_atracadouro_terminal_l', 'Camada hdv_atracadouro_terminal_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_atracadouro_terminal_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_atracadouro_terminal_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_atracadouro_terminal_l" AFTER INSERT ON "edgv_hdv_atracadouro_terminal_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_atracadouro_terminal_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_atracadouro_terminal_l" AFTER DELETE ON "edgv_hdv_atracadouro_terminal_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_atracadouro_terminal_l'); END ;

CREATE TABLE edgv_hdv_atracadouro_terminal_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoatracad smallint NOT NULL,
	 administracao smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 aptidaooperacional smallint,
	 geom MultiPoint,
	 CONSTRAINT hdv_atracadouro_terminal_p_tipoatracad_check CHECK ((tipoatracad = 0) OR (tipoatracad = 38) OR (tipoatracad = 39) OR (tipoatracad = 40) OR (tipoatracad = 41) OR (tipoatracad = 42) OR (tipoatracad = 43) OR (tipoatracad = 44)),
	 CONSTRAINT hdv_atracadouro_terminal_p_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT hdv_atracadouro_terminal_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hdv_atracadouro_terminal_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hdv_atracadouro_terminal_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT hdv_atracadouro_terminal_p_aptidaooperacional_check CHECK ((aptidaooperacional = 2) OR (aptidaooperacional = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_atracadouro_terminal_p', 'features','edgv_hdv_atracadouro_terminal_p', 'Camada hdv_atracadouro_terminal_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_atracadouro_terminal_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_atracadouro_terminal_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_atracadouro_terminal_p" AFTER INSERT ON "edgv_hdv_atracadouro_terminal_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_atracadouro_terminal_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_atracadouro_terminal_p" AFTER DELETE ON "edgv_hdv_atracadouro_terminal_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_atracadouro_terminal_p'); END ;

CREATE TABLE edgv_hdv_atracadouro_terminal_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoatracad smallint NOT NULL,
	 administracao smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 aptidaooperacional smallint,
	 geom MultiPolygon,
	 CONSTRAINT hdv_atracadouro_terminal_a_tipoatracad_check CHECK ((tipoatracad = 0) OR (tipoatracad = 38) OR (tipoatracad = 39) OR (tipoatracad = 40) OR (tipoatracad = 41) OR (tipoatracad = 42) OR (tipoatracad = 43) OR (tipoatracad = 44)),
	 CONSTRAINT hdv_atracadouro_terminal_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT hdv_atracadouro_terminal_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hdv_atracadouro_terminal_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hdv_atracadouro_terminal_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT hdv_atracadouro_terminal_a_aptidaooperacional_check CHECK ((aptidaooperacional = 2) OR (aptidaooperacional = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_atracadouro_terminal_a', 'features','edgv_hdv_atracadouro_terminal_a', 'Camada hdv_atracadouro_terminal_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_atracadouro_terminal_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_atracadouro_terminal_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_atracadouro_terminal_a" AFTER INSERT ON "edgv_hdv_atracadouro_terminal_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_atracadouro_terminal_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_atracadouro_terminal_a" AFTER DELETE ON "edgv_hdv_atracadouro_terminal_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_atracadouro_terminal_a'); END ;

CREATE TABLE edgv_hdv_fundeadouro_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipofundeadouro smallint NOT NULL,
	 administracao smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT hdv_fundeadouro_p_tipofundeadouro_check CHECK ((tipofundeadouro = 0) OR (tipofundeadouro = 1) OR (tipofundeadouro = 2)),
	 CONSTRAINT hdv_fundeadouro_p_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_fundeadouro_p', 'features','edgv_hdv_fundeadouro_p', 'Camada hdv_fundeadouro_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_fundeadouro_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_fundeadouro_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_fundeadouro_p" AFTER INSERT ON "edgv_hdv_fundeadouro_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_fundeadouro_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_fundeadouro_p" AFTER DELETE ON "edgv_hdv_fundeadouro_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_fundeadouro_p'); END ;

CREATE TABLE edgv_hdv_fundeadouro_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipofundeadouro smallint NOT NULL,
	 administracao smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT hdv_fundeadouro_a_tipofundeadouro_check CHECK ((tipofundeadouro = 0) OR (tipofundeadouro = 1) OR (tipofundeadouro = 2)),
	 CONSTRAINT hdv_fundeadouro_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_fundeadouro_a', 'features','edgv_hdv_fundeadouro_a', 'Camada hdv_fundeadouro_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_fundeadouro_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_fundeadouro_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_fundeadouro_a" AFTER INSERT ON "edgv_hdv_fundeadouro_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_fundeadouro_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_fundeadouro_a" AFTER DELETE ON "edgv_hdv_fundeadouro_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_fundeadouro_a'); END ;

CREATE TABLE edgv_hdv_trecho_hidroviario_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 regime smallint,
	 extensaotrecho real,
	 caladomaxseca real,
	 geom MultiLinestring,
	 CONSTRAINT hdv_trecho_hidroviario_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hdv_trecho_hidroviario_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT hdv_trecho_hidroviario_l_regime_check CHECK ((regime = 0) OR (regime = 1) OR (regime = 2) OR (regime = 3) OR (regime = 4) OR (regime = 5))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hdv_trecho_hidroviario_l', 'features','edgv_hdv_trecho_hidroviario_l', 'Camada hdv_trecho_hidroviario_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hdv_trecho_hidroviario_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hdv_trecho_hidroviario_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hdv_trecho_hidroviario_l" AFTER INSERT ON "edgv_hdv_trecho_hidroviario_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hdv_trecho_hidroviario_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hdv_trecho_hidroviario_l" AFTER DELETE ON "edgv_hdv_trecho_hidroviario_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hdv_trecho_hidroviario_l'); END ;

CREATE TABLE edgv_hid_sumidouro_vertedouro_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tiposumvert smallint NOT NULL,
	 causa smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT hid_sumidouro_vertedouro_p_tiposumvert_check CHECK ((tiposumvert = 1) OR (tiposumvert = 2)),
	 CONSTRAINT hid_sumidouro_vertedouro_p_causa_check CHECK ((causa = 0) OR (causa = 2) OR (causa = 4) OR (causa = 5))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_sumidouro_vertedouro_p', 'features','edgv_hid_sumidouro_vertedouro_p', 'Camada hid_sumidouro_vertedouro_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_sumidouro_vertedouro_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_sumidouro_vertedouro_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_sumidouro_vertedouro_p" AFTER INSERT ON "edgv_hid_sumidouro_vertedouro_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_sumidouro_vertedouro_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_sumidouro_vertedouro_p" AFTER DELETE ON "edgv_hid_sumidouro_vertedouro_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_sumidouro_vertedouro_p'); END ;

CREATE TABLE edgv_hid_ilha_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 tipoilha smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT hid_ilha_p_tipoelemnat_check CHECK ((tipoelemnat = 21)),
	 CONSTRAINT hid_ilha_p_tipoilha_check CHECK ((tipoilha = 1) OR (tipoilha = 2) OR (tipoilha = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_ilha_p', 'features','edgv_hid_ilha_p', 'Camada hid_ilha_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_ilha_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_ilha_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_ilha_p" AFTER INSERT ON "edgv_hid_ilha_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_ilha_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_ilha_p" AFTER DELETE ON "edgv_hid_ilha_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_ilha_p'); END ;

CREATE TABLE edgv_hid_ilha_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 tipoilha smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT hid_ilha_a_tipoelemnat_check CHECK ((tipoelemnat = 21)),
	 CONSTRAINT hid_ilha_a_tipoilha_check CHECK ((tipoilha = 1) OR (tipoilha = 2) OR (tipoilha = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_ilha_a', 'features','edgv_hid_ilha_a', 'Camada hid_ilha_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_ilha_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_ilha_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_ilha_a" AFTER INSERT ON "edgv_hid_ilha_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_ilha_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_ilha_a" AFTER DELETE ON "edgv_hid_ilha_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_ilha_a'); END ;

CREATE TABLE edgv_hid_vala_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 usoprincipal smallint NOT NULL,
	 finalidade smallint,
	 geom MultiLinestring,
	 CONSTRAINT hid_vala_l_tipoalterantrop_check CHECK ((tipoalterantrop = 31)),
	 CONSTRAINT hid_vala_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_vala_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT hid_vala_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hid_vala_l_usoprincipal_check CHECK ((usoprincipal = 0) OR (usoprincipal = 1) OR (usoprincipal = 2) OR (usoprincipal = 3) OR (usoprincipal = 4) OR (usoprincipal = 5) OR (usoprincipal = 6) OR (usoprincipal = 97) OR (usoprincipal = 99)),
	 CONSTRAINT hid_vala_l_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 3) OR (finalidade = 4))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_vala_l', 'features','edgv_hid_vala_l', 'Camada hid_vala_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_vala_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_vala_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_vala_l" AFTER INSERT ON "edgv_hid_vala_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_vala_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_vala_l" AFTER DELETE ON "edgv_hid_vala_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_vala_l'); END ;

CREATE TABLE edgv_hid_vala_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 usoprincipal smallint NOT NULL,
	 finalidade smallint,
	 geom MultiPolygon,
	 CONSTRAINT hid_vala_a_tipoalterantrop_check CHECK ((tipoalterantrop = 31)),
	 CONSTRAINT hid_vala_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_vala_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT hid_vala_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hid_vala_a_usoprincipal_check CHECK ((usoprincipal = 0) OR (usoprincipal = 1) OR (usoprincipal = 2) OR (usoprincipal = 3) OR (usoprincipal = 4) OR (usoprincipal = 5) OR (usoprincipal = 6) OR (usoprincipal = 97) OR (usoprincipal = 99)),
	 CONSTRAINT hid_vala_a_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 3) OR (finalidade = 4))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_vala_a', 'features','edgv_hid_vala_a', 'Camada hid_vala_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_vala_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_vala_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_vala_a" AFTER INSERT ON "edgv_hid_vala_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_vala_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_vala_a" AFTER DELETE ON "edgv_hid_vala_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_vala_a'); END ;

CREATE TABLE edgv_hid_dique_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 matconstr smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT hid_dique_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_dique_l', 'features','edgv_hid_dique_l', 'Camada hid_dique_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_dique_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_dique_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_dique_l" AFTER INSERT ON "edgv_hid_dique_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_dique_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_dique_l" AFTER DELETE ON "edgv_hid_dique_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_dique_l'); END ;

CREATE TABLE edgv_hid_dique_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 matconstr smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT hid_dique_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_dique_p', 'features','edgv_hid_dique_p', 'Camada hid_dique_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_dique_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_dique_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_dique_p" AFTER INSERT ON "edgv_hid_dique_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_dique_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_dique_p" AFTER DELETE ON "edgv_hid_dique_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_dique_p'); END ;

CREATE TABLE edgv_hid_dique_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 matconstr smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT hid_dique_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_dique_a', 'features','edgv_hid_dique_a', 'Camada hid_dique_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_dique_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_dique_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_dique_a" AFTER INSERT ON "edgv_hid_dique_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_dique_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_dique_a" AFTER DELETE ON "edgv_hid_dique_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_dique_a'); END ;

CREATE TABLE edgv_hid_canal_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 usoprincipal smallint NOT NULL,
	 finalidade smallint,
	 geom MultiLinestring,
	 CONSTRAINT hid_canal_l_tipoalterantrop_check CHECK ((tipoalterantrop = 30)),
	 CONSTRAINT hid_canal_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_canal_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT hid_canal_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hid_canal_l_usoprincipal_check CHECK ((usoprincipal = 0) OR (usoprincipal = 1) OR (usoprincipal = 2) OR (usoprincipal = 3) OR (usoprincipal = 4) OR (usoprincipal = 5) OR (usoprincipal = 6) OR (usoprincipal = 97) OR (usoprincipal = 99)),
	 CONSTRAINT hid_canal_l_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 3) OR (finalidade = 4))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_canal_l', 'features','edgv_hid_canal_l', 'Camada hid_canal_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_canal_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_canal_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_canal_l" AFTER INSERT ON "edgv_hid_canal_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_canal_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_canal_l" AFTER DELETE ON "edgv_hid_canal_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_canal_l'); END ;

CREATE TABLE edgv_hid_canal_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 usoprincipal smallint NOT NULL,
	 finalidade smallint,
	 geom MultiPolygon,
	 CONSTRAINT hid_canal_a_tipoalterantrop_check CHECK ((tipoalterantrop = 30)),
	 CONSTRAINT hid_canal_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_canal_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT hid_canal_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hid_canal_a_usoprincipal_check CHECK ((usoprincipal = 0) OR (usoprincipal = 1) OR (usoprincipal = 2) OR (usoprincipal = 3) OR (usoprincipal = 4) OR (usoprincipal = 5) OR (usoprincipal = 6) OR (usoprincipal = 97) OR (usoprincipal = 99)),
	 CONSTRAINT hid_canal_a_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 3) OR (finalidade = 4))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_canal_a', 'features','edgv_hid_canal_a', 'Camada hid_canal_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_canal_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_canal_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_canal_a" AFTER INSERT ON "edgv_hid_canal_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_canal_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_canal_a" AFTER DELETE ON "edgv_hid_canal_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_canal_a'); END ;

CREATE TABLE edgv_hid_massa_dagua_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipomassadagua smallint NOT NULL,
	 regime smallint NOT NULL,
	 salgada smallint NOT NULL,
	 dominialidade smallint,
	 artificial smallint NOT NULL,
	 possuitrechodrenagem boolean NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT hid_massa_dagua_a_tipomassadagua_check CHECK ((tipomassadagua = 0) OR (tipomassadagua = 1) OR (tipomassadagua = 3) OR (tipomassadagua = 4) OR (tipomassadagua = 5) OR (tipomassadagua = 6) OR (tipomassadagua = 7) OR (tipomassadagua = 9) OR (tipomassadagua = 10) OR (tipomassadagua = 99)),
	 CONSTRAINT hid_massa_dagua_a_regime_check CHECK ((regime = 0) OR (regime = 1) OR (regime = 2) OR (regime = 3) OR (regime = 4) OR (regime = 5)),
	 CONSTRAINT hid_massa_dagua_a_salgada_check CHECK ((salgada = 0) OR (salgada = 1) OR (salgada = 2)),
	 CONSTRAINT hid_massa_dagua_a_dominialidade_check CHECK ((dominialidade = 0) OR (dominialidade = 1) OR (dominialidade = 2) OR (dominialidade = 3) OR (dominialidade = 4) OR (dominialidade = 8)),
	 CONSTRAINT hid_massa_dagua_a_artificial_check CHECK ((artificial = 0) OR (artificial = 1) OR (artificial = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_massa_dagua_a', 'features','edgv_hid_massa_dagua_a', 'Camada hid_massa_dagua_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_massa_dagua_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_massa_dagua_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_massa_dagua_a" AFTER INSERT ON "edgv_hid_massa_dagua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_massa_dagua_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_massa_dagua_a" AFTER DELETE ON "edgv_hid_massa_dagua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_massa_dagua_a'); END ;

CREATE TABLE edgv_hid_trecho_drenagem_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipotrechodrenagem smallint NOT NULL,
	 navegavel smallint NOT NULL,
	 larguramedia real,
	 regime smallint NOT NULL,
	 encoberto boolean NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT hid_trecho_drenagem_l_tipotrechodrenagem_check CHECK ((tipotrechodrenagem = 4) OR (tipotrechodrenagem = 5)),
	 CONSTRAINT hid_trecho_drenagem_l_navegavel_check CHECK ((navegavel = 0) OR (navegavel = 1) OR (navegavel = 2)),
	 CONSTRAINT hid_trecho_drenagem_l_regime_check CHECK ((regime = 0) OR (regime = 1) OR (regime = 2) OR (regime = 3) OR (regime = 4) OR (regime = 5))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_trecho_drenagem_l', 'features','edgv_hid_trecho_drenagem_l', 'Camada hid_trecho_drenagem_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_trecho_drenagem_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_trecho_drenagem_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_trecho_drenagem_l" AFTER INSERT ON "edgv_hid_trecho_drenagem_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_trecho_drenagem_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_trecho_drenagem_l" AFTER DELETE ON "edgv_hid_trecho_drenagem_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_trecho_drenagem_l'); END ;

CREATE TABLE edgv_hid_comporta_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT hid_comporta_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_comporta_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_comporta_l', 'features','edgv_hid_comporta_l', 'Camada hid_comporta_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_comporta_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_comporta_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_comporta_l" AFTER INSERT ON "edgv_hid_comporta_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_comporta_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_comporta_l" AFTER DELETE ON "edgv_hid_comporta_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_comporta_l'); END ;

CREATE TABLE edgv_hid_comporta_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT hid_comporta_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_comporta_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_comporta_p', 'features','edgv_hid_comporta_p', 'Camada hid_comporta_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_comporta_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_comporta_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_comporta_p" AFTER INSERT ON "edgv_hid_comporta_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_comporta_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_comporta_p" AFTER DELETE ON "edgv_hid_comporta_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_comporta_p'); END ;

CREATE TABLE edgv_hid_corredeira_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiLinestring
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_corredeira_l', 'features','edgv_hid_corredeira_l', 'Camada hid_corredeira_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_corredeira_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_corredeira_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_corredeira_l" AFTER INSERT ON "edgv_hid_corredeira_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_corredeira_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_corredeira_l" AFTER DELETE ON "edgv_hid_corredeira_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_corredeira_l'); END ;

CREATE TABLE edgv_hid_corredeira_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_corredeira_p', 'features','edgv_hid_corredeira_p', 'Camada hid_corredeira_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_corredeira_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_corredeira_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_corredeira_p" AFTER INSERT ON "edgv_hid_corredeira_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_corredeira_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_corredeira_p" AFTER DELETE ON "edgv_hid_corredeira_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_corredeira_p'); END ;

CREATE TABLE edgv_hid_corredeira_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_corredeira_a', 'features','edgv_hid_corredeira_a', 'Camada hid_corredeira_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_corredeira_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_corredeira_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_corredeira_a" AFTER INSERT ON "edgv_hid_corredeira_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_corredeira_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_corredeira_a" AFTER DELETE ON "edgv_hid_corredeira_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_corredeira_a'); END ;

CREATE TABLE edgv_hid_queda_dagua_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoqueda smallint NOT NULL,
	 altura real,
	 geom MultiPoint,
	 CONSTRAINT hid_queda_dagua_p_tipoqueda_check CHECK ((tipoqueda = 0) OR (tipoqueda = 1) OR (tipoqueda = 2) OR (tipoqueda = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_queda_dagua_p', 'features','edgv_hid_queda_dagua_p', 'Camada hid_queda_dagua_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_queda_dagua_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_queda_dagua_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_queda_dagua_p" AFTER INSERT ON "edgv_hid_queda_dagua_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_queda_dagua_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_queda_dagua_p" AFTER DELETE ON "edgv_hid_queda_dagua_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_queda_dagua_p'); END ;

CREATE TABLE edgv_hid_queda_dagua_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoqueda smallint NOT NULL,
	 altura real,
	 geom MultiPolygon,
	 CONSTRAINT hid_queda_dagua_a_tipoqueda_check CHECK ((tipoqueda = 0) OR (tipoqueda = 1) OR (tipoqueda = 2) OR (tipoqueda = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_queda_dagua_a', 'features','edgv_hid_queda_dagua_a', 'Camada hid_queda_dagua_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_queda_dagua_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_queda_dagua_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_queda_dagua_a" AFTER INSERT ON "edgv_hid_queda_dagua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_queda_dagua_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_queda_dagua_a" AFTER DELETE ON "edgv_hid_queda_dagua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_queda_dagua_a'); END ;

CREATE TABLE edgv_hid_recife_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tiporecife smallint NOT NULL,
	 situacaoemagua smallint NOT NULL,
	 situacaocosta smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT hid_recife_p_tiporecife_check CHECK ((tiporecife = 0) OR (tiporecife = 1) OR (tiporecife = 2) OR (tiporecife = 20)),
	 CONSTRAINT hid_recife_p_situacaoemagua_check CHECK ((situacaoemagua = 0) OR (situacaoemagua = 4) OR (situacaoemagua = 5) OR (situacaoemagua = 7)),
	 CONSTRAINT hid_recife_p_situacaocosta_check CHECK ((situacaocosta = 10) OR (situacaocosta = 11))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_recife_p', 'features','edgv_hid_recife_p', 'Camada hid_recife_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_recife_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_recife_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_recife_p" AFTER INSERT ON "edgv_hid_recife_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_recife_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_recife_p" AFTER DELETE ON "edgv_hid_recife_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_recife_p'); END ;

CREATE TABLE edgv_hid_recife_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tiporecife smallint NOT NULL,
	 situacaoemagua smallint NOT NULL,
	 situacaocosta smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT hid_recife_a_tiporecife_check CHECK ((tiporecife = 0) OR (tiporecife = 1) OR (tiporecife = 2) OR (tiporecife = 20)),
	 CONSTRAINT hid_recife_a_situacaoemagua_check CHECK ((situacaoemagua = 0) OR (situacaoemagua = 4) OR (situacaoemagua = 5) OR (situacaoemagua = 7)),
	 CONSTRAINT hid_recife_a_situacaocosta_check CHECK ((situacaocosta = 10) OR (situacaocosta = 11))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_recife_a', 'features','edgv_hid_recife_a', 'Camada hid_recife_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_recife_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_recife_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_recife_a" AFTER INSERT ON "edgv_hid_recife_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_recife_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_recife_a" AFTER DELETE ON "edgv_hid_recife_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_recife_a'); END ;

CREATE TABLE edgv_hid_terreno_sujeito_inundacao_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 periodicidadeinunda varchar(20),
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_terreno_sujeito_inundacao_a', 'features','edgv_hid_terreno_sujeito_inundacao_a', 'Camada hid_terreno_sujeito_inundacao_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_terreno_sujeito_inundacao_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_terreno_sujeito_inundacao_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_terreno_sujeito_inundacao_a" AFTER INSERT ON "edgv_hid_terreno_sujeito_inundacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_terreno_sujeito_inundacao_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_terreno_sujeito_inundacao_a" AFTER DELETE ON "edgv_hid_terreno_sujeito_inundacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_terreno_sujeito_inundacao_a'); END ;

CREATE TABLE edgv_hid_rocha_em_agua_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 formarocha smallint,
	 situacaoemagua smallint NOT NULL,
	 alturalamina real,
	 geom MultiPoint,
	 CONSTRAINT hid_rocha_em_agua_p_tipoelemnat_check CHECK ((tipoelemnat = 23)),
	 CONSTRAINT hid_rocha_em_agua_p_formarocha_check CHECK ((formarocha = 0) OR (formarocha = 21) OR (formarocha = 22) OR (formarocha = 23)),
	 CONSTRAINT hid_rocha_em_agua_p_situacaoemagua_check CHECK ((situacaoemagua = 0) OR (situacaoemagua = 4) OR (situacaoemagua = 5) OR (situacaoemagua = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_rocha_em_agua_p', 'features','edgv_hid_rocha_em_agua_p', 'Camada hid_rocha_em_agua_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_rocha_em_agua_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_rocha_em_agua_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_rocha_em_agua_p" AFTER INSERT ON "edgv_hid_rocha_em_agua_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_rocha_em_agua_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_rocha_em_agua_p" AFTER DELETE ON "edgv_hid_rocha_em_agua_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_rocha_em_agua_p'); END ;

CREATE TABLE edgv_hid_rocha_em_agua_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 formarocha smallint,
	 situacaoemagua smallint NOT NULL,
	 alturalamina real,
	 geom MultiPolygon,
	 CONSTRAINT hid_rocha_em_agua_a_tipoelemnat_check CHECK ((tipoelemnat = 23)),
	 CONSTRAINT hid_rocha_em_agua_a_formarocha_check CHECK ((formarocha = 0) OR (formarocha = 21) OR (formarocha = 22) OR (formarocha = 23)),
	 CONSTRAINT hid_rocha_em_agua_a_situacaoemagua_check CHECK ((situacaoemagua = 0) OR (situacaoemagua = 4) OR (situacaoemagua = 5) OR (situacaoemagua = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_rocha_em_agua_a', 'features','edgv_hid_rocha_em_agua_a', 'Camada hid_rocha_em_agua_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_rocha_em_agua_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_rocha_em_agua_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_rocha_em_agua_a" AFTER INSERT ON "edgv_hid_rocha_em_agua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_rocha_em_agua_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_rocha_em_agua_a" AFTER DELETE ON "edgv_hid_rocha_em_agua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_rocha_em_agua_a'); END ;

CREATE TABLE edgv_hid_banco_areia_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipobanco smallint NOT NULL,
	 situacaoemagua smallint,
	 materialpredominante smallint,
	 geom MultiPolygon,
	 CONSTRAINT hid_banco_areia_a_tipobanco_check CHECK ((tipobanco = 1) OR (tipobanco = 2) OR (tipobanco = 3) OR (tipobanco = 4)),
	 CONSTRAINT hid_banco_areia_a_situacaoemagua_check CHECK ((situacaoemagua = 0) OR (situacaoemagua = 4) OR (situacaoemagua = 5) OR (situacaoemagua = 7)),
	 CONSTRAINT hid_banco_areia_a_materialpredominante_check CHECK ((materialpredominante = 0) OR (materialpredominante = 4) OR (materialpredominante = 12) OR (materialpredominante = 13) OR (materialpredominante = 14) OR (materialpredominante = 15) OR (materialpredominante = 16) OR (materialpredominante = 17) OR (materialpredominante = 18) OR (materialpredominante = 19) OR (materialpredominante = 20) OR (materialpredominante = 22) OR (materialpredominante = 50) OR (materialpredominante = 97) OR (materialpredominante = 98) OR (materialpredominante = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_banco_areia_a', 'features','edgv_hid_banco_areia_a', 'Camada hid_banco_areia_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_banco_areia_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_banco_areia_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_banco_areia_a" AFTER INSERT ON "edgv_hid_banco_areia_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_banco_areia_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_banco_areia_a" AFTER DELETE ON "edgv_hid_banco_areia_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_banco_areia_a'); END ;

CREATE TABLE edgv_hid_quebramar_molhe_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoquebramolhe smallint NOT NULL,
	 situacaoemagua smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT hid_quebramar_molhe_l_tipoquebramolhe_check CHECK ((tipoquebramolhe = 0) OR (tipoquebramolhe = 1) OR (tipoquebramolhe = 2) OR (tipoquebramolhe = 4)),
	 CONSTRAINT hid_quebramar_molhe_l_situacaoemagua_check CHECK ((situacaoemagua = 0) OR (situacaoemagua = 4) OR (situacaoemagua = 5) OR (situacaoemagua = 7)),
	 CONSTRAINT hid_quebramar_molhe_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hid_quebramar_molhe_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_quebramar_molhe_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_quebramar_molhe_l', 'features','edgv_hid_quebramar_molhe_l', 'Camada hid_quebramar_molhe_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_quebramar_molhe_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_quebramar_molhe_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_quebramar_molhe_l" AFTER INSERT ON "edgv_hid_quebramar_molhe_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_quebramar_molhe_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_quebramar_molhe_l" AFTER DELETE ON "edgv_hid_quebramar_molhe_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_quebramar_molhe_l'); END ;

CREATE TABLE edgv_hid_quebramar_molhe_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoquebramolhe smallint NOT NULL,
	 situacaoemagua smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT hid_quebramar_molhe_a_tipoquebramolhe_check CHECK ((tipoquebramolhe = 0) OR (tipoquebramolhe = 1) OR (tipoquebramolhe = 2) OR (tipoquebramolhe = 4)),
	 CONSTRAINT hid_quebramar_molhe_a_situacaoemagua_check CHECK ((situacaoemagua = 0) OR (situacaoemagua = 4) OR (situacaoemagua = 5) OR (situacaoemagua = 7)),
	 CONSTRAINT hid_quebramar_molhe_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hid_quebramar_molhe_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_quebramar_molhe_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_quebramar_molhe_a', 'features','edgv_hid_quebramar_molhe_a', 'Camada hid_quebramar_molhe_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_quebramar_molhe_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_quebramar_molhe_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_quebramar_molhe_a" AFTER INSERT ON "edgv_hid_quebramar_molhe_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_quebramar_molhe_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_quebramar_molhe_a" AFTER DELETE ON "edgv_hid_quebramar_molhe_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_quebramar_molhe_a'); END ;

CREATE TABLE edgv_hid_foz_maritima_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiLinestring
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_foz_maritima_l', 'features','edgv_hid_foz_maritima_l', 'Camada hid_foz_maritima_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_foz_maritima_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_foz_maritima_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_foz_maritima_l" AFTER INSERT ON "edgv_hid_foz_maritima_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_foz_maritima_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_foz_maritima_l" AFTER DELETE ON "edgv_hid_foz_maritima_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_foz_maritima_l'); END ;

CREATE TABLE edgv_hid_foz_maritima_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_foz_maritima_p', 'features','edgv_hid_foz_maritima_p', 'Camada hid_foz_maritima_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_foz_maritima_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_foz_maritima_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_foz_maritima_p" AFTER INSERT ON "edgv_hid_foz_maritima_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_foz_maritima_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_foz_maritima_p" AFTER DELETE ON "edgv_hid_foz_maritima_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_foz_maritima_p'); END ;

CREATE TABLE edgv_hid_fonte_dagua_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipofontedagua smallint NOT NULL,
	 qualidagua smallint,
	 regime smallint,
	 geom MultiPoint,
	 CONSTRAINT hid_fonte_dagua_p_tipofontedagua_check CHECK ((tipofontedagua = 0) OR (tipofontedagua = 1) OR (tipofontedagua = 2) OR (tipofontedagua = 3)),
	 CONSTRAINT hid_fonte_dagua_p_qualidagua_check CHECK ((qualidagua = 0) OR (qualidagua = 1) OR (qualidagua = 2) OR (qualidagua = 3) OR (qualidagua = 4)),
	 CONSTRAINT hid_fonte_dagua_p_regime_check CHECK ((regime = 0) OR (regime = 1) OR (regime = 2) OR (regime = 3) OR (regime = 4) OR (regime = 5))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_fonte_dagua_p', 'features','edgv_hid_fonte_dagua_p', 'Camada hid_fonte_dagua_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_fonte_dagua_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_fonte_dagua_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_fonte_dagua_p" AFTER INSERT ON "edgv_hid_fonte_dagua_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_fonte_dagua_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_fonte_dagua_p" AFTER DELETE ON "edgv_hid_fonte_dagua_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_fonte_dagua_p'); END ;

CREATE TABLE edgv_hid_area_umida_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoareaumida smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT hid_area_umida_a_tipoareaumida_check CHECK ((tipoareaumida = 0) OR (tipoareaumida = 3) OR (tipoareaumida = 4))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_area_umida_a', 'features','edgv_hid_area_umida_a', 'Camada hid_area_umida_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_area_umida_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_area_umida_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_area_umida_a" AFTER INSERT ON "edgv_hid_area_umida_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_area_umida_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_area_umida_a" AFTER DELETE ON "edgv_hid_area_umida_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_area_umida_a'); END ;

CREATE TABLE edgv_hid_barragem_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 matconstr smallint NOT NULL,
	 usoprincipal smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT hid_barragem_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hid_barragem_l_usoprincipal_check CHECK ((usoprincipal = 0) OR (usoprincipal = 1) OR (usoprincipal = 2) OR (usoprincipal = 3) OR (usoprincipal = 4) OR (usoprincipal = 5) OR (usoprincipal = 6) OR (usoprincipal = 97) OR (usoprincipal = 99)),
	 CONSTRAINT hid_barragem_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_barragem_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_barragem_l', 'features','edgv_hid_barragem_l', 'Camada hid_barragem_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_barragem_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_barragem_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_barragem_l" AFTER INSERT ON "edgv_hid_barragem_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_barragem_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_barragem_l" AFTER DELETE ON "edgv_hid_barragem_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_barragem_l'); END ;

CREATE TABLE edgv_hid_barragem_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 matconstr smallint NOT NULL,
	 usoprincipal smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT hid_barragem_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hid_barragem_p_usoprincipal_check CHECK ((usoprincipal = 0) OR (usoprincipal = 1) OR (usoprincipal = 2) OR (usoprincipal = 3) OR (usoprincipal = 4) OR (usoprincipal = 5) OR (usoprincipal = 6) OR (usoprincipal = 97) OR (usoprincipal = 99)),
	 CONSTRAINT hid_barragem_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_barragem_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_barragem_p', 'features','edgv_hid_barragem_p', 'Camada hid_barragem_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_barragem_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_barragem_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_barragem_p" AFTER INSERT ON "edgv_hid_barragem_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_barragem_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_barragem_p" AFTER DELETE ON "edgv_hid_barragem_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_barragem_p'); END ;

CREATE TABLE edgv_hid_barragem_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 matconstr smallint NOT NULL,
	 usoprincipal smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT hid_barragem_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT hid_barragem_a_usoprincipal_check CHECK ((usoprincipal = 0) OR (usoprincipal = 1) OR (usoprincipal = 2) OR (usoprincipal = 3) OR (usoprincipal = 4) OR (usoprincipal = 5) OR (usoprincipal = 6) OR (usoprincipal = 97) OR (usoprincipal = 99)),
	 CONSTRAINT hid_barragem_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT hid_barragem_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_hid_barragem_a', 'features','edgv_hid_barragem_a', 'Camada hid_barragem_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_hid_barragem_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_hid_barragem_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_hid_barragem_a" AFTER INSERT ON "edgv_hid_barragem_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_hid_barragem_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_hid_barragem_a" AFTER DELETE ON "edgv_hid_barragem_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_hid_barragem_a'); END ;

CREATE TABLE edgv_laz_sitio_arqueologico_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT laz_sitio_arqueologico_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT laz_sitio_arqueologico_p_cultura_check CHECK ((cultura = 1))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_sitio_arqueologico_p', 'features','edgv_laz_sitio_arqueologico_p', 'Camada laz_sitio_arqueologico_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_sitio_arqueologico_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_sitio_arqueologico_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_sitio_arqueologico_p" AFTER INSERT ON "edgv_laz_sitio_arqueologico_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_sitio_arqueologico_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_sitio_arqueologico_p" AFTER DELETE ON "edgv_laz_sitio_arqueologico_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_sitio_arqueologico_p'); END ;

CREATE TABLE edgv_laz_sitio_arqueologico_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT laz_sitio_arqueologico_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT laz_sitio_arqueologico_a_cultura_check CHECK ((cultura = 1))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_sitio_arqueologico_a', 'features','edgv_laz_sitio_arqueologico_a', 'Camada laz_sitio_arqueologico_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_sitio_arqueologico_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_sitio_arqueologico_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_sitio_arqueologico_a" AFTER INSERT ON "edgv_laz_sitio_arqueologico_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_sitio_arqueologico_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_sitio_arqueologico_a" AFTER DELETE ON "edgv_laz_sitio_arqueologico_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_sitio_arqueologico_a'); END ;

CREATE TABLE edgv_laz_pista_competicao_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipopistacomp smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT laz_pista_competicao_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT laz_pista_competicao_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT laz_pista_competicao_l_tipopistacomp_check CHECK ((tipopistacomp = 0) OR (tipopistacomp = 1) OR (tipopistacomp = 3) OR (tipopistacomp = 4) OR (tipopistacomp = 5) OR (tipopistacomp = 6) OR (tipopistacomp = 7) OR (tipopistacomp = 8) OR (tipopistacomp = 98) OR (tipopistacomp = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_pista_competicao_l', 'features','edgv_laz_pista_competicao_l', 'Camada laz_pista_competicao_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_pista_competicao_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_pista_competicao_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_pista_competicao_l" AFTER INSERT ON "edgv_laz_pista_competicao_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_pista_competicao_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_pista_competicao_l" AFTER DELETE ON "edgv_laz_pista_competicao_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_pista_competicao_l'); END ;

CREATE TABLE edgv_laz_pista_competicao_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipopistacomp smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT laz_pista_competicao_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT laz_pista_competicao_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT laz_pista_competicao_p_tipopistacomp_check CHECK ((tipopistacomp = 0) OR (tipopistacomp = 1) OR (tipopistacomp = 3) OR (tipopistacomp = 4) OR (tipopistacomp = 5) OR (tipopistacomp = 6) OR (tipopistacomp = 7) OR (tipopistacomp = 8) OR (tipopistacomp = 98) OR (tipopistacomp = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_pista_competicao_p', 'features','edgv_laz_pista_competicao_p', 'Camada laz_pista_competicao_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_pista_competicao_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_pista_competicao_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_pista_competicao_p" AFTER INSERT ON "edgv_laz_pista_competicao_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_pista_competicao_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_pista_competicao_p" AFTER DELETE ON "edgv_laz_pista_competicao_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_pista_competicao_p'); END ;

CREATE TABLE edgv_laz_pista_competicao_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipopistacomp smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT laz_pista_competicao_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT laz_pista_competicao_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT laz_pista_competicao_a_tipopistacomp_check CHECK ((tipopistacomp = 0) OR (tipopistacomp = 1) OR (tipopistacomp = 3) OR (tipopistacomp = 4) OR (tipopistacomp = 5) OR (tipopistacomp = 6) OR (tipopistacomp = 7) OR (tipopistacomp = 8) OR (tipopistacomp = 98) OR (tipopistacomp = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_pista_competicao_a', 'features','edgv_laz_pista_competicao_a', 'Camada laz_pista_competicao_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_pista_competicao_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_pista_competicao_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_pista_competicao_a" AFTER INSERT ON "edgv_laz_pista_competicao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_pista_competicao_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_pista_competicao_a" AFTER DELETE ON "edgv_laz_pista_competicao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_pista_competicao_a'); END ;

CREATE TABLE edgv_laz_arquibancada_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT laz_arquibancada_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT laz_arquibancada_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_arquibancada_a', 'features','edgv_laz_arquibancada_a', 'Camada laz_arquibancada_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_arquibancada_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_arquibancada_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_arquibancada_a" AFTER INSERT ON "edgv_laz_arquibancada_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_arquibancada_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_arquibancada_a" AFTER DELETE ON "edgv_laz_arquibancada_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_arquibancada_a'); END ;

CREATE TABLE edgv_laz_campo_quadra_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 tipocampoquadra smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT laz_campo_quadra_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT laz_campo_quadra_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT laz_campo_quadra_p_tipocampoquadra_check CHECK ((tipocampoquadra = 0) OR (tipocampoquadra = 1) OR (tipocampoquadra = 2) OR (tipocampoquadra = 3) OR (tipocampoquadra = 4) OR (tipocampoquadra = 5) OR (tipocampoquadra = 6) OR (tipocampoquadra = 7) OR (tipocampoquadra = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_campo_quadra_p', 'features','edgv_laz_campo_quadra_p', 'Camada laz_campo_quadra_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_campo_quadra_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_campo_quadra_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_campo_quadra_p" AFTER INSERT ON "edgv_laz_campo_quadra_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_campo_quadra_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_campo_quadra_p" AFTER DELETE ON "edgv_laz_campo_quadra_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_campo_quadra_p'); END ;

CREATE TABLE edgv_laz_campo_quadra_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 tipocampoquadra smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT laz_campo_quadra_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT laz_campo_quadra_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT laz_campo_quadra_a_tipocampoquadra_check CHECK ((tipocampoquadra = 0) OR (tipocampoquadra = 1) OR (tipocampoquadra = 2) OR (tipocampoquadra = 3) OR (tipocampoquadra = 4) OR (tipocampoquadra = 5) OR (tipocampoquadra = 6) OR (tipocampoquadra = 7) OR (tipocampoquadra = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_campo_quadra_a', 'features','edgv_laz_campo_quadra_a', 'Camada laz_campo_quadra_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_campo_quadra_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_campo_quadra_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_campo_quadra_a" AFTER INSERT ON "edgv_laz_campo_quadra_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_campo_quadra_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_campo_quadra_a" AFTER DELETE ON "edgv_laz_campo_quadra_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_campo_quadra_a'); END ;

CREATE TABLE edgv_laz_piscina_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 geom MultiPolygon,
	 CONSTRAINT laz_piscina_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT laz_piscina_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_piscina_a', 'features','edgv_laz_piscina_a', 'Camada laz_piscina_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_piscina_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_piscina_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_piscina_a" AFTER INSERT ON "edgv_laz_piscina_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_piscina_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_piscina_a" AFTER DELETE ON "edgv_laz_piscina_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_piscina_a'); END ;

CREATE TABLE edgv_laz_ruina_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT laz_ruina_p_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT laz_ruina_p_cultura_check CHECK ((cultura = 1))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_ruina_p', 'features','edgv_laz_ruina_p', 'Camada laz_ruina_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_ruina_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_ruina_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_ruina_p" AFTER INSERT ON "edgv_laz_ruina_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_ruina_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_ruina_p" AFTER DELETE ON "edgv_laz_ruina_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_ruina_p'); END ;

CREATE TABLE edgv_laz_ruina_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 turistica smallint NOT NULL,
	 cultura smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT laz_ruina_a_turistica_check CHECK ((turistica = 0) OR (turistica = 1) OR (turistica = 2)),
	 CONSTRAINT laz_ruina_a_cultura_check CHECK ((cultura = 1))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_laz_ruina_a', 'features','edgv_laz_ruina_a', 'Camada laz_ruina_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_laz_ruina_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_laz_ruina_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_laz_ruina_a" AFTER INSERT ON "edgv_laz_ruina_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_laz_ruina_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_laz_ruina_a" AFTER DELETE ON "edgv_laz_ruina_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_laz_ruina_a'); END ;

CREATE TABLE edgv_lml_pais_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 sigla varchar(3),
	 codiso3166 varchar(3),
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_pais_a', 'features','edgv_lml_pais_a', 'Camada lml_pais_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_pais_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_pais_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_pais_a" AFTER INSERT ON "edgv_lml_pais_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_pais_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_pais_a" AFTER DELETE ON "edgv_lml_pais_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_pais_a'); END ;

CREATE TABLE edgv_lml_posic_geo_localidade_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 identificador varchar(80),
	 latitude varchar(15) NOT NULL,
	 longitude varchar(15) NOT NULL,
	 nomelocal varchar(80) NOT NULL,
	 anodereferencia integer NOT NULL,
	 tipolocalidade smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT lml_posic_geo_localidade_p_tipolocalidade_check CHECK ((tipolocalidade = 0) OR (tipolocalidade = 1) OR (tipolocalidade = 2) OR (tipolocalidade = 3) OR (tipolocalidade = 4) OR (tipolocalidade = 5) OR (tipolocalidade = 6))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_posic_geo_localidade_p', 'features','edgv_lml_posic_geo_localidade_p', 'Camada lml_posic_geo_localidade_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_posic_geo_localidade_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_posic_geo_localidade_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_posic_geo_localidade_p" AFTER INSERT ON "edgv_lml_posic_geo_localidade_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_posic_geo_localidade_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_posic_geo_localidade_p" AFTER DELETE ON "edgv_lml_posic_geo_localidade_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_posic_geo_localidade_p'); END ;

CREATE TABLE edgv_lml_distrito_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geocodigo varchar(15) NOT NULL,
	 anodereferencia integer,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_distrito_a', 'features','edgv_lml_distrito_a', 'Camada lml_distrito_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_distrito_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_distrito_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_distrito_a" AFTER INSERT ON "edgv_lml_distrito_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_distrito_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_distrito_a" AFTER DELETE ON "edgv_lml_distrito_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_distrito_a'); END ;

CREATE TABLE edgv_lml_area_densamente_edificada_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_area_densamente_edificada_a', 'features','edgv_lml_area_densamente_edificada_a', 'Camada lml_area_densamente_edificada_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_area_densamente_edificada_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_area_densamente_edificada_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_area_densamente_edificada_a" AFTER INSERT ON "edgv_lml_area_densamente_edificada_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_area_densamente_edificada_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_area_densamente_edificada_a" AFTER DELETE ON "edgv_lml_area_densamente_edificada_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_area_densamente_edificada_a'); END ;

CREATE TABLE edgv_lml_unidade_federacao_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geocodigo varchar(15) NOT NULL,
	 sigla smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT lml_unidade_federacao_a_sigla_check CHECK ((sigla = 1) OR (sigla = 2) OR (sigla = 3) OR (sigla = 4) OR (sigla = 5) OR (sigla = 6) OR (sigla = 7) OR (sigla = 8) OR (sigla = 9) OR (sigla = 10) OR (sigla = 11) OR (sigla = 12) OR (sigla = 13) OR (sigla = 14) OR (sigla = 15) OR (sigla = 16) OR (sigla = 17) OR (sigla = 18) OR (sigla = 19) OR (sigla = 20) OR (sigla = 21) OR (sigla = 22) OR (sigla = 23) OR (sigla = 24) OR (sigla = 25) OR (sigla = 26) OR (sigla = 27))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_unidade_federacao_a', 'features','edgv_lml_unidade_federacao_a', 'Camada lml_unidade_federacao_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_unidade_federacao_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_unidade_federacao_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_unidade_federacao_a" AFTER INSERT ON "edgv_lml_unidade_federacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_unidade_federacao_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_unidade_federacao_a" AFTER DELETE ON "edgv_lml_unidade_federacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_unidade_federacao_a'); END ;

CREATE TABLE edgv_lml_terra_indigena_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 codidentificadorunico varchar(50),
	 arealegal real,
	 classificacao varchar(100),
	 jurisdicao smallint NOT NULL,
	 administracao smallint NOT NULL,
	 situacaojuridica smallint NOT NULL,
	 datasituacaojuridica varchar(10),
	 grupoetnico varchar(100),
	 perimetrooficial real,
	 geom MultiPolygon,
	 CONSTRAINT lml_terra_indigena_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT lml_terra_indigena_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT lml_terra_indigena_a_situacaojuridica_check CHECK ((situacaojuridica = 1) OR (situacaojuridica = 2) OR (situacaojuridica = 3) OR (situacaojuridica = 4))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_terra_indigena_a', 'features','edgv_lml_terra_indigena_a', 'Camada lml_terra_indigena_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_terra_indigena_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_terra_indigena_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_terra_indigena_a" AFTER INSERT ON "edgv_lml_terra_indigena_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_terra_indigena_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_terra_indigena_a" AFTER DELETE ON "edgv_lml_terra_indigena_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_terra_indigena_a'); END ;

CREATE TABLE edgv_lml_unidade_protecao_integral_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 codidentificadorunico varchar(50),
	 arealegal real,
	 anocriacao varchar(4),
	 historicomodificacoes varchar(255),
	 sigla varchar(6),
	 atolegal varchar(100),
	 areaoficial varchar(15),
	 administracao smallint NOT NULL,
	 classificacao varchar(100),
	 jurisdicao smallint NOT NULL,
	 tipounidprotegida smallint NOT NULL,
	 tipounidprotinteg smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT lml_unidade_protecao_integral_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT lml_unidade_protecao_integral_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT lml_unidade_protecao_integral_a_tipounidprotegida_check CHECK ((tipounidprotegida = 2)),
	 CONSTRAINT lml_unidade_protecao_integral_a_tipounidprotinteg_check CHECK ((tipounidprotinteg = 1) OR (tipounidprotinteg = 2) OR (tipounidprotinteg = 3) OR (tipounidprotinteg = 4) OR (tipounidprotinteg = 5))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_unidade_protecao_integral_a', 'features','edgv_lml_unidade_protecao_integral_a', 'Camada lml_unidade_protecao_integral_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_unidade_protecao_integral_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_unidade_protecao_integral_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_unidade_protecao_integral_a" AFTER INSERT ON "edgv_lml_unidade_protecao_integral_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_unidade_protecao_integral_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_unidade_protecao_integral_a" AFTER DELETE ON "edgv_lml_unidade_protecao_integral_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_unidade_protecao_integral_a'); END ;

CREATE TABLE edgv_lml_unidade_uso_sustentavel_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 codidentificadorunico varchar(50),
	 arealegal real,
	 anocriacao varchar(4),
	 historicomodificacoes varchar(255),
	 sigla varchar(6),
	 atolegal varchar(100),
	 areaoficial varchar(15),
	 administracao smallint NOT NULL,
	 classificacao varchar(100),
	 jurisdicao smallint NOT NULL,
	 tipounidprotegida smallint NOT NULL,
	 tipounidusosust smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT lml_unidade_uso_sustentavel_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT lml_unidade_uso_sustentavel_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT lml_unidade_uso_sustentavel_a_tipounidprotegida_check CHECK ((tipounidprotegida = 3)),
	 CONSTRAINT lml_unidade_uso_sustentavel_a_tipounidusosust_check CHECK ((tipounidusosust = 1) OR (tipounidusosust = 2) OR (tipounidusosust = 3) OR (tipounidusosust = 4) OR (tipounidusosust = 5) OR (tipounidusosust = 6) OR (tipounidusosust = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_unidade_uso_sustentavel_a', 'features','edgv_lml_unidade_uso_sustentavel_a', 'Camada lml_unidade_uso_sustentavel_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_unidade_uso_sustentavel_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_unidade_uso_sustentavel_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_unidade_uso_sustentavel_a" AFTER INSERT ON "edgv_lml_unidade_uso_sustentavel_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_unidade_uso_sustentavel_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_unidade_uso_sustentavel_a" AFTER DELETE ON "edgv_lml_unidade_uso_sustentavel_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_unidade_uso_sustentavel_a'); END ;

CREATE TABLE edgv_lml_municipio_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geocodigo varchar(15) NOT NULL,
	 anodereferencia integer,
	 geom MultiPolygon
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_municipio_a', 'features','edgv_lml_municipio_a', 'Camada lml_municipio_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_municipio_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_municipio_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_municipio_a" AFTER INSERT ON "edgv_lml_municipio_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_municipio_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_municipio_a" AFTER DELETE ON "edgv_lml_municipio_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_municipio_a'); END ;

CREATE TABLE edgv_lml_terra_publica_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 codidentificadorunico varchar(50),
	 arealegal real,
	 classificacao varchar(100),
	 jurisdicao smallint NOT NULL,
	 administracao smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT lml_terra_publica_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT lml_terra_publica_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_terra_publica_a', 'features','edgv_lml_terra_publica_a', 'Camada lml_terra_publica_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_terra_publica_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_terra_publica_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_terra_publica_a" AFTER INSERT ON "edgv_lml_terra_publica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_terra_publica_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_terra_publica_a" AFTER DELETE ON "edgv_lml_terra_publica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_terra_publica_a'); END ;

CREATE TABLE edgv_lml_area_pub_militar_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 codidentificadorunico varchar(50),
	 arealegal real,
	 classificacao varchar(100),
	 administracao smallint NOT NULL,
	 jurisdicao smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT lml_area_pub_militar_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4)),
	 CONSTRAINT lml_area_pub_militar_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_area_pub_militar_a', 'features','edgv_lml_area_pub_militar_a', 'Camada lml_area_pub_militar_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_area_pub_militar_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_area_pub_militar_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_area_pub_militar_a" AFTER INSERT ON "edgv_lml_area_pub_militar_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_area_pub_militar_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_area_pub_militar_a" AFTER DELETE ON "edgv_lml_area_pub_militar_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_area_pub_militar_a'); END ;

CREATE TABLE edgv_lml_area_urbana_isolada_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoassociado smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT lml_area_urbana_isolada_a_tipoassociado_check CHECK ((tipoassociado = 1) OR (tipoassociado = 4))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_area_urbana_isolada_a', 'features','edgv_lml_area_urbana_isolada_a', 'Camada lml_area_urbana_isolada_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_area_urbana_isolada_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_area_urbana_isolada_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_area_urbana_isolada_a" AFTER INSERT ON "edgv_lml_area_urbana_isolada_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_area_urbana_isolada_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_area_urbana_isolada_a" AFTER DELETE ON "edgv_lml_area_urbana_isolada_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_area_urbana_isolada_a'); END ;

CREATE TABLE edgv_lml_nome_local_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80) NOT NULL,
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_nome_local_p', 'features','edgv_lml_nome_local_p', 'Camada lml_nome_local_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_nome_local_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_nome_local_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_nome_local_p" AFTER INSERT ON "edgv_lml_nome_local_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_nome_local_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_nome_local_p" AFTER DELETE ON "edgv_lml_nome_local_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_nome_local_p'); END ;

CREATE TABLE edgv_lml_unidade_conservacao_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 codidentificadorunico varchar(50),
	 arealegal real,
	 anocriacao varchar(4),
	 historicomodificacoes varchar(255),
	 sigla varchar(6),
	 atolegal varchar(100),
	 areaoficial varchar(15),
	 administracao smallint NOT NULL,
	 classificacao varchar(100),
	 jurisdicao smallint NOT NULL,
	 tipounidprotegida smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT lml_unidade_conservacao_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT lml_unidade_conservacao_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT lml_unidade_conservacao_a_tipounidprotegida_check CHECK ((tipounidprotegida = 4))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_lml_unidade_conservacao_a', 'features','edgv_lml_unidade_conservacao_a', 'Camada lml_unidade_conservacao_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_lml_unidade_conservacao_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_lml_unidade_conservacao_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_lml_unidade_conservacao_a" AFTER INSERT ON "edgv_lml_unidade_conservacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_lml_unidade_conservacao_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_lml_unidade_conservacao_a" AFTER DELETE ON "edgv_lml_unidade_conservacao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_lml_unidade_conservacao_a'); END ;

CREATE TABLE edgv_pto_marco_de_limite_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipomarcolim smallint NOT NULL,
	 latitude varchar(15) NOT NULL,
	 longitude varchar(15) NOT NULL,
	 altitudeortometrica real,
	 sistemageodesico smallint NOT NULL,
	 outrarefplan varchar(20),
	 referencialaltim smallint,
	 outrarefalt varchar(20),
	 codigo varchar(9),
	 orgaoenteresp varchar(15),
	 geom MultiPoint,
	 CONSTRAINT pto_marco_de_limite_p_tipomarcolim_check CHECK ((tipomarcolim = 3) OR (tipomarcolim = 23) OR (tipomarcolim = 24) OR (tipomarcolim = 25) OR (tipomarcolim = 26) OR (tipomarcolim = 99)),
	 CONSTRAINT pto_marco_de_limite_p_sistemageodesico_check CHECK ((sistemageodesico = 1) OR (sistemageodesico = 2) OR (sistemageodesico = 3) OR (sistemageodesico = 4) OR (sistemageodesico = 5) OR (sistemageodesico = 6) OR (sistemageodesico = 7)),
	 CONSTRAINT pto_marco_de_limite_p_referencialaltim_check CHECK ((referencialaltim = 1) OR (referencialaltim = 2) OR (referencialaltim = 3) OR (referencialaltim = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_pto_marco_de_limite_p', 'features','edgv_pto_marco_de_limite_p', 'Camada pto_marco_de_limite_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_pto_marco_de_limite_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_pto_marco_de_limite_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_pto_marco_de_limite_p" AFTER INSERT ON "edgv_pto_marco_de_limite_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_pto_marco_de_limite_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_pto_marco_de_limite_p" AFTER DELETE ON "edgv_pto_marco_de_limite_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_pto_marco_de_limite_p'); END ;

CREATE TABLE edgv_pto_pto_ref_geod_topo_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 tiporef smallint NOT NULL,
	 latitude varchar(15) NOT NULL,
	 longitude varchar(15) NOT NULL,
	 altitudeortometrica real,
	 altitudegeometrica real,
	 sistemageodesico smallint NOT NULL,
	 outrarefplan varchar(20),
	 referencialaltim smallint NOT NULL,
	 outrarefalt varchar(20),
	 codponto varchar(9),
	 obs varchar(255),
	 nome varchar(80),
	 proximidade smallint NOT NULL,
	 tipoptorefgeodtopo smallint NOT NULL,
	 redereferencia smallint NOT NULL,
	 referencialgrav smallint NOT NULL,
	 situacaomarco smallint,
	 datavisita varchar(10),
	 datamedicao varchar(10),
	 valorgravidade real,
	 geom MultiPoint,
	 CONSTRAINT pto_pto_ref_geod_topo_p_tiporef_check CHECK ((tiporef = 1) OR (tiporef = 2) OR (tiporef = 3) OR (tiporef = 4)),
	 CONSTRAINT pto_pto_ref_geod_topo_p_sistemageodesico_check CHECK ((sistemageodesico = 1) OR (sistemageodesico = 2) OR (sistemageodesico = 3) OR (sistemageodesico = 4) OR (sistemageodesico = 5) OR (sistemageodesico = 6) OR (sistemageodesico = 7)),
	 CONSTRAINT pto_pto_ref_geod_topo_p_referencialaltim_check CHECK ((referencialaltim = 1) OR (referencialaltim = 2) OR (referencialaltim = 3) OR (referencialaltim = 99)),
	 CONSTRAINT pto_pto_ref_geod_topo_p_proximidade_check CHECK ((proximidade = 0) OR (proximidade = 14) OR (proximidade = 15) OR (proximidade = 16)),
	 CONSTRAINT pto_pto_ref_geod_topo_p_tipoptorefgeodtopo_check CHECK ((tipoptorefgeodtopo = 0) OR (tipoptorefgeodtopo = 1) OR (tipoptorefgeodtopo = 2) OR (tipoptorefgeodtopo = 3) OR (tipoptorefgeodtopo = 4) OR (tipoptorefgeodtopo = 5) OR (tipoptorefgeodtopo = 6) OR (tipoptorefgeodtopo = 7) OR (tipoptorefgeodtopo = 8) OR (tipoptorefgeodtopo = 99)),
	 CONSTRAINT pto_pto_ref_geod_topo_p_redereferencia_check CHECK ((redereferencia = 0) OR (redereferencia = 2) OR (redereferencia = 3) OR (redereferencia = 14) OR (redereferencia = 15)),
	 CONSTRAINT pto_pto_ref_geod_topo_p_referencialgrav_check CHECK ((referencialgrav = 0) OR (referencialgrav = 1) OR (referencialgrav = 2) OR (referencialgrav = 3) OR (referencialgrav = 4) OR (referencialgrav = 5) OR (referencialgrav = 97)),
	 CONSTRAINT pto_pto_ref_geod_topo_p_situacaomarco_check CHECK ((situacaomarco = 0) OR (situacaomarco = 1) OR (situacaomarco = 2) OR (situacaomarco = 3) OR (situacaomarco = 4) OR (situacaomarco = 5) OR (situacaomarco = 6) OR (situacaomarco = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_pto_pto_ref_geod_topo_p', 'features','edgv_pto_pto_ref_geod_topo_p', 'Camada pto_pto_ref_geod_topo_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_pto_pto_ref_geod_topo_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_pto_pto_ref_geod_topo_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_pto_pto_ref_geod_topo_p" AFTER INSERT ON "edgv_pto_pto_ref_geod_topo_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_pto_pto_ref_geod_topo_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_pto_pto_ref_geod_topo_p" AFTER DELETE ON "edgv_pto_pto_ref_geod_topo_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_pto_pto_ref_geod_topo_p'); END ;

CREATE TABLE edgv_pto_pto_geod_topo_controle_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 tiporef smallint NOT NULL,
	 latitude varchar(15) NOT NULL,
	 longitude varchar(15) NOT NULL,
	 altitudeortometrica real,
	 altitudegeometrica real,
	 sistemageodesico smallint NOT NULL,
	 outrarefplan varchar(20),
	 referencialaltim smallint NOT NULL,
	 outrarefalt varchar(20),
	 codponto varchar(9),
	 obs varchar(255),
	 geom MultiPoint,
	 CONSTRAINT pto_pto_geod_topo_controle_p_tiporef_check CHECK ((tiporef = 1) OR (tiporef = 2) OR (tiporef = 3) OR (tiporef = 4)),
	 CONSTRAINT pto_pto_geod_topo_controle_p_sistemageodesico_check CHECK ((sistemageodesico = 1) OR (sistemageodesico = 2) OR (sistemageodesico = 3) OR (sistemageodesico = 4) OR (sistemageodesico = 5) OR (sistemageodesico = 6) OR (sistemageodesico = 7)),
	 CONSTRAINT pto_pto_geod_topo_controle_p_referencialaltim_check CHECK ((referencialaltim = 1) OR (referencialaltim = 2) OR (referencialaltim = 3) OR (referencialaltim = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_pto_pto_geod_topo_controle_p', 'features','edgv_pto_pto_geod_topo_controle_p', 'Camada pto_pto_geod_topo_controle_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_pto_pto_geod_topo_controle_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_pto_pto_geod_topo_controle_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_pto_pto_geod_topo_controle_p" AFTER INSERT ON "edgv_pto_pto_geod_topo_controle_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_pto_pto_geod_topo_controle_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_pto_pto_geod_topo_controle_p" AFTER DELETE ON "edgv_pto_pto_geod_topo_controle_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_pto_pto_geod_topo_controle_p'); END ;

CREATE TABLE edgv_pto_pto_est_med_fenomenos_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoptoestmed smallint NOT NULL,
	 codestacao varchar(50),
	 geom MultiPoint,
	 CONSTRAINT pto_pto_est_med_fenomenos_p_tipoptoestmed_check CHECK ((tipoptoestmed = 0) OR (tipoptoestmed = 1) OR (tipoptoestmed = 2) OR (tipoptoestmed = 3) OR (tipoptoestmed = 4) OR (tipoptoestmed = 5) OR (tipoptoestmed = 6) OR (tipoptoestmed = 7) OR (tipoptoestmed = 8) OR (tipoptoestmed = 9) OR (tipoptoestmed = 10) OR (tipoptoestmed = 11) OR (tipoptoestmed = 12) OR (tipoptoestmed = 13) OR (tipoptoestmed = 14))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_pto_pto_est_med_fenomenos_p', 'features','edgv_pto_pto_est_med_fenomenos_p', 'Camada pto_pto_est_med_fenomenos_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_pto_pto_est_med_fenomenos_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_pto_pto_est_med_fenomenos_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_pto_pto_est_med_fenomenos_p" AFTER INSERT ON "edgv_pto_pto_est_med_fenomenos_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_pto_pto_est_med_fenomenos_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_pto_pto_est_med_fenomenos_p" AFTER DELETE ON "edgv_pto_pto_est_med_fenomenos_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_pto_pto_est_med_fenomenos_p'); END ;

CREATE TABLE edgv_rel_curva_nivel_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 cota integer NOT NULL,
	 depressao boolean NOT NULL,
	 tipocurvanivel smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT rel_curva_nivel_l_tipocurvanivel_check CHECK ((tipocurvanivel = 1) OR (tipocurvanivel = 2) OR (tipocurvanivel = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_curva_nivel_l', 'features','edgv_rel_curva_nivel_l', 'Camada rel_curva_nivel_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_curva_nivel_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_curva_nivel_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_curva_nivel_l" AFTER INSERT ON "edgv_rel_curva_nivel_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_curva_nivel_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_curva_nivel_l" AFTER DELETE ON "edgv_rel_curva_nivel_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_curva_nivel_l'); END ;

CREATE TABLE edgv_rel_gruta_caverna_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT rel_gruta_caverna_l_tipoelemnat_check CHECK ((tipoelemnat = 15) OR (tipoelemnat = 20))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_gruta_caverna_l', 'features','edgv_rel_gruta_caverna_l', 'Camada rel_gruta_caverna_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_gruta_caverna_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_gruta_caverna_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_gruta_caverna_l" AFTER INSERT ON "edgv_rel_gruta_caverna_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_gruta_caverna_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_gruta_caverna_l" AFTER DELETE ON "edgv_rel_gruta_caverna_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_gruta_caverna_l'); END ;

CREATE TABLE edgv_rel_gruta_caverna_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT rel_gruta_caverna_p_tipoelemnat_check CHECK ((tipoelemnat = 15) OR (tipoelemnat = 20))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_gruta_caverna_p', 'features','edgv_rel_gruta_caverna_p', 'Camada rel_gruta_caverna_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_gruta_caverna_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_gruta_caverna_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_gruta_caverna_p" AFTER INSERT ON "edgv_rel_gruta_caverna_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_gruta_caverna_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_gruta_caverna_p" AFTER DELETE ON "edgv_rel_gruta_caverna_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_gruta_caverna_p'); END ;

CREATE TABLE edgv_rel_rocha_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 formarocha smallint,
	 geom MultiLinestring,
	 CONSTRAINT rel_rocha_l_tipoelemnat_check CHECK ((tipoelemnat = 23)),
	 CONSTRAINT rel_rocha_l_formarocha_check CHECK ((formarocha = 0) OR (formarocha = 21) OR (formarocha = 22) OR (formarocha = 23))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_rocha_l', 'features','edgv_rel_rocha_l', 'Camada rel_rocha_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_rocha_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_rocha_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_rocha_l" AFTER INSERT ON "edgv_rel_rocha_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_rocha_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_rocha_l" AFTER DELETE ON "edgv_rel_rocha_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_rocha_l'); END ;

CREATE TABLE edgv_rel_rocha_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 formarocha smallint,
	 geom MultiPoint,
	 CONSTRAINT rel_rocha_p_tipoelemnat_check CHECK ((tipoelemnat = 23)),
	 CONSTRAINT rel_rocha_p_formarocha_check CHECK ((formarocha = 0) OR (formarocha = 21) OR (formarocha = 22) OR (formarocha = 23))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_rocha_p', 'features','edgv_rel_rocha_p', 'Camada rel_rocha_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_rocha_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_rocha_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_rocha_p" AFTER INSERT ON "edgv_rel_rocha_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_rocha_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_rocha_p" AFTER DELETE ON "edgv_rel_rocha_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_rocha_p'); END ;

CREATE TABLE edgv_rel_rocha_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 formarocha smallint,
	 geom MultiPolygon,
	 CONSTRAINT rel_rocha_a_tipoelemnat_check CHECK ((tipoelemnat = 23)),
	 CONSTRAINT rel_rocha_a_formarocha_check CHECK ((formarocha = 0) OR (formarocha = 21) OR (formarocha = 22) OR (formarocha = 23))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_rocha_a', 'features','edgv_rel_rocha_a', 'Camada rel_rocha_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_rocha_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_rocha_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_rocha_a" AFTER INSERT ON "edgv_rel_rocha_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_rocha_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_rocha_a" AFTER DELETE ON "edgv_rel_rocha_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_rocha_a'); END ;

CREATE TABLE edgv_rel_corte_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT rel_corte_l_tipoalterantrop_check CHECK ((tipoalterantrop = 26)),
	 CONSTRAINT rel_corte_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 4) OR (matconstr = 23) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_corte_l', 'features','edgv_rel_corte_l', 'Camada rel_corte_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_corte_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_corte_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_corte_l" AFTER INSERT ON "edgv_rel_corte_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_corte_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_corte_l" AFTER DELETE ON "edgv_rel_corte_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_corte_l'); END ;

CREATE TABLE edgv_rel_corte_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT rel_corte_p_tipoalterantrop_check CHECK ((tipoalterantrop = 26)),
	 CONSTRAINT rel_corte_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 4) OR (matconstr = 23) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_corte_p', 'features','edgv_rel_corte_p', 'Camada rel_corte_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_corte_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_corte_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_corte_p" AFTER INSERT ON "edgv_rel_corte_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_corte_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_corte_p" AFTER DELETE ON "edgv_rel_corte_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_corte_p'); END ;

CREATE TABLE edgv_rel_corte_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT rel_corte_a_tipoalterantrop_check CHECK ((tipoalterantrop = 26)),
	 CONSTRAINT rel_corte_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 4) OR (matconstr = 23) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_corte_a', 'features','edgv_rel_corte_a', 'Camada rel_corte_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_corte_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_corte_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_corte_a" AFTER INSERT ON "edgv_rel_corte_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_corte_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_corte_a" AFTER DELETE ON "edgv_rel_corte_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_corte_a'); END ;

CREATE TABLE edgv_rel_terreno_exposto_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 tipoterrexp smallint,
	 causaexposicao smallint,
	 geom MultiPolygon,
	 CONSTRAINT rel_terreno_exposto_a_tipoterrexp_check CHECK ((tipoterrexp = 0) OR (tipoterrexp = 4) OR (tipoterrexp = 12) OR (tipoterrexp = 18) OR (tipoterrexp = 23) OR (tipoterrexp = 24)),
	 CONSTRAINT rel_terreno_exposto_a_causaexposicao_check CHECK ((causaexposicao = 0) OR (causaexposicao = 2) OR (causaexposicao = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_terreno_exposto_a', 'features','edgv_rel_terreno_exposto_a', 'Camada rel_terreno_exposto_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_terreno_exposto_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_terreno_exposto_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_terreno_exposto_a" AFTER INSERT ON "edgv_rel_terreno_exposto_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_terreno_exposto_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_terreno_exposto_a" AFTER DELETE ON "edgv_rel_terreno_exposto_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_terreno_exposto_a'); END ;

CREATE TABLE edgv_rel_dolina_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT rel_dolina_p_tipoelemnat_check CHECK ((tipoelemnat = 16))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_dolina_p', 'features','edgv_rel_dolina_p', 'Camada rel_dolina_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_dolina_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_dolina_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_dolina_p" AFTER INSERT ON "edgv_rel_dolina_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_dolina_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_dolina_p" AFTER DELETE ON "edgv_rel_dolina_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_dolina_p'); END ;

CREATE TABLE edgv_rel_dolina_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT rel_dolina_a_tipoelemnat_check CHECK ((tipoelemnat = 16))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_dolina_a', 'features','edgv_rel_dolina_a', 'Camada rel_dolina_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_dolina_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_dolina_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_dolina_a" AFTER INSERT ON "edgv_rel_dolina_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_dolina_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_dolina_a" AFTER DELETE ON "edgv_rel_dolina_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_dolina_a'); END ;

CREATE TABLE edgv_rel_aterro_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT rel_aterro_l_tipoalterantrop_check CHECK ((tipoalterantrop = 27)),
	 CONSTRAINT rel_aterro_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 4) OR (matconstr = 23) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_aterro_l', 'features','edgv_rel_aterro_l', 'Camada rel_aterro_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_aterro_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_aterro_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_aterro_l" AFTER INSERT ON "edgv_rel_aterro_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_aterro_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_aterro_l" AFTER DELETE ON "edgv_rel_aterro_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_aterro_l'); END ;

CREATE TABLE edgv_rel_aterro_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT rel_aterro_p_tipoalterantrop_check CHECK ((tipoalterantrop = 27)),
	 CONSTRAINT rel_aterro_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 4) OR (matconstr = 23) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_aterro_p', 'features','edgv_rel_aterro_p', 'Camada rel_aterro_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_aterro_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_aterro_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_aterro_p" AFTER INSERT ON "edgv_rel_aterro_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_aterro_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_aterro_p" AFTER DELETE ON "edgv_rel_aterro_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_aterro_p'); END ;

CREATE TABLE edgv_rel_aterro_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT rel_aterro_a_tipoalterantrop_check CHECK ((tipoalterantrop = 27)),
	 CONSTRAINT rel_aterro_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 4) OR (matconstr = 23) OR (matconstr = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_aterro_a', 'features','edgv_rel_aterro_a', 'Camada rel_aterro_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_aterro_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_aterro_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_aterro_a" AFTER INSERT ON "edgv_rel_aterro_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_aterro_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_aterro_a" AFTER DELETE ON "edgv_rel_aterro_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_aterro_a'); END ;

CREATE TABLE edgv_rel_ponto_cotado_altimetrico_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 cotacomprovada boolean NOT NULL,
	 cota real NOT NULL,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_ponto_cotado_altimetrico_p', 'features','edgv_rel_ponto_cotado_altimetrico_p', 'Camada rel_ponto_cotado_altimetrico_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_ponto_cotado_altimetrico_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_ponto_cotado_altimetrico_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_ponto_cotado_altimetrico_p" AFTER INSERT ON "edgv_rel_ponto_cotado_altimetrico_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_ponto_cotado_altimetrico_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_ponto_cotado_altimetrico_p" AFTER DELETE ON "edgv_rel_ponto_cotado_altimetrico_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_ponto_cotado_altimetrico_p'); END ;

CREATE TABLE edgv_rel_elemento_fisiografico_natural_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT rel_elemento_fisiografico_natural_l_tipoelemnat_check CHECK ((tipoelemnat = 1) OR (tipoelemnat = 2) OR (tipoelemnat = 3) OR (tipoelemnat = 4) OR (tipoelemnat = 5) OR (tipoelemnat = 6) OR (tipoelemnat = 7) OR (tipoelemnat = 8) OR (tipoelemnat = 9) OR (tipoelemnat = 10) OR (tipoelemnat = 11) OR (tipoelemnat = 12) OR (tipoelemnat = 13) OR (tipoelemnat = 14) OR (tipoelemnat = 18) OR (tipoelemnat = 19) OR (tipoelemnat = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_elemento_fisiografico_natural_l', 'features','edgv_rel_elemento_fisiografico_natural_l', 'Camada rel_elemento_fisiografico_natural_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_elemento_fisiografico_natural_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_elemento_fisiografico_natural_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_elemento_fisiografico_natural_l" AFTER INSERT ON "edgv_rel_elemento_fisiografico_natural_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_elemento_fisiografico_natural_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_elemento_fisiografico_natural_l" AFTER DELETE ON "edgv_rel_elemento_fisiografico_natural_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_elemento_fisiografico_natural_l'); END ;

CREATE TABLE edgv_rel_elemento_fisiografico_natural_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT rel_elemento_fisiografico_natural_p_tipoelemnat_check CHECK ((tipoelemnat = 1) OR (tipoelemnat = 2) OR (tipoelemnat = 3) OR (tipoelemnat = 4) OR (tipoelemnat = 5) OR (tipoelemnat = 6) OR (tipoelemnat = 7) OR (tipoelemnat = 8) OR (tipoelemnat = 9) OR (tipoelemnat = 10) OR (tipoelemnat = 11) OR (tipoelemnat = 12) OR (tipoelemnat = 13) OR (tipoelemnat = 14) OR (tipoelemnat = 18) OR (tipoelemnat = 19) OR (tipoelemnat = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_elemento_fisiografico_natural_p', 'features','edgv_rel_elemento_fisiografico_natural_p', 'Camada rel_elemento_fisiografico_natural_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_elemento_fisiografico_natural_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_elemento_fisiografico_natural_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_elemento_fisiografico_natural_p" AFTER INSERT ON "edgv_rel_elemento_fisiografico_natural_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_elemento_fisiografico_natural_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_elemento_fisiografico_natural_p" AFTER DELETE ON "edgv_rel_elemento_fisiografico_natural_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_elemento_fisiografico_natural_p'); END ;

CREATE TABLE edgv_rel_elemento_fisiografico_natural_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT rel_elemento_fisiografico_natural_a_tipoelemnat_check CHECK ((tipoelemnat = 1) OR (tipoelemnat = 2) OR (tipoelemnat = 3) OR (tipoelemnat = 4) OR (tipoelemnat = 5) OR (tipoelemnat = 6) OR (tipoelemnat = 7) OR (tipoelemnat = 8) OR (tipoelemnat = 9) OR (tipoelemnat = 10) OR (tipoelemnat = 11) OR (tipoelemnat = 12) OR (tipoelemnat = 13) OR (tipoelemnat = 14) OR (tipoelemnat = 18) OR (tipoelemnat = 19) OR (tipoelemnat = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_elemento_fisiografico_natural_a', 'features','edgv_rel_elemento_fisiografico_natural_a', 'Camada rel_elemento_fisiografico_natural_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_elemento_fisiografico_natural_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_elemento_fisiografico_natural_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_elemento_fisiografico_natural_a" AFTER INSERT ON "edgv_rel_elemento_fisiografico_natural_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_elemento_fisiografico_natural_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_elemento_fisiografico_natural_a" AFTER DELETE ON "edgv_rel_elemento_fisiografico_natural_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_elemento_fisiografico_natural_a'); END ;

CREATE TABLE edgv_rel_pico_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT rel_pico_p_tipoelemnat_check CHECK ((tipoelemnat = 22))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_pico_p', 'features','edgv_rel_pico_p', 'Camada rel_pico_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_pico_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_pico_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_pico_p" AFTER INSERT ON "edgv_rel_pico_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_pico_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_pico_p" AFTER DELETE ON "edgv_rel_pico_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_pico_p'); END ;

CREATE TABLE edgv_rel_duna_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 fixa boolean NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT rel_duna_l_tipoelemnat_check CHECK ((tipoelemnat = 17))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_duna_l', 'features','edgv_rel_duna_l', 'Camada rel_duna_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_duna_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_duna_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_duna_l" AFTER INSERT ON "edgv_rel_duna_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_duna_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_duna_l" AFTER DELETE ON "edgv_rel_duna_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_duna_l'); END ;

CREATE TABLE edgv_rel_duna_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 fixa boolean NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT rel_duna_p_tipoelemnat_check CHECK ((tipoelemnat = 17))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_duna_p', 'features','edgv_rel_duna_p', 'Camada rel_duna_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_duna_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_duna_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_duna_p" AFTER INSERT ON "edgv_rel_duna_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_duna_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_duna_p" AFTER DELETE ON "edgv_rel_duna_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_duna_p'); END ;

CREATE TABLE edgv_rel_duna_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoelemnat smallint NOT NULL,
	 fixa boolean NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT rel_duna_a_tipoelemnat_check CHECK ((tipoelemnat = 17))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_duna_a', 'features','edgv_rel_duna_a', 'Camada rel_duna_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_duna_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_duna_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_duna_a" AFTER INSERT ON "edgv_rel_duna_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_duna_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_duna_a" AFTER DELETE ON "edgv_rel_duna_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_duna_a'); END ;

CREATE TABLE edgv_rel_curva_batimetrica_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 profundidade integer NOT NULL,
	 geom MultiLinestring
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_curva_batimetrica_l', 'features','edgv_rel_curva_batimetrica_l', 'Camada rel_curva_batimetrica_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_curva_batimetrica_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_curva_batimetrica_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_curva_batimetrica_l" AFTER INSERT ON "edgv_rel_curva_batimetrica_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_curva_batimetrica_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_curva_batimetrica_l" AFTER DELETE ON "edgv_rel_curva_batimetrica_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_curva_batimetrica_l'); END ;

CREATE TABLE edgv_rel_alteracao_fisiografica_antropica_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT rel_alteracao_fisiografica_antropica_l_tipoalterantrop_check CHECK ((tipoalterantrop = 0) OR (tipoalterantrop = 24) OR (tipoalterantrop = 28) OR (tipoalterantrop = 29) OR (tipoalterantrop = 32) OR (tipoalterantrop = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_alteracao_fisiografica_antropica_l', 'features','edgv_rel_alteracao_fisiografica_antropica_l', 'Camada rel_alteracao_fisiografica_antropica_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_alteracao_fisiografica_antropica_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_alteracao_fisiografica_antropica_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_alteracao_fisiografica_antropica_l" AFTER INSERT ON "edgv_rel_alteracao_fisiografica_antropica_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_alteracao_fisiografica_antropica_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_alteracao_fisiografica_antropica_l" AFTER DELETE ON "edgv_rel_alteracao_fisiografica_antropica_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_alteracao_fisiografica_antropica_l'); END ;

CREATE TABLE edgv_rel_alteracao_fisiografica_antropica_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT rel_alteracao_fisiografica_antropica_p_tipoalterantrop_check CHECK ((tipoalterantrop = 0) OR (tipoalterantrop = 24) OR (tipoalterantrop = 28) OR (tipoalterantrop = 29) OR (tipoalterantrop = 32) OR (tipoalterantrop = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_alteracao_fisiografica_antropica_p', 'features','edgv_rel_alteracao_fisiografica_antropica_p', 'Camada rel_alteracao_fisiografica_antropica_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_alteracao_fisiografica_antropica_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_alteracao_fisiografica_antropica_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_alteracao_fisiografica_antropica_p" AFTER INSERT ON "edgv_rel_alteracao_fisiografica_antropica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_alteracao_fisiografica_antropica_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_alteracao_fisiografica_antropica_p" AFTER DELETE ON "edgv_rel_alteracao_fisiografica_antropica_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_alteracao_fisiografica_antropica_p'); END ;

CREATE TABLE edgv_rel_alteracao_fisiografica_antropica_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoalterantrop smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT rel_alteracao_fisiografica_antropica_a_tipoalterantrop_check CHECK ((tipoalterantrop = 0) OR (tipoalterantrop = 24) OR (tipoalterantrop = 28) OR (tipoalterantrop = 29) OR (tipoalterantrop = 32) OR (tipoalterantrop = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_alteracao_fisiografica_antropica_a', 'features','edgv_rel_alteracao_fisiografica_antropica_a', 'Camada rel_alteracao_fisiografica_antropica_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_alteracao_fisiografica_antropica_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_alteracao_fisiografica_antropica_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_alteracao_fisiografica_antropica_a" AFTER INSERT ON "edgv_rel_alteracao_fisiografica_antropica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_alteracao_fisiografica_antropica_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_alteracao_fisiografica_antropica_a" AFTER DELETE ON "edgv_rel_alteracao_fisiografica_antropica_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_alteracao_fisiografica_antropica_a'); END ;

CREATE TABLE edgv_rel_ponto_cotado_batimetrico_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 profundidade real NOT NULL,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rel_ponto_cotado_batimetrico_p', 'features','edgv_rel_ponto_cotado_batimetrico_p', 'Camada rel_ponto_cotado_batimetrico_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rel_ponto_cotado_batimetrico_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rel_ponto_cotado_batimetrico_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rel_ponto_cotado_batimetrico_p" AFTER INSERT ON "edgv_rel_ponto_cotado_batimetrico_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rel_ponto_cotado_batimetrico_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rel_ponto_cotado_batimetrico_p" AFTER DELETE ON "edgv_rel_ponto_cotado_batimetrico_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rel_ponto_cotado_batimetrico_p'); END ;

CREATE TABLE edgv_rod_trecho_rodoviario_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 jurisdicao smallint NOT NULL,
	 administracao smallint NOT NULL,
	 concessionaria varchar(100),
	 revestimento smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 canteirodivisorio smallint NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 trafego smallint NOT NULL,
	 tipopavimentacao smallint NOT NULL,
	 tipovia smallint NOT NULL,
	 sigla varchar(6),
	 codtrechorod varchar(25),
	 limitevelocidade real,
	 trechoemperimetrourbano boolean,
	 acostamento boolean,
	 geom MultiLinestring,
	 CONSTRAINT rod_trecho_rodoviario_l_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT rod_trecho_rodoviario_l_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT rod_trecho_rodoviario_l_revestimento_check CHECK ((revestimento = 0) OR (revestimento = 1) OR (revestimento = 2) OR (revestimento = 3) OR (revestimento = 4) OR (revestimento = 99)),
	 CONSTRAINT rod_trecho_rodoviario_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT rod_trecho_rodoviario_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT rod_trecho_rodoviario_l_canteirodivisorio_check CHECK ((canteirodivisorio = 0) OR (canteirodivisorio = 1) OR (canteirodivisorio = 2)),
	 CONSTRAINT rod_trecho_rodoviario_l_trafego_check CHECK ((trafego = 0) OR (trafego = 1) OR (trafego = 2) OR (trafego = 4)),
	 CONSTRAINT rod_trecho_rodoviario_l_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT rod_trecho_rodoviario_l_tipovia_check CHECK ((tipovia = 2) OR (tipovia = 4) OR (tipovia = 5) OR (tipovia = 6) OR (tipovia = 7) OR (tipovia = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rod_trecho_rodoviario_l', 'features','edgv_rod_trecho_rodoviario_l', 'Camada rod_trecho_rodoviario_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rod_trecho_rodoviario_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rod_trecho_rodoviario_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rod_trecho_rodoviario_l" AFTER INSERT ON "edgv_rod_trecho_rodoviario_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rod_trecho_rodoviario_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rod_trecho_rodoviario_l" AFTER DELETE ON "edgv_rod_trecho_rodoviario_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rod_trecho_rodoviario_l'); END ;

CREATE TABLE edgv_rod_trecho_rodoviario_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 jurisdicao smallint NOT NULL,
	 administracao smallint NOT NULL,
	 concessionaria varchar(100),
	 revestimento smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 canteirodivisorio smallint NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 trafego smallint NOT NULL,
	 tipopavimentacao smallint NOT NULL,
	 tipovia smallint NOT NULL,
	 sigla varchar(6),
	 codtrechorod varchar(25),
	 limitevelocidade real,
	 trechoemperimetrourbano boolean,
	 acostamento boolean,
	 geom MultiPolygon,
	 CONSTRAINT rod_trecho_rodoviario_a_jurisdicao_check CHECK ((jurisdicao = 0) OR (jurisdicao = 1) OR (jurisdicao = 2) OR (jurisdicao = 3) OR (jurisdicao = 4) OR (jurisdicao = 8)),
	 CONSTRAINT rod_trecho_rodoviario_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT rod_trecho_rodoviario_a_revestimento_check CHECK ((revestimento = 0) OR (revestimento = 1) OR (revestimento = 2) OR (revestimento = 3) OR (revestimento = 4) OR (revestimento = 99)),
	 CONSTRAINT rod_trecho_rodoviario_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT rod_trecho_rodoviario_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT rod_trecho_rodoviario_a_canteirodivisorio_check CHECK ((canteirodivisorio = 0) OR (canteirodivisorio = 1) OR (canteirodivisorio = 2)),
	 CONSTRAINT rod_trecho_rodoviario_a_trafego_check CHECK ((trafego = 0) OR (trafego = 1) OR (trafego = 2) OR (trafego = 4)),
	 CONSTRAINT rod_trecho_rodoviario_a_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT rod_trecho_rodoviario_a_tipovia_check CHECK ((tipovia = 2) OR (tipovia = 4) OR (tipovia = 5) OR (tipovia = 6) OR (tipovia = 7) OR (tipovia = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_rod_trecho_rodoviario_a', 'features','edgv_rod_trecho_rodoviario_a', 'Camada rod_trecho_rodoviario_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_rod_trecho_rodoviario_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_rod_trecho_rodoviario_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_rod_trecho_rodoviario_a" AFTER INSERT ON "edgv_rod_trecho_rodoviario_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_rod_trecho_rodoviario_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_rod_trecho_rodoviario_a" AFTER DELETE ON "edgv_rod_trecho_rodoviario_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_rod_trecho_rodoviario_a'); END ;

CREATE TABLE edgv_snb_dep_abast_agua_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipodepgeral smallint,
	 matconstr smallint,
	 tipoexposicao smallint NOT NULL,
	 tipoprodutoresiduo smallint NOT NULL,
	 tipoconteudo smallint,
	 unidadevolume smallint,
	 valorvolume real,
	 tratamento smallint NOT NULL,
	 estadofisico smallint,
	 finalidadedep smallint NOT NULL,
	 situacaoagua smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT snb_dep_abast_agua_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT snb_dep_abast_agua_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT snb_dep_abast_agua_p_tipodepgeral_check CHECK ((tipodepgeral = 0) OR (tipodepgeral = 2) OR (tipodepgeral = 3) OR (tipodepgeral = 99)),
	 CONSTRAINT snb_dep_abast_agua_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT snb_dep_abast_agua_p_tipoexposicao_check CHECK ((tipoexposicao = 0) OR (tipoexposicao = 3) OR (tipoexposicao = 4) OR (tipoexposicao = 5) OR (tipoexposicao = 99)),
	 CONSTRAINT snb_dep_abast_agua_p_tipoprodutoresiduo_check CHECK ((tipoprodutoresiduo = 46)),
	 CONSTRAINT snb_dep_abast_agua_p_tipoconteudo_check CHECK ((tipoconteudo = 0) OR (tipoconteudo = 1) OR (tipoconteudo = 2) OR (tipoconteudo = 3)),
	 CONSTRAINT snb_dep_abast_agua_p_unidadevolume_check CHECK ((unidadevolume = 0) OR (unidadevolume = 1) OR (unidadevolume = 2)),
	 CONSTRAINT snb_dep_abast_agua_p_tratamento_check CHECK ((tratamento = 0) OR (tratamento = 1) OR (tratamento = 2)),
	 CONSTRAINT snb_dep_abast_agua_p_estadofisico_check CHECK ((estadofisico = 0) OR (estadofisico = 1) OR (estadofisico = 2) OR (estadofisico = 3) OR (estadofisico = 98)),
	 CONSTRAINT snb_dep_abast_agua_p_finalidadedep_check CHECK ((finalidadedep = 0) OR (finalidadedep = 2) OR (finalidadedep = 3) OR (finalidadedep = 4) OR (finalidadedep = 8)),
	 CONSTRAINT snb_dep_abast_agua_p_situacaoagua_check CHECK ((situacaoagua = 0) OR (situacaoagua = 6) OR (situacaoagua = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_snb_dep_abast_agua_p', 'features','edgv_snb_dep_abast_agua_p', 'Camada snb_dep_abast_agua_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_snb_dep_abast_agua_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_snb_dep_abast_agua_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_snb_dep_abast_agua_p" AFTER INSERT ON "edgv_snb_dep_abast_agua_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_snb_dep_abast_agua_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_snb_dep_abast_agua_p" AFTER DELETE ON "edgv_snb_dep_abast_agua_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_snb_dep_abast_agua_p'); END ;

CREATE TABLE edgv_snb_dep_abast_agua_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 tipodepgeral smallint,
	 matconstr smallint,
	 tipoexposicao smallint NOT NULL,
	 tipoprodutoresiduo smallint NOT NULL,
	 tipoconteudo smallint,
	 unidadevolume smallint,
	 valorvolume real,
	 tratamento smallint NOT NULL,
	 estadofisico smallint,
	 finalidadedep smallint NOT NULL,
	 situacaoagua smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT snb_dep_abast_agua_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT snb_dep_abast_agua_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT snb_dep_abast_agua_a_tipodepgeral_check CHECK ((tipodepgeral = 0) OR (tipodepgeral = 2) OR (tipodepgeral = 3) OR (tipodepgeral = 99)),
	 CONSTRAINT snb_dep_abast_agua_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT snb_dep_abast_agua_a_tipoexposicao_check CHECK ((tipoexposicao = 0) OR (tipoexposicao = 3) OR (tipoexposicao = 4) OR (tipoexposicao = 5) OR (tipoexposicao = 99)),
	 CONSTRAINT snb_dep_abast_agua_a_tipoprodutoresiduo_check CHECK ((tipoprodutoresiduo = 46)),
	 CONSTRAINT snb_dep_abast_agua_a_tipoconteudo_check CHECK ((tipoconteudo = 0) OR (tipoconteudo = 1) OR (tipoconteudo = 2) OR (tipoconteudo = 3)),
	 CONSTRAINT snb_dep_abast_agua_a_unidadevolume_check CHECK ((unidadevolume = 0) OR (unidadevolume = 1) OR (unidadevolume = 2)),
	 CONSTRAINT snb_dep_abast_agua_a_tratamento_check CHECK ((tratamento = 0) OR (tratamento = 1) OR (tratamento = 2)),
	 CONSTRAINT snb_dep_abast_agua_a_estadofisico_check CHECK ((estadofisico = 0) OR (estadofisico = 1) OR (estadofisico = 2) OR (estadofisico = 3) OR (estadofisico = 98)),
	 CONSTRAINT snb_dep_abast_agua_a_finalidadedep_check CHECK ((finalidadedep = 0) OR (finalidadedep = 2) OR (finalidadedep = 3) OR (finalidadedep = 4) OR (finalidadedep = 8)),
	 CONSTRAINT snb_dep_abast_agua_a_situacaoagua_check CHECK ((situacaoagua = 0) OR (situacaoagua = 6) OR (situacaoagua = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_snb_dep_abast_agua_a', 'features','edgv_snb_dep_abast_agua_a', 'Camada snb_dep_abast_agua_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_snb_dep_abast_agua_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_snb_dep_abast_agua_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_snb_dep_abast_agua_a" AFTER INSERT ON "edgv_snb_dep_abast_agua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_snb_dep_abast_agua_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_snb_dep_abast_agua_a" AFTER DELETE ON "edgv_snb_dep_abast_agua_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_snb_dep_abast_agua_a'); END ;

CREATE TABLE edgv_snb_barragem_calcadao_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoequipdesenvsocial smallint NOT NULL,
	 sigla varchar(80),
	 codequipdesenvsocial varchar(80),
	 localizacaoequipdesenvsocial smallint,
	 geom MultiPolygon,
	 CONSTRAINT snb_barragem_calcadao_a_tipoequipdesenvsocial_check CHECK ((tipoequipdesenvsocial = 2)),
	 CONSTRAINT snb_barragem_calcadao_a_localizacaoequipdesenvsocial_check CHECK ((localizacaoequipdesenvsocial = 0) OR (localizacaoequipdesenvsocial = 1) OR (localizacaoequipdesenvsocial = 2) OR (localizacaoequipdesenvsocial = 3) OR (localizacaoequipdesenvsocial = 4) OR (localizacaoequipdesenvsocial = 5) OR (localizacaoequipdesenvsocial = 6) OR (localizacaoequipdesenvsocial = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_snb_barragem_calcadao_a', 'features','edgv_snb_barragem_calcadao_a', 'Camada snb_barragem_calcadao_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_snb_barragem_calcadao_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_snb_barragem_calcadao_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_snb_barragem_calcadao_a" AFTER INSERT ON "edgv_snb_barragem_calcadao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_snb_barragem_calcadao_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_snb_barragem_calcadao_a" AFTER DELETE ON "edgv_snb_barragem_calcadao_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_snb_barragem_calcadao_a'); END ;

CREATE TABLE edgv_tra_entroncamento_pto_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipoentroncamento smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT tra_entroncamento_pto_p_tipoentroncamento_check CHECK ((tipoentroncamento = 1) OR (tipoentroncamento = 2) OR (tipoentroncamento = 3) OR (tipoentroncamento = 4) OR (tipoentroncamento = 5) OR (tipoentroncamento = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_entroncamento_pto_p', 'features','edgv_tra_entroncamento_pto_p', 'Camada tra_entroncamento_pto_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_entroncamento_pto_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_entroncamento_pto_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_entroncamento_pto_p" AFTER INSERT ON "edgv_tra_entroncamento_pto_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_entroncamento_pto_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_entroncamento_pto_p" AFTER DELETE ON "edgv_tra_entroncamento_pto_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_entroncamento_pto_p'); END ;

CREATE TABLE edgv_tra_funicular_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT tra_funicular_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_funicular_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_funicular_l', 'features','edgv_tra_funicular_l', 'Camada tra_funicular_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_funicular_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_funicular_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_funicular_l" AFTER INSERT ON "edgv_tra_funicular_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_funicular_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_funicular_l" AFTER DELETE ON "edgv_tra_funicular_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_funicular_l'); END ;

CREATE TABLE edgv_tra_ponte_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 necessitamanutencao smallint NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 posicaopista smallint NOT NULL,
	 largura real,
	 extensao real,
	 tipopavimentacao smallint NOT NULL,
	 tipoponte smallint NOT NULL,
	 vaolivrehoriz real,
	 vaovertical real,
	 cargasuportmaxima real,
	 geom MultiLinestring,
	 CONSTRAINT tra_ponte_l_modaluso_check CHECK ((modaluso = 4) OR (modaluso = 5) OR (modaluso = 6) OR (modaluso = 9)),
	 CONSTRAINT tra_ponte_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 99)),
	 CONSTRAINT tra_ponte_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_ponte_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_ponte_l_necessitamanutencao_check CHECK ((necessitamanutencao = 0) OR (necessitamanutencao = 1) OR (necessitamanutencao = 2)),
	 CONSTRAINT tra_ponte_l_posicaopista_check CHECK ((posicaopista = 0) OR (posicaopista = 2) OR (posicaopista = 4) OR (posicaopista = 5) OR (posicaopista = 7) OR (posicaopista = 12) OR (posicaopista = 13) OR (posicaopista = 97) OR (posicaopista = 99)),
	 CONSTRAINT tra_ponte_l_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT tra_ponte_l_tipoponte_check CHECK ((tipoponte = 0) OR (tipoponte = 1) OR (tipoponte = 2) OR (tipoponte = 3) OR (tipoponte = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_ponte_l', 'features','edgv_tra_ponte_l', 'Camada tra_ponte_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_ponte_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_ponte_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_ponte_l" AFTER INSERT ON "edgv_tra_ponte_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_ponte_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_ponte_l" AFTER DELETE ON "edgv_tra_ponte_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_ponte_l'); END ;

CREATE TABLE edgv_tra_ponte_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 necessitamanutencao smallint NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 posicaopista smallint NOT NULL,
	 largura real,
	 extensao real,
	 tipopavimentacao smallint NOT NULL,
	 tipoponte smallint NOT NULL,
	 vaolivrehoriz real,
	 vaovertical real,
	 cargasuportmaxima real,
	 geom MultiPoint,
	 CONSTRAINT tra_ponte_p_modaluso_check CHECK ((modaluso = 4) OR (modaluso = 5) OR (modaluso = 6) OR (modaluso = 9)),
	 CONSTRAINT tra_ponte_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 99)),
	 CONSTRAINT tra_ponte_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_ponte_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_ponte_p_necessitamanutencao_check CHECK ((necessitamanutencao = 0) OR (necessitamanutencao = 1) OR (necessitamanutencao = 2)),
	 CONSTRAINT tra_ponte_p_posicaopista_check CHECK ((posicaopista = 0) OR (posicaopista = 2) OR (posicaopista = 4) OR (posicaopista = 5) OR (posicaopista = 7) OR (posicaopista = 12) OR (posicaopista = 13) OR (posicaopista = 97) OR (posicaopista = 99)),
	 CONSTRAINT tra_ponte_p_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT tra_ponte_p_tipoponte_check CHECK ((tipoponte = 0) OR (tipoponte = 1) OR (tipoponte = 2) OR (tipoponte = 3) OR (tipoponte = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_ponte_p', 'features','edgv_tra_ponte_p', 'Camada tra_ponte_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_ponte_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_ponte_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_ponte_p" AFTER INSERT ON "edgv_tra_ponte_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_ponte_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_ponte_p" AFTER DELETE ON "edgv_tra_ponte_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_ponte_p'); END ;

CREATE TABLE edgv_tra_ponte_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 necessitamanutencao smallint NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 posicaopista smallint NOT NULL,
	 largura real,
	 extensao real,
	 tipopavimentacao smallint NOT NULL,
	 tipoponte smallint NOT NULL,
	 vaolivrehoriz real,
	 vaovertical real,
	 cargasuportmaxima real,
	 geom MultiPolygon,
	 CONSTRAINT tra_ponte_a_modaluso_check CHECK ((modaluso = 4) OR (modaluso = 5) OR (modaluso = 6) OR (modaluso = 9)),
	 CONSTRAINT tra_ponte_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 99)),
	 CONSTRAINT tra_ponte_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_ponte_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_ponte_a_necessitamanutencao_check CHECK ((necessitamanutencao = 0) OR (necessitamanutencao = 1) OR (necessitamanutencao = 2)),
	 CONSTRAINT tra_ponte_a_posicaopista_check CHECK ((posicaopista = 0) OR (posicaopista = 2) OR (posicaopista = 4) OR (posicaopista = 5) OR (posicaopista = 7) OR (posicaopista = 12) OR (posicaopista = 13) OR (posicaopista = 97) OR (posicaopista = 99)),
	 CONSTRAINT tra_ponte_a_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT tra_ponte_a_tipoponte_check CHECK ((tipoponte = 0) OR (tipoponte = 1) OR (tipoponte = 2) OR (tipoponte = 3) OR (tipoponte = 7))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_ponte_a', 'features','edgv_tra_ponte_a', 'Camada tra_ponte_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_ponte_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_ponte_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_ponte_a" AFTER INSERT ON "edgv_tra_ponte_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_ponte_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_ponte_a" AFTER DELETE ON "edgv_tra_ponte_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_ponte_a'); END ;

CREATE TABLE edgv_tra_caminho_aereo_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipocaminhoaereo smallint NOT NULL,
	 tipousocaminhoaer smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT tra_caminho_aereo_l_tipocaminhoaereo_check CHECK ((tipocaminhoaereo = 12) OR (tipocaminhoaereo = 99)),
	 CONSTRAINT tra_caminho_aereo_l_tipousocaminhoaer_check CHECK ((tipousocaminhoaer = 0) OR (tipousocaminhoaer = 21) OR (tipousocaminhoaer = 22) OR (tipousocaminhoaer = 98)),
	 CONSTRAINT tra_caminho_aereo_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_caminho_aereo_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_caminho_aereo_l', 'features','edgv_tra_caminho_aereo_l', 'Camada tra_caminho_aereo_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_caminho_aereo_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_caminho_aereo_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_caminho_aereo_l" AFTER INSERT ON "edgv_tra_caminho_aereo_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_caminho_aereo_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_caminho_aereo_l" AFTER DELETE ON "edgv_tra_caminho_aereo_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_caminho_aereo_l'); END ;

CREATE TABLE edgv_tra_trilha_picada_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiLinestring
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_trilha_picada_l', 'features','edgv_tra_trilha_picada_l', 'Camada tra_trilha_picada_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_trilha_picada_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_trilha_picada_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_trilha_picada_l" AFTER INSERT ON "edgv_tra_trilha_picada_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_trilha_picada_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_trilha_picada_l" AFTER DELETE ON "edgv_tra_trilha_picada_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_trilha_picada_l'); END ;

CREATE TABLE edgv_tra_passagem_nivel_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_passagem_nivel_p', 'features','edgv_tra_passagem_nivel_p', 'Camada tra_passagem_nivel_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_passagem_nivel_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_passagem_nivel_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_passagem_nivel_p" AFTER INSERT ON "edgv_tra_passagem_nivel_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_passagem_nivel_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_passagem_nivel_p" AFTER DELETE ON "edgv_tra_passagem_nivel_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_passagem_nivel_p'); END ;

CREATE TABLE edgv_tra_travessia_pedestre_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 tipotravessiaped smallint NOT NULL,
	 extensao real,
	 largura real,
	 geom MultiLinestring,
	 CONSTRAINT tra_travessia_pedestre_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_travessia_pedestre_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_travessia_pedestre_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT tra_travessia_pedestre_l_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99)),
	 CONSTRAINT tra_travessia_pedestre_l_tipotravessiaped_check CHECK ((tipotravessiaped = 0) OR (tipotravessiaped = 7) OR (tipotravessiaped = 8) OR (tipotravessiaped = 9) OR (tipotravessiaped = 10))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_travessia_pedestre_l', 'features','edgv_tra_travessia_pedestre_l', 'Camada tra_travessia_pedestre_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_travessia_pedestre_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_travessia_pedestre_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_travessia_pedestre_l" AFTER INSERT ON "edgv_tra_travessia_pedestre_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_travessia_pedestre_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_travessia_pedestre_l" AFTER DELETE ON "edgv_tra_travessia_pedestre_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_travessia_pedestre_l'); END ;

CREATE TABLE edgv_tra_travessia_pedestre_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 tipotravessiaped smallint NOT NULL,
	 extensao real,
	 largura real,
	 geom MultiPoint,
	 CONSTRAINT tra_travessia_pedestre_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_travessia_pedestre_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_travessia_pedestre_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT tra_travessia_pedestre_p_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99)),
	 CONSTRAINT tra_travessia_pedestre_p_tipotravessiaped_check CHECK ((tipotravessiaped = 0) OR (tipotravessiaped = 7) OR (tipotravessiaped = 8) OR (tipotravessiaped = 9) OR (tipotravessiaped = 10))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_travessia_pedestre_p', 'features','edgv_tra_travessia_pedestre_p', 'Camada tra_travessia_pedestre_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_travessia_pedestre_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_travessia_pedestre_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_travessia_pedestre_p" AFTER INSERT ON "edgv_tra_travessia_pedestre_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_travessia_pedestre_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_travessia_pedestre_p" AFTER DELETE ON "edgv_tra_travessia_pedestre_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_travessia_pedestre_p'); END ;

CREATE TABLE edgv_tra_travessia_pedestre_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 situacaoespacial smallint NOT NULL,
	 tipotravessiaped smallint NOT NULL,
	 extensao real,
	 largura real,
	 geom MultiPolygon,
	 CONSTRAINT tra_travessia_pedestre_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_travessia_pedestre_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_travessia_pedestre_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT tra_travessia_pedestre_a_situacaoespacial_check CHECK ((situacaoespacial = 0) OR (situacaoespacial = 2) OR (situacaoespacial = 4) OR (situacaoespacial = 5) OR (situacaoespacial = 7) OR (situacaoespacial = 12) OR (situacaoespacial = 13) OR (situacaoespacial = 97) OR (situacaoespacial = 99)),
	 CONSTRAINT tra_travessia_pedestre_a_tipotravessiaped_check CHECK ((tipotravessiaped = 0) OR (tipotravessiaped = 7) OR (tipotravessiaped = 8) OR (tipotravessiaped = 9) OR (tipotravessiaped = 10))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_travessia_pedestre_a', 'features','edgv_tra_travessia_pedestre_a', 'Camada tra_travessia_pedestre_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_travessia_pedestre_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_travessia_pedestre_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_travessia_pedestre_a" AFTER INSERT ON "edgv_tra_travessia_pedestre_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_travessia_pedestre_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_travessia_pedestre_a" AFTER DELETE ON "edgv_tra_travessia_pedestre_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_travessia_pedestre_a'); END ;

CREATE TABLE edgv_tra_travessia_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipotravessia smallint NOT NULL,
	 tipouso smallint NOT NULL,
	 tipoembarcacao smallint NOT NULL,
	 geom MultiLinestring,
	 CONSTRAINT tra_travessia_l_tipotravessia_check CHECK ((tipotravessia = 0) OR (tipotravessia = 1) OR (tipotravessia = 2) OR (tipotravessia = 3) OR (tipotravessia = 4)),
	 CONSTRAINT tra_travessia_l_tipouso_check CHECK ((tipouso = 0) OR (tipouso = 21) OR (tipouso = 22) OR (tipouso = 98)),
	 CONSTRAINT tra_travessia_l_tipoembarcacao_check CHECK ((tipoembarcacao = 0) OR (tipoembarcacao = 2) OR (tipoembarcacao = 3) OR (tipoembarcacao = 6) OR (tipoembarcacao = 7) OR (tipoembarcacao = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_travessia_l', 'features','edgv_tra_travessia_l', 'Camada tra_travessia_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_travessia_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_travessia_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_travessia_l" AFTER INSERT ON "edgv_tra_travessia_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_travessia_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_travessia_l" AFTER DELETE ON "edgv_tra_travessia_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_travessia_l'); END ;

CREATE TABLE edgv_tra_travessia_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 tipotravessia smallint NOT NULL,
	 tipouso smallint NOT NULL,
	 tipoembarcacao smallint NOT NULL,
	 geom MultiPoint,
	 CONSTRAINT tra_travessia_p_tipotravessia_check CHECK ((tipotravessia = 0) OR (tipotravessia = 1) OR (tipotravessia = 2) OR (tipotravessia = 3) OR (tipotravessia = 4)),
	 CONSTRAINT tra_travessia_p_tipouso_check CHECK ((tipouso = 0) OR (tipouso = 21) OR (tipouso = 22) OR (tipouso = 98)),
	 CONSTRAINT tra_travessia_p_tipoembarcacao_check CHECK ((tipoembarcacao = 0) OR (tipoembarcacao = 2) OR (tipoembarcacao = 3) OR (tipoembarcacao = 6) OR (tipoembarcacao = 7) OR (tipoembarcacao = 97))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_travessia_p', 'features','edgv_tra_travessia_p', 'Camada tra_travessia_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_travessia_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_travessia_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_travessia_p" AFTER INSERT ON "edgv_tra_travessia_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_travessia_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_travessia_p" AFTER DELETE ON "edgv_tra_travessia_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_travessia_p'); END ;

CREATE TABLE edgv_tra_caminho_carrocavel_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 geom MultiLinestring
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_caminho_carrocavel_l', 'features','edgv_tra_caminho_carrocavel_l', 'Camada tra_caminho_carrocavel_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_caminho_carrocavel_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_caminho_carrocavel_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_caminho_carrocavel_l" AFTER INSERT ON "edgv_tra_caminho_carrocavel_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_caminho_carrocavel_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_caminho_carrocavel_l" AFTER DELETE ON "edgv_tra_caminho_carrocavel_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_caminho_carrocavel_l'); END ;

CREATE TABLE edgv_tra_tunel_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 necessitamanutencao boolean NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 posicaopista smallint NOT NULL,
	 largura real,
	 extensao real,
	 tipopavimentacao smallint NOT NULL,
	 altura real,
	 tipotunel smallint,
	 geom MultiLinestring,
	 CONSTRAINT tra_tunel_l_modaluso_check CHECK ((modaluso = 4) OR (modaluso = 5) OR (modaluso = 6) OR (modaluso = 7) OR (modaluso = 9)),
	 CONSTRAINT tra_tunel_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT tra_tunel_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_tunel_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_tunel_l_posicaopista_check CHECK ((posicaopista = 2)),
	 CONSTRAINT tra_tunel_l_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT tra_tunel_l_tipotunel_check CHECK ((tipotunel = 1) OR (tipotunel = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_tunel_l', 'features','edgv_tra_tunel_l', 'Camada tra_tunel_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_tunel_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_tunel_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_tunel_l" AFTER INSERT ON "edgv_tra_tunel_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_tunel_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_tunel_l" AFTER DELETE ON "edgv_tra_tunel_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_tunel_l'); END ;

CREATE TABLE edgv_tra_tunel_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 necessitamanutencao boolean NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 posicaopista smallint NOT NULL,
	 largura real,
	 extensao real,
	 tipopavimentacao smallint NOT NULL,
	 altura real,
	 tipotunel smallint,
	 geom MultiPoint,
	 CONSTRAINT tra_tunel_p_modaluso_check CHECK ((modaluso = 4) OR (modaluso = 5) OR (modaluso = 6) OR (modaluso = 7) OR (modaluso = 9)),
	 CONSTRAINT tra_tunel_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT tra_tunel_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_tunel_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_tunel_p_posicaopista_check CHECK ((posicaopista = 2)),
	 CONSTRAINT tra_tunel_p_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT tra_tunel_p_tipotunel_check CHECK ((tipotunel = 1) OR (tipotunel = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_tunel_p', 'features','edgv_tra_tunel_p', 'Camada tra_tunel_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_tunel_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_tunel_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_tunel_p" AFTER INSERT ON "edgv_tra_tunel_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_tunel_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_tunel_p" AFTER DELETE ON "edgv_tra_tunel_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_tunel_p'); END ;

CREATE TABLE edgv_tra_tunel_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 necessitamanutencao boolean NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 posicaopista smallint NOT NULL,
	 largura real,
	 extensao real,
	 tipopavimentacao smallint NOT NULL,
	 altura real,
	 tipotunel smallint,
	 geom MultiPolygon,
	 CONSTRAINT tra_tunel_a_modaluso_check CHECK ((modaluso = 4) OR (modaluso = 5) OR (modaluso = 6) OR (modaluso = 7) OR (modaluso = 9)),
	 CONSTRAINT tra_tunel_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT tra_tunel_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_tunel_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_tunel_a_posicaopista_check CHECK ((posicaopista = 2)),
	 CONSTRAINT tra_tunel_a_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT tra_tunel_a_tipotunel_check CHECK ((tipotunel = 1) OR (tipotunel = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_tunel_a', 'features','edgv_tra_tunel_a', 'Camada tra_tunel_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_tunel_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_tunel_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_tunel_a" AFTER INSERT ON "edgv_tra_tunel_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_tunel_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_tunel_a" AFTER DELETE ON "edgv_tra_tunel_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_tunel_a'); END ;

CREATE TABLE edgv_tra_passagem_elevada_viaduto_l(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 necessitamanutencao smallint NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 posicaopista smallint NOT NULL,
	 largura real,
	 extensao real,
	 tipopavimentacao smallint NOT NULL,
	 tipopassagviad smallint NOT NULL,
	 vaolivrehoriz real,
	 vaovertical real,
	 gabhorizsup real,
	 gabvertsup real,
	 cargasuportmaxima real,
	 geom MultiLinestring,
	 CONSTRAINT tra_passagem_elevada_viaduto_l_modaluso_check CHECK ((modaluso = 4) OR (modaluso = 5) OR (modaluso = 6) OR (modaluso = 9)),
	 CONSTRAINT tra_passagem_elevada_viaduto_l_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT tra_passagem_elevada_viaduto_l_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_passagem_elevada_viaduto_l_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_passagem_elevada_viaduto_l_necessitamanutencao_check CHECK ((necessitamanutencao = 0) OR (necessitamanutencao = 1) OR (necessitamanutencao = 2)),
	 CONSTRAINT tra_passagem_elevada_viaduto_l_posicaopista_check CHECK ((posicaopista = 0) OR (posicaopista = 4) OR (posicaopista = 7) OR (posicaopista = 13) OR (posicaopista = 99)),
	 CONSTRAINT tra_passagem_elevada_viaduto_l_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT tra_passagem_elevada_viaduto_l_tipopassagviad_check CHECK ((tipopassagviad = 5) OR (tipopassagviad = 6))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_passagem_elevada_viaduto_l', 'features','edgv_tra_passagem_elevada_viaduto_l', 'Camada tra_passagem_elevada_viaduto_l da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_passagem_elevada_viaduto_l', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_passagem_elevada_viaduto_l', 'geom', 'MULTILINESTRING', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_passagem_elevada_viaduto_l" AFTER INSERT ON "edgv_tra_passagem_elevada_viaduto_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_passagem_elevada_viaduto_l'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_passagem_elevada_viaduto_l" AFTER DELETE ON "edgv_tra_passagem_elevada_viaduto_l" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_passagem_elevada_viaduto_l'); END ;

CREATE TABLE edgv_tra_passagem_elevada_viaduto_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 necessitamanutencao smallint NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 posicaopista smallint NOT NULL,
	 largura real,
	 extensao real,
	 tipopavimentacao smallint NOT NULL,
	 tipopassagviad smallint NOT NULL,
	 vaolivrehoriz real,
	 vaovertical real,
	 gabhorizsup real,
	 gabvertsup real,
	 cargasuportmaxima real,
	 geom MultiPoint,
	 CONSTRAINT tra_passagem_elevada_viaduto_p_modaluso_check CHECK ((modaluso = 4) OR (modaluso = 5) OR (modaluso = 6) OR (modaluso = 9)),
	 CONSTRAINT tra_passagem_elevada_viaduto_p_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT tra_passagem_elevada_viaduto_p_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_passagem_elevada_viaduto_p_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_passagem_elevada_viaduto_p_necessitamanutencao_check CHECK ((necessitamanutencao = 0) OR (necessitamanutencao = 1) OR (necessitamanutencao = 2)),
	 CONSTRAINT tra_passagem_elevada_viaduto_p_posicaopista_check CHECK ((posicaopista = 0) OR (posicaopista = 4) OR (posicaopista = 7) OR (posicaopista = 13) OR (posicaopista = 99)),
	 CONSTRAINT tra_passagem_elevada_viaduto_p_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT tra_passagem_elevada_viaduto_p_tipopassagviad_check CHECK ((tipopassagviad = 5) OR (tipopassagviad = 6))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_passagem_elevada_viaduto_p', 'features','edgv_tra_passagem_elevada_viaduto_p', 'Camada tra_passagem_elevada_viaduto_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_passagem_elevada_viaduto_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_passagem_elevada_viaduto_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_passagem_elevada_viaduto_p" AFTER INSERT ON "edgv_tra_passagem_elevada_viaduto_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_passagem_elevada_viaduto_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_passagem_elevada_viaduto_p" AFTER DELETE ON "edgv_tra_passagem_elevada_viaduto_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_passagem_elevada_viaduto_p'); END ;

CREATE TABLE edgv_tra_passagem_elevada_viaduto_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint NOT NULL,
	 matconstr smallint NOT NULL,
	 operacional smallint NOT NULL,
	 situacaofisica smallint NOT NULL,
	 necessitamanutencao smallint NOT NULL,
	 nrpistas integer NOT NULL,
	 nrfaixas integer,
	 posicaopista smallint NOT NULL,
	 largura real,
	 extensao real,
	 tipopavimentacao smallint NOT NULL,
	 tipopassagviad smallint NOT NULL,
	 vaolivrehoriz real,
	 vaovertical real,
	 gabhorizsup real,
	 gabvertsup real,
	 cargasuportmaxima real,
	 geom MultiPolygon,
	 CONSTRAINT tra_passagem_elevada_viaduto_a_modaluso_check CHECK ((modaluso = 4) OR (modaluso = 5) OR (modaluso = 6) OR (modaluso = 9)),
	 CONSTRAINT tra_passagem_elevada_viaduto_a_matconstr_check CHECK ((matconstr = 0) OR (matconstr = 1) OR (matconstr = 2) OR (matconstr = 3) OR (matconstr = 4) OR (matconstr = 5) OR (matconstr = 8) OR (matconstr = 23) OR (matconstr = 97) OR (matconstr = 99)),
	 CONSTRAINT tra_passagem_elevada_viaduto_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_passagem_elevada_viaduto_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_passagem_elevada_viaduto_a_necessitamanutencao_check CHECK ((necessitamanutencao = 0) OR (necessitamanutencao = 1) OR (necessitamanutencao = 2)),
	 CONSTRAINT tra_passagem_elevada_viaduto_a_posicaopista_check CHECK ((posicaopista = 0) OR (posicaopista = 4) OR (posicaopista = 7) OR (posicaopista = 13) OR (posicaopista = 99)),
	 CONSTRAINT tra_passagem_elevada_viaduto_a_tipopavimentacao_check CHECK ((tipopavimentacao = 0) OR (tipopavimentacao = 2) OR (tipopavimentacao = 3) OR (tipopavimentacao = 4) OR (tipopavimentacao = 5) OR (tipopavimentacao = 6) OR (tipopavimentacao = 7) OR (tipopavimentacao = 97) OR (tipopavimentacao = 99)),
	 CONSTRAINT tra_passagem_elevada_viaduto_a_tipopassagviad_check CHECK ((tipopassagviad = 5) OR (tipopassagviad = 6))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_passagem_elevada_viaduto_a', 'features','edgv_tra_passagem_elevada_viaduto_a', 'Camada tra_passagem_elevada_viaduto_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_passagem_elevada_viaduto_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_passagem_elevada_viaduto_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_passagem_elevada_viaduto_a" AFTER INSERT ON "edgv_tra_passagem_elevada_viaduto_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_passagem_elevada_viaduto_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_passagem_elevada_viaduto_a" AFTER DELETE ON "edgv_tra_passagem_elevada_viaduto_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_passagem_elevada_viaduto_a'); END ;

CREATE TABLE edgv_tra_patio_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 modaluso smallint,
	 administracao smallint,
	 operacional smallint NOT NULL,
	 situacaofisica smallint,
	 finalidadepatio smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT tra_patio_a_modaluso_check CHECK ((modaluso = 4) OR (modaluso = 5) OR (modaluso = 6) OR (modaluso = 7) OR (modaluso = 9) OR (modaluso = 10) OR (modaluso = 14)),
	 CONSTRAINT tra_patio_a_administracao_check CHECK ((administracao = 0) OR (administracao = 2) OR (administracao = 3) OR (administracao = 4) OR (administracao = 5) OR (administracao = 6) OR (administracao = 97)),
	 CONSTRAINT tra_patio_a_operacional_check CHECK ((operacional = 0) OR (operacional = 1) OR (operacional = 2)),
	 CONSTRAINT tra_patio_a_situacaofisica_check CHECK ((situacaofisica = 0) OR (situacaofisica = 1) OR (situacaofisica = 2) OR (situacaofisica = 3) OR (situacaofisica = 4) OR (situacaofisica = 5) OR (situacaofisica = 6) OR (situacaofisica = 97)),
	 CONSTRAINT tra_patio_a_finalidadepatio_check CHECK ((finalidadepatio = 0) OR (finalidadepatio = 2) OR (finalidadepatio = 4) OR (finalidadepatio = 5) OR (finalidadepatio = 6) OR (finalidadepatio = 7) OR (finalidadepatio = 8) OR (finalidadepatio = 99))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_tra_patio_a', 'features','edgv_tra_patio_a', 'Camada tra_patio_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_tra_patio_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_tra_patio_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_tra_patio_a" AFTER INSERT ON "edgv_tra_patio_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_tra_patio_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_tra_patio_a" AFTER DELETE ON "edgv_tra_patio_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_tra_patio_a'); END ;

CREATE TABLE edgv_veg_floresta_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 antropizada smallint NOT NULL,
	 densidade smallint,
	 secundaria smallint NOT NULL,
	 especiepredominante smallint,
	 geom MultiPolygon,
	 CONSTRAINT veg_floresta_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 4) OR (classificacaoporte = 5)),
	 CONSTRAINT veg_floresta_a_antropizada_check CHECK ((antropizada = 0) OR (antropizada = 1) OR (antropizada = 2)),
	 CONSTRAINT veg_floresta_a_densidade_check CHECK ((densidade = 0) OR (densidade = 1) OR (densidade = 2)),
	 CONSTRAINT veg_floresta_a_secundaria_check CHECK ((secundaria = 0) OR (secundaria = 1) OR (secundaria = 2)),
	 CONSTRAINT veg_floresta_a_especiepredominante_check CHECK ((especiepredominante = 0) OR (especiepredominante = 10) OR (especiepredominante = 11) OR (especiepredominante = 17) OR (especiepredominante = 27) OR (especiepredominante = 37) OR (especiepredominante = 96))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_floresta_a', 'features','edgv_veg_floresta_a', 'Camada veg_floresta_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_floresta_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_floresta_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_floresta_a" AFTER INSERT ON "edgv_veg_floresta_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_floresta_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_floresta_a" AFTER DELETE ON "edgv_veg_floresta_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_floresta_a'); END ;

CREATE TABLE edgv_veg_campinarana_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 antropizada smallint NOT NULL,
	 densidade smallint,
	 secundaria smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT veg_campinarana_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 4) OR (classificacaoporte = 5) OR (classificacaoporte = 98)),
	 CONSTRAINT veg_campinarana_a_antropizada_check CHECK ((antropizada = 0) OR (antropizada = 1) OR (antropizada = 2)),
	 CONSTRAINT veg_campinarana_a_densidade_check CHECK ((densidade = 0) OR (densidade = 1) OR (densidade = 2)),
	 CONSTRAINT veg_campinarana_a_secundaria_check CHECK ((secundaria = 0) OR (secundaria = 1) OR (secundaria = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_campinarana_a', 'features','edgv_veg_campinarana_a', 'Camada veg_campinarana_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_campinarana_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_campinarana_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_campinarana_a" AFTER INSERT ON "edgv_veg_campinarana_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_campinarana_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_campinarana_a" AFTER DELETE ON "edgv_veg_campinarana_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_campinarana_a'); END ;

CREATE TABLE edgv_veg_veg_cultivada_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 tipolavoura smallint NOT NULL,
	 finalidade smallint,
	 terreno smallint,
	 cultivopredominante smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT veg_veg_cultivada_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 4) OR (classificacaoporte = 5) OR (classificacaoporte = 98)),
	 CONSTRAINT veg_veg_cultivada_a_tipolavoura_check CHECK ((tipolavoura = 0) OR (tipolavoura = 1) OR (tipolavoura = 2) OR (tipolavoura = 3)),
	 CONSTRAINT veg_veg_cultivada_a_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 3) OR (finalidade = 4) OR (finalidade = 99)),
	 CONSTRAINT veg_veg_cultivada_a_terreno_check CHECK ((terreno = 0) OR (terreno = 1) OR (terreno = 2) OR (terreno = 3)),
	 CONSTRAINT veg_veg_cultivada_a_cultivopredominante_check CHECK ((cultivopredominante = 1) OR (cultivopredominante = 2) OR (cultivopredominante = 3) OR (cultivopredominante = 4) OR (cultivopredominante = 6) OR (cultivopredominante = 7) OR (cultivopredominante = 8) OR (cultivopredominante = 9) OR (cultivopredominante = 10) OR (cultivopredominante = 11) OR (cultivopredominante = 12) OR (cultivopredominante = 13) OR (cultivopredominante = 14) OR (cultivopredominante = 15) OR (cultivopredominante = 16) OR (cultivopredominante = 17) OR (cultivopredominante = 18) OR (cultivopredominante = 19) OR (cultivopredominante = 20) OR (cultivopredominante = 21) OR (cultivopredominante = 22) OR (cultivopredominante = 23) OR (cultivopredominante = 24) OR (cultivopredominante = 25) OR (cultivopredominante = 26) OR (cultivopredominante = 27) OR (cultivopredominante = 28) OR (cultivopredominante = 29) OR (cultivopredominante = 30) OR (cultivopredominante = 31) OR (cultivopredominante = 32) OR (cultivopredominante = 33) OR (cultivopredominante = 42) OR (cultivopredominante = 43) OR (cultivopredominante = 44) OR (cultivopredominante = 45) OR (cultivopredominante = 46) OR (cultivopredominante = 47) OR (cultivopredominante = 48) OR (cultivopredominante = 49) OR (cultivopredominante = 50) OR (cultivopredominante = 51) OR (cultivopredominante = 52) OR (cultivopredominante = 53) OR (cultivopredominante = 54) OR (cultivopredominante = 55) OR (cultivopredominante = 56) OR (cultivopredominante = 57) OR (cultivopredominante = 58) OR (cultivopredominante = 59) OR (cultivopredominante = 60) OR (cultivopredominante = 61) OR (cultivopredominante = 62) OR (cultivopredominante = 63) OR (cultivopredominante = 64) OR (cultivopredominante = 65) OR (cultivopredominante = 66) OR (cultivopredominante = 67) OR (cultivopredominante = 68) OR (cultivopredominante = 69) OR (cultivopredominante = 70) OR (cultivopredominante = 71) OR (cultivopredominante = 72) OR (cultivopredominante = 73) OR (cultivopredominante = 74) OR (cultivopredominante = 75) OR (cultivopredominante = 76) OR (cultivopredominante = 77) OR (cultivopredominante = 78) OR (cultivopredominante = 79) OR (cultivopredominante = 80) OR (cultivopredominante = 81) OR (cultivopredominante = 82) OR (cultivopredominante = 83) OR (cultivopredominante = 84) OR (cultivopredominante = 85) OR (cultivopredominante = 86) OR (cultivopredominante = 87) OR (cultivopredominante = 88) OR (cultivopredominante = 89) OR (cultivopredominante = 90) OR (cultivopredominante = 96) OR (cultivopredominante = 98) OR (cultivopredominante = 99) OR (cultivopredominante = 100) OR (cultivopredominante = 101) OR (cultivopredominante = 102) OR (cultivopredominante = 103) OR (cultivopredominante = 104) OR (cultivopredominante = 105) OR (cultivopredominante = 106) OR (cultivopredominante = 108) OR (cultivopredominante = 110) OR (cultivopredominante = 111) OR (cultivopredominante = 112) OR (cultivopredominante = 113) OR (cultivopredominante = 114) OR (cultivopredominante = 115) OR (cultivopredominante = 116) OR (cultivopredominante = 117) OR (cultivopredominante = 118) OR (cultivopredominante = 119) OR (cultivopredominante = 120) OR (cultivopredominante = 121) OR (cultivopredominante = 122) OR (cultivopredominante = 123) OR (cultivopredominante = 124) OR (cultivopredominante = 125))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_veg_cultivada_a', 'features','edgv_veg_veg_cultivada_a', 'Camada veg_veg_cultivada_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_veg_cultivada_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_veg_cultivada_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_veg_cultivada_a" AFTER INSERT ON "edgv_veg_veg_cultivada_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_veg_cultivada_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_veg_cultivada_a" AFTER DELETE ON "edgv_veg_veg_cultivada_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_veg_cultivada_a'); END ;

CREATE TABLE edgv_veg_veg_restinga_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 antropizada smallint NOT NULL,
	 densidade smallint,
	 secundaria smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT veg_veg_restinga_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 4) OR (classificacaoporte = 5) OR (classificacaoporte = 98)),
	 CONSTRAINT veg_veg_restinga_a_antropizada_check CHECK ((antropizada = 0) OR (antropizada = 1) OR (antropizada = 2)),
	 CONSTRAINT veg_veg_restinga_a_densidade_check CHECK ((densidade = 0) OR (densidade = 1) OR (densidade = 2)),
	 CONSTRAINT veg_veg_restinga_a_secundaria_check CHECK ((secundaria = 0) OR (secundaria = 1) OR (secundaria = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_veg_restinga_a', 'features','edgv_veg_veg_restinga_a', 'Camada veg_veg_restinga_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_veg_restinga_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_veg_restinga_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_veg_restinga_a" AFTER INSERT ON "edgv_veg_veg_restinga_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_veg_restinga_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_veg_restinga_a" AFTER DELETE ON "edgv_veg_veg_restinga_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_veg_restinga_a'); END ;

CREATE TABLE edgv_veg_cerrado_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 antropizada smallint NOT NULL,
	 densidade smallint,
	 secundaria smallint NOT NULL,
	 vereda smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT veg_cerrado_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 4) OR (classificacaoporte = 5) OR (classificacaoporte = 98)),
	 CONSTRAINT veg_cerrado_a_antropizada_check CHECK ((antropizada = 0) OR (antropizada = 1) OR (antropizada = 2)),
	 CONSTRAINT veg_cerrado_a_densidade_check CHECK ((densidade = 0) OR (densidade = 1) OR (densidade = 2)),
	 CONSTRAINT veg_cerrado_a_secundaria_check CHECK ((secundaria = 0) OR (secundaria = 1) OR (secundaria = 2)),
	 CONSTRAINT veg_cerrado_a_vereda_check CHECK ((vereda = 0) OR (vereda = 1) OR (vereda = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_cerrado_a', 'features','edgv_veg_cerrado_a', 'Camada veg_cerrado_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_cerrado_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_cerrado_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_cerrado_a" AFTER INSERT ON "edgv_veg_cerrado_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_cerrado_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_cerrado_a" AFTER DELETE ON "edgv_veg_cerrado_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_cerrado_a'); END ;

CREATE TABLE edgv_veg_brejo_pantano_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 antropizada smallint NOT NULL,
	 densidade smallint,
	 secundaria smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT veg_brejo_pantano_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 4) OR (classificacaoporte = 5) OR (classificacaoporte = 98)),
	 CONSTRAINT veg_brejo_pantano_a_antropizada_check CHECK ((antropizada = 0) OR (antropizada = 1) OR (antropizada = 2)),
	 CONSTRAINT veg_brejo_pantano_a_densidade_check CHECK ((densidade = 0) OR (densidade = 1) OR (densidade = 2)),
	 CONSTRAINT veg_brejo_pantano_a_secundaria_check CHECK ((secundaria = 0) OR (secundaria = 1) OR (secundaria = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_brejo_pantano_a', 'features','edgv_veg_brejo_pantano_a', 'Camada veg_brejo_pantano_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_brejo_pantano_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_brejo_pantano_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_brejo_pantano_a" AFTER INSERT ON "edgv_veg_brejo_pantano_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_brejo_pantano_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_brejo_pantano_a" AFTER DELETE ON "edgv_veg_brejo_pantano_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_brejo_pantano_a'); END ;

CREATE TABLE edgv_veg_mangue_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 antropizada smallint NOT NULL,
	 densidade smallint,
	 secundaria smallint NOT NULL,
	 tipomanguezal smallint,
	 geom MultiPolygon,
	 CONSTRAINT veg_mangue_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 4) OR (classificacaoporte = 5) OR (classificacaoporte = 98)),
	 CONSTRAINT veg_mangue_a_antropizada_check CHECK ((antropizada = 0) OR (antropizada = 1) OR (antropizada = 2)),
	 CONSTRAINT veg_mangue_a_densidade_check CHECK ((densidade = 0) OR (densidade = 1) OR (densidade = 2)),
	 CONSTRAINT veg_mangue_a_secundaria_check CHECK ((secundaria = 0) OR (secundaria = 1) OR (secundaria = 2)),
	 CONSTRAINT veg_mangue_a_tipomanguezal_check CHECK ((tipomanguezal = 0) OR (tipomanguezal = 2) OR (tipomanguezal = 3) OR (tipomanguezal = 4))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_mangue_a', 'features','edgv_veg_mangue_a', 'Camada veg_mangue_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_mangue_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_mangue_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_mangue_a" AFTER INSERT ON "edgv_veg_mangue_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_mangue_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_mangue_a" AFTER DELETE ON "edgv_veg_mangue_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_mangue_a'); END ;

CREATE TABLE edgv_veg_reflorestamento_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 tipolavoura smallint NOT NULL,
	 finalidade smallint,
	 terreno smallint,
	 cultivopredominante smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT veg_reflorestamento_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 4) OR (classificacaoporte = 5) OR (classificacaoporte = 98)),
	 CONSTRAINT veg_reflorestamento_a_tipolavoura_check CHECK ((tipolavoura = 0) OR (tipolavoura = 1) OR (tipolavoura = 2)),
	 CONSTRAINT veg_reflorestamento_a_finalidade_check CHECK ((finalidade = 0) OR (finalidade = 1) OR (finalidade = 2) OR (finalidade = 3) OR (finalidade = 4) OR (finalidade = 99)),
	 CONSTRAINT veg_reflorestamento_a_terreno_check CHECK ((terreno = 0) OR (terreno = 1) OR (terreno = 2) OR (terreno = 3)),
	 CONSTRAINT veg_reflorestamento_a_cultivopredominante_check CHECK ((cultivopredominante = 1) OR (cultivopredominante = 2) OR (cultivopredominante = 3) OR (cultivopredominante = 4) OR (cultivopredominante = 6) OR (cultivopredominante = 7) OR (cultivopredominante = 8) OR (cultivopredominante = 9) OR (cultivopredominante = 10) OR (cultivopredominante = 11) OR (cultivopredominante = 12) OR (cultivopredominante = 13) OR (cultivopredominante = 14) OR (cultivopredominante = 15) OR (cultivopredominante = 16) OR (cultivopredominante = 17) OR (cultivopredominante = 18) OR (cultivopredominante = 19) OR (cultivopredominante = 20) OR (cultivopredominante = 21) OR (cultivopredominante = 22) OR (cultivopredominante = 23) OR (cultivopredominante = 24) OR (cultivopredominante = 25) OR (cultivopredominante = 26) OR (cultivopredominante = 27) OR (cultivopredominante = 28) OR (cultivopredominante = 29) OR (cultivopredominante = 30) OR (cultivopredominante = 31) OR (cultivopredominante = 32) OR (cultivopredominante = 33) OR (cultivopredominante = 42) OR (cultivopredominante = 43) OR (cultivopredominante = 44) OR (cultivopredominante = 45) OR (cultivopredominante = 46) OR (cultivopredominante = 47) OR (cultivopredominante = 48) OR (cultivopredominante = 49) OR (cultivopredominante = 50) OR (cultivopredominante = 51) OR (cultivopredominante = 52) OR (cultivopredominante = 53) OR (cultivopredominante = 54) OR (cultivopredominante = 55) OR (cultivopredominante = 56) OR (cultivopredominante = 57) OR (cultivopredominante = 58) OR (cultivopredominante = 59) OR (cultivopredominante = 60) OR (cultivopredominante = 61) OR (cultivopredominante = 62) OR (cultivopredominante = 63) OR (cultivopredominante = 64) OR (cultivopredominante = 65) OR (cultivopredominante = 66) OR (cultivopredominante = 67) OR (cultivopredominante = 68) OR (cultivopredominante = 69) OR (cultivopredominante = 70) OR (cultivopredominante = 71) OR (cultivopredominante = 72) OR (cultivopredominante = 73) OR (cultivopredominante = 74) OR (cultivopredominante = 75) OR (cultivopredominante = 76) OR (cultivopredominante = 77) OR (cultivopredominante = 78) OR (cultivopredominante = 79) OR (cultivopredominante = 80) OR (cultivopredominante = 81) OR (cultivopredominante = 82) OR (cultivopredominante = 83) OR (cultivopredominante = 84) OR (cultivopredominante = 85) OR (cultivopredominante = 86) OR (cultivopredominante = 87) OR (cultivopredominante = 88) OR (cultivopredominante = 89) OR (cultivopredominante = 90) OR (cultivopredominante = 96) OR (cultivopredominante = 99) OR (cultivopredominante = 100) OR (cultivopredominante = 101) OR (cultivopredominante = 102) OR (cultivopredominante = 103) OR (cultivopredominante = 104) OR (cultivopredominante = 105) OR (cultivopredominante = 106) OR (cultivopredominante = 108) OR (cultivopredominante = 110) OR (cultivopredominante = 111) OR (cultivopredominante = 112) OR (cultivopredominante = 113) OR (cultivopredominante = 114) OR (cultivopredominante = 115) OR (cultivopredominante = 116) OR (cultivopredominante = 117) OR (cultivopredominante = 118) OR (cultivopredominante = 119))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_reflorestamento_a', 'features','edgv_veg_reflorestamento_a', 'Camada veg_reflorestamento_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_reflorestamento_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_reflorestamento_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_reflorestamento_a" AFTER INSERT ON "edgv_veg_reflorestamento_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_reflorestamento_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_reflorestamento_a" AFTER DELETE ON "edgv_veg_reflorestamento_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_reflorestamento_a'); END ;

CREATE TABLE edgv_veg_campo_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 antropizada smallint NOT NULL,
	 densidade smallint NOT NULL,
	 secundaria smallint NOT NULL,
	 tipocampo smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT veg_campo_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 5)),
	 CONSTRAINT veg_campo_a_antropizada_check CHECK ((antropizada = 0) OR (antropizada = 1) OR (antropizada = 2)),
	 CONSTRAINT veg_campo_a_densidade_check CHECK ((densidade = 2)),
	 CONSTRAINT veg_campo_a_secundaria_check CHECK ((secundaria = 0) OR (secundaria = 1) OR (secundaria = 2)),
	 CONSTRAINT veg_campo_a_tipocampo_check CHECK ((tipocampo = 0) OR (tipocampo = 1) OR (tipocampo = 2) OR (tipocampo = 3))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_campo_a', 'features','edgv_veg_campo_a', 'Camada veg_campo_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_campo_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_campo_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_campo_a" AFTER INSERT ON "edgv_veg_campo_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_campo_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_campo_a" AFTER DELETE ON "edgv_veg_campo_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_campo_a'); END ;

CREATE TABLE edgv_veg_caatinga_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 antropizada smallint NOT NULL,
	 densidade smallint,
	 secundaria smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT veg_caatinga_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 4) OR (classificacaoporte = 5) OR (classificacaoporte = 98)),
	 CONSTRAINT veg_caatinga_a_antropizada_check CHECK ((antropizada = 0) OR (antropizada = 1) OR (antropizada = 2)),
	 CONSTRAINT veg_caatinga_a_densidade_check CHECK ((densidade = 0) OR (densidade = 1) OR (densidade = 2)),
	 CONSTRAINT veg_caatinga_a_secundaria_check CHECK ((secundaria = 0) OR (secundaria = 1) OR (secundaria = 2))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_caatinga_a', 'features','edgv_veg_caatinga_a', 'Camada veg_caatinga_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_caatinga_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_caatinga_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_caatinga_a" AFTER INSERT ON "edgv_veg_caatinga_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_caatinga_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_caatinga_a" AFTER DELETE ON "edgv_veg_caatinga_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_caatinga_a'); END ;

CREATE TABLE edgv_veg_veg_area_contato_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 antropizada smallint NOT NULL,
	 densidade smallint,
	 secundaria smallint NOT NULL,
	 tipoveg smallint,
	 geom MultiPolygon,
	 CONSTRAINT veg_veg_area_contato_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 4) OR (classificacaoporte = 5) OR (classificacaoporte = 98)),
	 CONSTRAINT veg_veg_area_contato_a_antropizada_check CHECK ((antropizada = 0) OR (antropizada = 1) OR (antropizada = 2)),
	 CONSTRAINT veg_veg_area_contato_a_densidade_check CHECK ((densidade = 0) OR (densidade = 1) OR (densidade = 2)),
	 CONSTRAINT veg_veg_area_contato_a_secundaria_check CHECK ((secundaria = 0) OR (secundaria = 1) OR (secundaria = 2)),
	 CONSTRAINT veg_veg_area_contato_a_tipoveg_check CHECK ((tipoveg = 0) OR (tipoveg = 2) OR (tipoveg = 3) OR (tipoveg = 4) OR (tipoveg = 5) OR (tipoveg = 6) OR (tipoveg = 7) OR (tipoveg = 8) OR (tipoveg = 9) OR (tipoveg = 10) OR (tipoveg = 11))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_veg_veg_area_contato_a', 'features','edgv_veg_veg_area_contato_a', 'Camada veg_veg_area_contato_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_veg_veg_area_contato_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_veg_veg_area_contato_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_veg_veg_area_contato_a" AFTER INSERT ON "edgv_veg_veg_area_contato_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_veg_veg_area_contato_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_veg_veg_area_contato_a" AFTER DELETE ON "edgv_veg_veg_area_contato_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_veg_veg_area_contato_a'); END ;

CREATE TABLE edgv_ver_arvore_isolada_p(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 geometriaaproximada boolean NOT NULL,
	 geom MultiPoint
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_ver_arvore_isolada_p', 'features','edgv_ver_arvore_isolada_p', 'Camada ver_arvore_isolada_p da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_ver_arvore_isolada_p', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_ver_arvore_isolada_p', 'geom', 'MULTIPOINT', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_ver_arvore_isolada_p" AFTER INSERT ON "edgv_ver_arvore_isolada_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_ver_arvore_isolada_p'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_ver_arvore_isolada_p" AFTER DELETE ON "edgv_ver_arvore_isolada_p" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_ver_arvore_isolada_p'); END ;

CREATE TABLE edgv_ver_jardim_a(
	 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 nome varchar(80),
	 geometriaaproximada boolean NOT NULL,
	 classificacaoporte smallint NOT NULL,
	 tipolavoura smallint NOT NULL,
	 finalidade smallint NOT NULL,
	 terreno smallint,
	 cultivopredominante smallint NOT NULL,
	 geom MultiPolygon,
	 CONSTRAINT ver_jardim_a_classificacaoporte_check CHECK ((classificacaoporte = 0) OR (classificacaoporte = 2) OR (classificacaoporte = 3) OR (classificacaoporte = 4) OR (classificacaoporte = 5) OR (classificacaoporte = 98)),
	 CONSTRAINT ver_jardim_a_tipolavoura_check CHECK ((tipolavoura = 0) OR (tipolavoura = 1) OR (tipolavoura = 2)),
	 CONSTRAINT ver_jardim_a_finalidade_check CHECK ((finalidade = 4)),
	 CONSTRAINT ver_jardim_a_terreno_check CHECK ((terreno = 0) OR (terreno = 1) OR (terreno = 2) OR (terreno = 3)),
	 CONSTRAINT ver_jardim_a_cultivopredominante_check CHECK ((cultivopredominante = 1) OR (cultivopredominante = 2) OR (cultivopredominante = 3) OR (cultivopredominante = 4) OR (cultivopredominante = 6) OR (cultivopredominante = 7) OR (cultivopredominante = 8) OR (cultivopredominante = 9) OR (cultivopredominante = 10) OR (cultivopredominante = 11) OR (cultivopredominante = 12) OR (cultivopredominante = 13) OR (cultivopredominante = 14) OR (cultivopredominante = 15) OR (cultivopredominante = 16) OR (cultivopredominante = 17) OR (cultivopredominante = 18) OR (cultivopredominante = 19) OR (cultivopredominante = 20) OR (cultivopredominante = 21) OR (cultivopredominante = 22) OR (cultivopredominante = 23) OR (cultivopredominante = 24) OR (cultivopredominante = 25) OR (cultivopredominante = 26) OR (cultivopredominante = 27) OR (cultivopredominante = 28) OR (cultivopredominante = 29) OR (cultivopredominante = 30) OR (cultivopredominante = 31) OR (cultivopredominante = 32) OR (cultivopredominante = 33) OR (cultivopredominante = 42) OR (cultivopredominante = 43) OR (cultivopredominante = 44) OR (cultivopredominante = 45) OR (cultivopredominante = 46) OR (cultivopredominante = 47) OR (cultivopredominante = 48) OR (cultivopredominante = 49) OR (cultivopredominante = 50) OR (cultivopredominante = 51) OR (cultivopredominante = 52) OR (cultivopredominante = 53) OR (cultivopredominante = 54) OR (cultivopredominante = 55) OR (cultivopredominante = 56) OR (cultivopredominante = 57) OR (cultivopredominante = 58) OR (cultivopredominante = 59) OR (cultivopredominante = 60) OR (cultivopredominante = 61) OR (cultivopredominante = 62) OR (cultivopredominante = 63) OR (cultivopredominante = 64) OR (cultivopredominante = 65) OR (cultivopredominante = 66) OR (cultivopredominante = 67) OR (cultivopredominante = 68) OR (cultivopredominante = 69) OR (cultivopredominante = 70) OR (cultivopredominante = 71) OR (cultivopredominante = 72) OR (cultivopredominante = 73) OR (cultivopredominante = 74) OR (cultivopredominante = 75) OR (cultivopredominante = 76) OR (cultivopredominante = 77) OR (cultivopredominante = 78) OR (cultivopredominante = 79) OR (cultivopredominante = 80) OR (cultivopredominante = 81) OR (cultivopredominante = 82) OR (cultivopredominante = 83) OR (cultivopredominante = 84) OR (cultivopredominante = 85) OR (cultivopredominante = 86) OR (cultivopredominante = 87) OR (cultivopredominante = 88) OR (cultivopredominante = 89) OR (cultivopredominante = 90) OR (cultivopredominante = 96) OR (cultivopredominante = 98) OR (cultivopredominante = 99) OR (cultivopredominante = 100) OR (cultivopredominante = 101) OR (cultivopredominante = 102) OR (cultivopredominante = 103) OR (cultivopredominante = 104) OR (cultivopredominante = 105) OR (cultivopredominante = 106) OR (cultivopredominante = 108) OR (cultivopredominante = 110) OR (cultivopredominante = 111) OR (cultivopredominante = 112) OR (cultivopredominante = 113) OR (cultivopredominante = 114) OR (cultivopredominante = 115) OR (cultivopredominante = 116) OR (cultivopredominante = 117) OR (cultivopredominante = 118) OR (cultivopredominante = 119) OR (cultivopredominante = 120) OR (cultivopredominante = 121) OR (cultivopredominante = 122) OR (cultivopredominante = 123) OR (cultivopredominante = 124) OR (cultivopredominante = 125))
);
INSERT into gpkg_contents (table_name, data_type, identifier, description, min_x, min_y, max_x, max_y, srs_id) VALUES ('edgv_ver_jardim_a', 'features','edgv_ver_jardim_a', 'Camada ver_jardim_a da EDGV', NULL, NULL, NULL, NULL, 4674);
INSERT into gpkg_ogr_contents (table_name, feature_count) VALUES ('edgv_ver_jardim_a', 0);
INSERT into gpkg_geometry_columns VALUES ('edgv_ver_jardim_a', 'geom', 'MULTIPOLYGON', 4674, 0, 0 );
CREATE TRIGGER "trigger_insert_feature_count_edgv_ver_jardim_a" AFTER INSERT ON "edgv_ver_jardim_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count + 1 WHERE lower(table_name) = lower('edgv_ver_jardim_a'); END ;
CREATE TRIGGER "trigger_delete_feature_count_edgv_ver_jardim_a" AFTER DELETE ON "edgv_ver_jardim_a" BEGIN UPDATE gpkg_ogr_contents SET feature_count = feature_count - 1 WHERE lower(table_name) = lower('edgv_ver_jardim_a'); END ;
