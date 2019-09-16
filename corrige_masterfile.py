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

with open(os.path.join(os.path.dirname(__file__),'masterfile300_dsgtools_v4.json'), 'r', encoding='utf-8') as f:
    master_dict = json.load(f)

# for domain_item in master_dict['dominios']:
#     for value_item in domain_item['valores']:
#         if value_item['value'] in ['Desconhecido', 'Desconhecida']:
#             value_item['code'] = 0

# for class_item in master_dict['classes']:
#     for attr_item in class_item['atributos']:
#         if attr_item['nome'] in change_dict:
#             if "lista_mudanca" in change_dict[attr_item['nome']]:
#                 for mudanca in change_dict[attr_item['nome']]["lista_mudanca"]:
#                     for k, v in mudanca.items():
#                         attr_item[k] = v
#             if "lista_remocao" in change_dict[attr_item['nome']]:
#                 for remocao in change_dict[attr_item['nome']]["lista_remocao"]:
#                     if remocao in attr_item:
#                         attr_item.pop(remocao)

### fix desconhecido

domainDict = defaultdict(list)
for domain_item in master_dict['dominios']:
    domain_item['valores'].sort(key=lambda x:x['code'])
    domainDict[domain_item['nome']] = set(i['code'] for i in domain_item['valores'])


nomesDominios = set()
for class_item in master_dict['classes']:
    for attr_item in class_item['atributos']:
        if 'mapa_valor' in attr_item:
            nomesDominios.add(attr_item['mapa_valor'])
        if 'valores' in attr_item:
            attr_item['valores'].sort(key=lambda x:x['code'])
            valoresSet = set(i['code'] for i in attr_item['valores'])
            if domainDict[attr_item['mapa_valor']] == valoresSet:
                attr_item.pop('valores')
            else:
                #iterar para verificar valores no filtro que não estão no domínio
                removeList = [idx for idx, v in enumerate(attr_item['valores']) if v['code'] not in domainDict[attr_item['mapa_valor']]]
                removeList.sort(reverse=True)
                for idx in removeList:
                    attr_item['valores'].pop(idx)

### fix dominios não utilizados
domainsToRemove = [idx for idx, domain_item in enumerate(master_dict['dominios']) if domain_item['nome'] not in nomesDominios]
domainsToRemove.sort(reverse=True)
for idx in domainsToRemove:
    master_dict['dominios'].pop(idx)

with open(os.path.join(os.path.dirname(__file__),'masterfile300_dsgtools_v4.json'), 'w', encoding='utf-8') as g:
    g.write(json.dumps(master_dict, indent=4, sort_keys=False, ensure_ascii=False))