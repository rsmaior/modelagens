# -*- coding: utf-8 -*-
from collections import defaultdict
import json
import os

change_dict = {
    "nome" : {
        "lista_mudanca" : [
            {"tipo": "varchar(80)"}
        ]
    },
    "geometriaaproximada" : {
        "lista_mudanca" : [
            {"tipo" : "boolean"}
        ],
        "lista_remocao" : [
            "mapa_valor",
            "valores"
        ]
    }
}

with open(os.path.join(os.path.dirname(__file__),'masterfile_300_dsgtools_v3.json'), 'r', encoding='utf-8') as f:
    master_dict = json.load(f)

for class_item in master_dict['classes']:
    for attr_item in class_item['atributos']:
        if attr_item['nome'] in change_dict:
            if "lista_mudanca" in change_dict[attr_item['nome']]:
                for mudanca in change_dict[attr_item['nome']]["lista_mudanca"]:
                    for k, v in mudanca.items():
                        attr_item[k] = v
            if "lista_remocao" in change_dict[attr_item['nome']]:
                for remocao in change_dict[attr_item['nome']]["lista_remocao"]:
                    if remocao in attr_item:
                        attr_item.pop(remocao)


with open(os.path.join(os.path.dirname(__file__),'masterfile300_dsgtools_v4.json'), 'w', encoding='utf-8') as g:
    g.write(json.dumps(master_dict, indent=4, sort_keys=False, ensure_ascii=False))