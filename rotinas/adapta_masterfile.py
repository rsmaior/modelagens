# -*- coding: utf-8 -*-
from collections import defaultdict
import json
import os
import psycopg2.extras
import psycopg2

with open(os.path.join(os.path.dirname(__file__),'master_file_300_dsgtools_v2.json'), 'r', encoding='utf-8') as f:
    master_dict = json.load(f)

black_list = [
        'administracao',
        'classeativecon',
        'divisaoativecon',
        'grupoativecon',
        'proprioadm',
        'cep',
        'pais',
        'unidadefederacao',
        'municipio',
        'bairro',
        'logradouro',
        'bloco',
        'numerosequencial',
        'numerometrico',
        'numeropavimentos'
    ]

def get_original_class_dict():
    classDict = defaultdict(list)
    postgresCon = psycopg2.connect("host=localhost port=5432 user=postgres password=postgres dbname=template_edgv_3")
    dict_cur = postgresCon.cursor(cursor_factory=psycopg2.extras.DictCursor)
    sql = """select table_name, column_name from information_schema.columns where 
                table_schema = 'edgv' 
                and column_name not like 'id%'
                and column_name != 'geom'
        """
    dict_cur.execute(sql)
    for item in dict_cur.fetchall():
        nome = '_'.join(item['table_name'].split('_')[1:-1])
        classDict[nome].append(item['column_name'])
    return classDict

classDict = get_original_class_dict()

for class_idx, class_item in enumerate(master_dict['classes']):
    if class_item['nome'] in classDict:
        sort_lambda = lambda x : classDict[class_item['nome']].index(x['nome']) if x['nome'] in classDict[class_item['nome']] else 99999
    else:
        sort_lambda = lambda x : 0
    black_list_index_list = []
    if class_item['categoria'] == 'edf':
        black_list_index_list = [i for i, attr_item in enumerate(class_item['atributos']) if attr_item['nome'] in black_list]
    black_list_index_list.sort(reverse=True)
    for idx in black_list_index_list:
        master_dict['classes'][class_idx]['atributos'].pop(idx)
    master_dict['classes'][class_idx]['atributos'].sort(key=sort_lambda)


with open(os.path.join(os.path.dirname(__file__),'masterfile_300_dsgtools_v3.json'), 'w', encoding='utf-8') as g:
    g.write(json.dumps(master_dict, indent=4, sort_keys=False, ensure_ascii=False))
