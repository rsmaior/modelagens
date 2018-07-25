# -*- coding: utf-8 -*-
import json, os
from python_caller import TestFeatureProcessor

inputFilePath = os.path.join(os.path.dirname(__file__), 'origem_postgis.json')
jsonMapeamentoPath = os.path.join(os.path.dirname(__file__), '..', 'SM_EDGV_213_PRO_v5_to_Gothic_213_2018-02-27.json')

with open(inputFilePath) as inputFile:
    origem = json.loads(inputFile.read())

featureProcessor = TestFeatureProcessor(jsonMapeamentoPath)

destino = []
for feat in origem:
    destino.append(featureProcessor.input(feat))
print origem
print destino