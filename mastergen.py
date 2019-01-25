# -*- coding: utf-8 -*-
import os
from jinja2 import Environment, FileSystemLoader
import json

THIS_DIR = os.path.dirname(os.path.abspath(__file__))


class MasterGen():
    def __init__(self, master_path):
        try:
            with open(master_path) as master_file:
                self.master = json.load(master_file)
        except EOFError as e:
            print("Caught the EOF error.")
            raise e
        except IOError as e:
            print("Caught the I/O error.")
            raise e
        else:
            # TODO Validate JSON file against JsonSchema
            pass

    def buildSQL(self, dest, atributos_padrao=False, extension_classes=False):
        master = self.master
        sql = []
        sql.append(u"CREATE SCHEMA {0};".format(master["schema_dados"]))
        sql.append(u"CREATE SCHEMA {0};".format(master["schema_dominios"]))
        sql.append(u"")
        sql.append(u"CREATE EXTENSION postgis;")
        sql.append(u"SET search_path TO pg_catalog,public,{0},{1};".format(
            master["schema_dados"], master["schema_dominios"]))
        sql.append(u"")
        sql.append(u"CREATE TABLE public.db_metadata(")
        sql.append(u"\t edgvversion varchar(50) NOT NULL DEFAULT '{0}',".format(
            master["modelo"]))
        sql.append(u"\t dbimplversion varchar(50) NOT NULL DEFAULT '{0}',".format(
            master["versao"]))
        sql.append(u"\t CONSTRAINT edgvversioncheck CHECK (edgvversion = '{0}')".format(
            master["modelo"]))
        sql.append(u");")
        sql.append(u"INSERT INTO public.db_metadata (edgvversion, dbimplversion) VALUES ('{0}','{1}');".format(
            master["modelo"], master["versao"]))
        sql.append(u"")

        for dominio in master["dominios"]:
            sql.append(u"CREATE TABLE {0}.{1} (".format(
                master["schema_dominios"], dominio["nome"]))
            sql.append(u"\t code smallint NOT NULL,")
            sql.append(u"\t code_name text NOT NULL,")
            sql.append(
                u"\t filter text NOT NULL,") if "filtro" in dominio and dominio["filtro"] else None
            sql.append(
                u"\t CONSTRAINT {0}_pk PRIMARY KEY (code)".format(dominio["nome"]))
            sql.append(u");")
            sql.append(u"")

            for valor in dominio["valores"]:
                if "filtro" in dominio and dominio["filtro"]:
                    sql.append(u"INSERT INTO {0}.{1} (code,code_name, filter) VALUES ({2},'{3}','{4}');".format(master["schema_dominios"],
                                                                                                                dominio["nome"], valor["code"], valor["value"], valor["valor_filtro"]))
                else:
                    sql.append(u"INSERT INTO {0}.{1} (code,code_name) VALUES ({2},'{3}');".format(master["schema_dominios"],
                                                                                                  dominio["nome"], valor["code"], valor["value"]))

            if 'a_ser_preenchido' in master:
                if "filtro" in dominio and dominio["filtro"]:
                    sql.append(u"INSERT INTO {0}.{1} (code,code_name, filter) VALUES ({2},'{3}','{3}');".format(master["schema_dominios"],
                                                                                                                dominio["nome"], master["a_ser_preenchido"]["code"], master["a_ser_preenchido"]["value"]))
                else:
                    sql.append(u"INSERT INTO {0}.{1} (code,code_name) VALUES ({2},'{3}');".format(master["schema_dominios"],
                                                                                                  dominio["nome"], master["a_ser_preenchido"]["code"], master["a_ser_preenchido"]["value"]))

            sql.append(u"")

        if extension_classes and "extension_classes" in master:
            master["classes"].extend(master["extension_classes"])

        for classe in master["classes"]:
            if atributos_padrao and "atributos_padrao" in master:
                classe["atributos"].extend(master["atributos_padrao"])
                
            for primitiva in classe["primitivas"]:
                sql.append(u"CREATE TABLE {0}.{3}_{1}_{2}(".format(
                    master["schema_dados"], classe["nome"], master["geom_suffix"][primitiva], classe["categoria"]))
                sql.append(u"\t {0} serial NOT NULL,".format(
                    master["nome_id"]))

                for atributo in classe["atributos"]:
                    if atributo["cardinalidade"] == "0..1":
                        sql.append(u"\t {0} {1},".format(
                            atributo["nome"], atributo["tipo"]))
                    elif atributo["cardinalidade"] == "1..1":
                        sql.append(u"\t {0} {1} NOT NULL,".format(
                            atributo["nome"], atributo["tipo"]))
                    elif atributo["cardinalidade"] == "0..*":
                        sql.append(u"\t {0} {1}[],".format(
                            atributo["nome"], atributo["tipo"]))
                    elif atributo["cardinalidade"] == "1..*":
                        sql.append(u"\t {0} {1}[] NOT NULL,".format(
                            atributo["nome"], atributo["tipo"]))

                sql.append(u"\t {0} geometry({1}, {2}),".format(
                    master["nome_geom"], primitiva, master["coord_sys"]))
                sql.append(u"\t CONSTRAINT {3}_{0}_{2}_pk PRIMARY KEY ({1})".format(classe["nome"], master["nome_id"],
                                                                                    master["geom_suffix"][primitiva],  classe["categoria"]))
                sql.append(u"\t WITH (FILLFACTOR = {0})".format(
                    master["fill_factor"]))
                sql.append(u");")
                sql.append(u"CREATE INDEX {4}_{0}_{3}_geom ON {1}.{4}_{0}_{3} USING gist ({2});".format(classe["nome"],
                                                                                                        master["schema_dados"], master["nome_geom"], master["geom_suffix"][primitiva], classe["categoria"]))

                sql.append(u"")

                for atributo in classe["atributos"]:

                    if "mapa_valor" in atributo:
                        valores_att = [valor["code"] for valor in atributo["valores"]
                                       if ("primitivas" in valor and primitiva in valor["primitivas"]) or "primitivas" not in valor]

                        if atributo["cardinalidade"] == "0..1" or atributo["cardinalidade"] == "1..1":
                            sql.append(u"ALTER TABLE {2}.{0}_{1}_{3}".format(classe["categoria"], classe["nome"],
                                                                             master["schema_dados"], master["geom_suffix"][primitiva]))
                            sql.append(u"\t ADD CONSTRAINT {0}_{1}_{2}_{3}_fk FOREIGN KEY ({3})".format(classe["categoria"], classe["nome"],
                                                                                                        master["geom_suffix"][primitiva], atributo["nome"]))
                            sql.append(u"\t REFERENCES {1}.{0} (code) MATCH FULL".format(
                                atributo["mapa_valor"], master["schema_dominios"]))
                            sql.append(
                                u"\t ON UPDATE NO ACTION ON DELETE NO ACTION;")
                            sql.append(u"")

                            dominio = [dominio for dominio in master["dominios"]
                                       if "nome" in dominio and dominio["nome"] == atributo["mapa_valor"]][0]
                            dominio_att = [valor["code"]
                                           for valor in dominio["valores"]]

                            if len(set(dominio_att).difference(valores_att)) > 0:
                                sql.append(u"ALTER TABLE {0}.{1}_{2}_{3}".format(master["schema_dados"], classe["categoria"], classe["nome"],
                                                                                 master["geom_suffix"][primitiva]))
                                sql.append(u"\t ADD CONSTRAINT {0}_{1}_{2}_{3}_check ".format(classe["categoria"], classe["nome"],
                                                                                              master["geom_suffix"][primitiva], atributo["nome"]))

                                if 'a_ser_preenchido' in master:
                                    valores_att.append(
                                        master["a_ser_preenchido"]["code"])
                                    sql.append(u"\t CHECK ({0} = ANY(ARRAY[{1}])); ".format(atributo["nome"],
                                                                                            ", ".join(["{0} :: SMALLINT".format(valor) for valor in valores_att])))
                                else:
                                    sql.append(u"\t CHECK ({0} = ANY(ARRAY[{1}])); ".format(atributo["nome"],
                                                                                            ", ".join(["{0} :: SMALLINT".format(valor) for valor in valores_att])))

                                    sql.append(u"")

                            if master['a_ser_preenchido']:
                                sql.append(u"ALTER TABLE {1}.{4}_{0}_{2} ALTER COLUMN {3} SET DEFAULT {5};".format(classe["nome"],
                                                                                                                   master["schema_dados"], master["geom_suffix"][
                                                                                                                       primitiva], atributo["nome"],
                                                                                                                   classe["categoria"], master["a_ser_preenchido"]["code"]))
                                sql.append(u"")

                        elif atributo["cardinalidade"] == "0..*" or atributo["cardinalidade"] == "1..*":

                            sql.append(u"ALTER TABLE {0}.{1}_{2}_{3}".format(master["schema_dados"], classe["categoria"], classe["nome"],
                                                                             master["geom_suffix"][primitiva]))
                            sql.append(u"\t ADD CONSTRAINT {0}_{1}_{2}_{3}_check ".format(classe["categoria"], classe["nome"],
                                                                                          master["geom_suffix"][primitiva], atributo["nome"]))

                            if 'a_ser_preenchido' in master:
                                valores_att.append(
                                    master["a_ser_preenchido"]["code"])
                                sql.append(u"\t CHECK ({0} <@ ANY(ARRAY[{1}])); ".format(atributo["nome"],
                                                                                         ", ".join(["{0} :: SMALLINT".format(valor) for valor in valores_att])))
                            else:
                                sql.append(u"\t CHECK ({0} <@ ANY(ARRAY[{1}])); ".format(atributo["nome"],
                                                                                         ", ".join(["{0} :: SMALLINT".format(valor) for valor in valores_att])))

                            sql.append(u"")

                            if master['a_ser_preenchido']:
                                sql.append(u"ALTER TABLE {1}.{4}_{0}_{2} ALTER COLUMN {3} SET DEFAULT ARRAY[{5} :: SMALLINT];".format(atributo["nome"],
                                                                                                                                      master["schema_dados"], master["geom_suffix"][
                                                                                                                                          primitiva], atributo["nome"],
                                                                                                                                      classe["categoria"], master["a_ser_preenchido"]["code"]))
                                sql.append(u"")

        try:
            with open(dest, 'w') as sql_file:
                sql_text = "\r".join(sql).encode('utf-8')
                sql_file.write(sql_text)
                return "Arquivo de modelagem SQL gerado com sucesso em {0}".format(dest)
        except Exception as e:
            return "Erro: {0}".format(e)

    def buildRCO(self, dest, template):
        master = self.master

        tipo_map = {}
        tipo_map["smallint"] = u"Mapa de valores (Inteiro)"
        tipo_map["varchar"] = u"Alfanumérico"

        dominio_by_code = {}
        for dominio in master["dominios"]:
            dominio_by_code[dominio["nome"]] = {}
            for valor in dominio["valores"]:
                dominio_by_code[dominio["nome"]][valor["code"]] = {}
                dominio_by_code[dominio["nome"]
                                ][valor["code"]]["value"] = valor["value"]
                dominio_by_code[dominio["nome"]][valor["code"]
                                                 ]["descricao"] = valor["descricao"]

        dominio_by_class_attribute = {}
        for classe in master["classes"]:
            dominio_by_class_attribute[classe["nome"]] = {}
            for atributo in classe["atributos"]:
                if "valores" in atributo:
                    dominio_by_class_attribute[classe["nome"]][atributo["nome"]
                                                               ] = dominio_by_code[atributo["mapa_valor"]]

        for classe in master["classes"]:
            classe["print_nome"] = "_".join(
                [parte.title() for parte in classe["nome"].split("_")])
            geoms = [master["geom_suffix"][geom].upper()
                     for geom in classe["primitivas"]]
            geoms = sorted(geoms, reverse=True)
            classe["print_geometrias"] = " ".join(geoms)

            for atributo in classe["atributos"]:
                atributo["print_tipo"] = tipo_map[atributo["tipo"].split("(")[
                    0]]
                if "valores" in atributo:
                    atributo["rowspan"] = len(atributo["valores"])

                    for valor in atributo["valores"]:
                        valor["print_nome"] = u"{0} ({1})".format(
                            dominio_by_class_attribute[classe["nome"]][atributo["nome"]][valor["code"]]["value"], valor["code"])
                        valor["descricao"] = dominio_by_class_attribute[classe["nome"]
                                                                        ][atributo["nome"]][valor["code"]]["descricao"]

                    atributo["valores"].sort(key=lambda k: k['print_nome'])

                else:
                    atributo["valor_nome"] = u"A ser preenchido"
                    atributo["valor_descricao"] = u"-"

        try:
            with open(dest, 'w') as f:
                j2_env = Environment(loader=FileSystemLoader(THIS_DIR),
                                     trim_blocks=True)
                html = j2_env.get_template(template).render(
                    master=master
                )
                f.write(html.encode('utf-8'))
                return "Arquivo da RCO gerado com sucesso em {0}".format(dest)
        except Exception as e:
            return "Erro: {0}".format(e)
