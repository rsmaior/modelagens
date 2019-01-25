# -*- coding: utf-8 -*-
# import fmeobjects
import sys,os
import os, json

class FeatureFactory(object):
    Onward, Backward = range(2)
    def __init__(self, mappingPath, mappingType = Onward):
        self.mappingPath = mappingPath
        self.mappingType = mappingType
        self.buildFileDict = self.buildFileDict(self.mappingPath)
        self.classMapDict = self.buildClassMapDict(self.buildFileDict)
        self.attrMapDict = self.buildAttrMapDict(self.buildFileDict)
        self.ignoreList = self.buildIgnoreList(self.buildFileDict)
        

    def buildFileDict(self, mappingPath):
        """
        Builds file dict
        """
        file = open(mappingPath, 'r')
        data = file.read()
        mapDict = json.loads(data)
        return mapDict
    
    def buildClassMapDict(self, fileDict):
        """
        Formato do dicionário de entrada:
        {
            "mapeamento_classes" :[
                "__comment": -- comentários a serem ignorados --,
                "tupla_origem" : -- lista de atributos que são usados para mapear, inclusive o fme_feature_type, 
                que é a classe de entrada --,
                "tupla_destino": -- lista de atributos do destino--,
                "atributos_default_ida": -- setagem padrão dos atributos de ida, ou seja, atributos que não existem
                na entrada, mas que são criados para a modelagem de destino --,
                "tipo_tupla": --indica o sentido do mapeamento--
            ],
            "mapeamento_atributos" : -- mapeamento em que todas as classes olham para mapear os atributos comuns--
        }

        Este método recebe o dicionário de entrada e cria um dicionário de classes
        """
        #Construção do mapeamento de classes
        #1. Pegar dicionário da tag "mapeamento_classes"
        #2. Identificar o tipo de mapeamento, se Ida ou Volta
        #3. Se tipo_tupla existir e for diferente do tipo de mapeamento, ignorar
        #4. Para cada atributo, construir um dicionário interno
        classDict = dict()
        for item in fileDict['mapeamento_classes']:
            mapKey = "tupla_origem" if self.mappingType == self.Onward else "tupla_destino"
            attrList = item[mapKey]
            classKey, keyString = self.buildStringDict(attrList)
            if classKey not in classDict.keys():
                classDict[classKey] = dict()
            if self.mappingType == self.Onward and 'atributos_default_ida' in item.keys():
                optionalList = item['atributos_default_ida']
            elif self.mappingType == self.Backward and 'atributos_default_volta' in item.keys():
                optionalList = item['atributos_default_volta']
            else:
                optionalList = None
            outputKey, outputKeyString = self.buildStringDict(item['tupla_destino'], optionalList = optionalList)
            classDict[classKey][keyString] = (outputKey, outputKeyString)
        return classDict
    
    def buildStringDict(self, attrList, optionalList = None):
        """
        attrList example:
        [
                {
                    "nome_atributo":"class_name",
                    "valor":"edgv.cobter_corpo_dagua"
                },
                {
                    "nome_atributo":"tipo",
                    "valor":"3"
                }
            ]
        Outputs a dict-like string {"attributeName1":"value1",...,"attributeNameN":"valueN"}
        keyString is an ordered dict
        """
        tupleDict = dict()
        for attrItem in attrList:
            if attrItem['nome_atributo'] == 'class_name':
                classKey = attrItem['valor']
            else:
                tupleDict[attrItem['nome_atributo']] = attrItem['valor']
        if optionalList:
            for optionalItem in optionalList:
                tupleDict[optionalItem['nome_atributo']] = optionalItem['valor']
        keys = tupleDict.keys()
        keys.sort()
        keyString = '{'+','.join([u'"{0}":"{1}"'.format(i,tupleDict[i]) for i in keys])+'}'
        return classKey, keyString
    
    def buildAttrMapDict(self, fileDict):
        """
        Este método recebe o dicionário de entrada e cria um dicionário de atributos
        """
        inputList = fileDict["mapeamento_atributos"]
        outputDict = dict()
        for item in inputList:
            mapItem = {} if 'mapeamento' not in item.keys() else item['mapeamento']
            outputDict[item['attr_origem']] = {'output':item['attr_destino'], 'map':mapItem}
        return outputDict
    
    def buildIgnoreList(self, fileDict):
        if 'atributos_a_ignorar' in fileDict.keys():
            return fileDict['atributos_a_ignorar']
        return []
        

    def convertFeature(self, featureDict):
        """
        feature already has dict form
        1. convert attributes that are not in 
        """
        notConvertedKeys = []
        convertedFeature = dict()
        classKey = featureDict.pop('fme_feature_type')
        for attr, value in featureDict.iteritems():
            if attr in self.attrMapDict.keys():
                outputDict = self.attrMapDict[attr]
                if value in outputDict['map'].keys():
                    #map value because there is a map in json file
                    convertedFeature[outputDict['output']] = outputDict['map'][value]
                else:
                    #do not map, keep original value, like in string values
                    convertedFeature[outputDict['output']] = value
            else:
                notConvertedKeys.append(attr)
        #remove guys from ignoreList
        removeIdList = [i for i in range(len(notConvertedKeys)) if notConvertedKeys[i] in self.ignoreList]
        removeIdList.sort(reverse = True)
        for idx in removeIdList:
            notConvertedKeys.pop(idx)
        notConvertedKeys.sort()
        if classKey in self.classMapDict.keys():
            keyString = u'{'+','.join([u'"{0}":"{1}"'.format(i,featureDict[i]) for i in notConvertedKeys])+u'}'
            outputKey, outputKeyString = self.classMapDict[classKey][keyString]
            outputKeyDict = json.loads(outputKeyString)
            for key, value in outputKeyDict.iteritems():
                convertedFeature[key] = value
            convertedFeature['fme_feature_type'] = outputKey
        return convertedFeature

# Template Class Interface:
class FeatureProcessor(object):
    def __init__(self):
        self.featureFactory = FeatureFactory(FME_MacroValues['JsonMapeamento'])
        self.errorFeats = []
        pass
    
    def buildFeatureDict(self, feature):
        featDict = dict()
        featDict['fme_feature_type'] = feature.getAttribute('fme_feature_type')
        for attr in feature.getAllAttributeNames():
            if attr == 'fme_feature_type' or ('fme_' not in attr and 'postgis_' not in attr):
                featDict[attr] = feature.getAttribute(attr)
        return featDict
    
    def mapDictToFeature(self, feat, featDict):
        for attr, value in featDict.iteritems():
            feat.setAttribute(attr, u'{0}'.format(value))
        return feat
        
    def input(self, feature):
        feat = self.buildFeatureDict(feature)
        outputFeatDict = self.featureFactory.convertFeature(feat)
        outputFeature = self.mapDictToFeature(feature, outputFeatDict)
        self.pyoutput(outputFeature)

    def close(self):
        pass
 
 # Template Class Interface:
class TestFeatureProcessor(object):
    def __init__(self, jsonMapeamento):
        self.featureFactory = FeatureFactory(jsonMapeamento)
        self.errorFeats = []
        pass
    
    def buildFeatureDict(self, feature):
        featDict = dict()
        featDict['fme_feature_type'] = feature.getAttribute('fme_feature_type')
        for attr in feature.getAllAttributeNames():
            if attr == 'fme_feature_type' or ('fme_' not in attr and 'postgis_' not in attr):
                featDict[attr] = feature.getAttribute(attr)
        return featDict
    
    def mapDictToFeature(self, feat, featDict):
        for attr, value in featDict.iteritems():
            feat.setAttribute(attr, u'{0}'.format(value))
        return feat
        
    def input(self, feature):
        # feat = self.buildFeatureDict(feature)
        outputFeatDict = self.featureFactory.convertFeature(feature)
        # outputFeature = self.mapDictToFeature(feature, outputFeatDict)
        # self.pyoutput(outputFeature)
        return outputFeatDict

    def close(self):
        pass
    
    def pyoutput(self, feat):
        return feat