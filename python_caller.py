import fme
import fmeobjects
import copy
import sys
import os
import json

class FeatureProcessor(object):
    def __init__(self):
        self.mappingDict = self.buildFileDict(FME_MacroValues['JsonMapeamento'])
        self.mappingType = FME_MacroValues['direcao']

    def buildFileDict(self, mappingPath):
        file = open(mappingPath, 'r')
        data = file.read()
        mapDict = json.loads(data)
        return mapDict

    def buildFeatureDict(self, feature):
        featDict = dict()
        for attr in feature.getAllAttributeNames():
            if attr == 'fme_feature_type' or ('multi_writer' not in attr and 'multi_reader_' not in attr and 'fme_' not in attr and 'postgis_' not in attr):
                if feature.getAttribute(attr) or feature.getAttribute(attr) == 0:
                    featDict[attr] = feature.getAttribute(attr)
                else:
                    featDict[attr] = None
        return featDict

    def evaluateExpression(self, featDict, expression):
        return expression["nome_atributo"] in featDict and featDict[expression["nome_atributo"]] == expression["valor"]

    def evaluateFilter(self, featDict, filter_condition):
        if "$and" in filter_condition:
            return all([self.evaluateFilter(featDict, condition) for condition in filter_condition["$and"]])
        elif "$or" in filter_condition:
            return any([self.evaluateFilter(featDict, condition) for condition in filter_condition["$or"]])
        elif "$not" in filter_condition:
            return not self.evaluateFilter(featDict, filter_condition["$not"])
        else:
            return self.evaluateExpression(featDict, filter_condition)

    def convertFeature(self, featDict):
        mappedFeat = copy.deepcopy(featDict)
        if self.mappingType == "ida":
            key_attr_origin = "attr_ida"
            key_attr_destiny = "attr_volta"
            key_value_origin = "valor_ida"
            key_value_destiny = "valor_volta"
            default_key = "atributos_default_ida"
            filter_key = "filtro_ida"
            key_class_origin = "classe_ida"
            key_class_destiny = "classe_volta"
            key_group_origin = "tupla_ida"
            key_group_destiny = "tupla_volta"
        else:
            key_attr_origin = "attr_volta"
            key_attr_destiny = "attr_ida"
            key_value_origin = "valor_volta"
            key_value_destiny = "valor_ida"
            default_key = "atributos_default_volta"
            filter_key = "filtro_volta"
            key_class_origin = "classe_volta"
            key_class_destiny = "classe_ida"
            key_group_origin = "tupla_volta"
            key_group_destiny = "tupla_ida"

        for attmap in self.mappingDict['mapeamento_atributos']:
            if attmap[key_attr_origin] in featDict:
                mappedFeat[attmap[key_attr_destiny]] = featDict[attmap[key_attr_origin]]
                if "traducao" in attmap:
                    for valuemap in attmap["traducao"]:
                        if valuemap[key_value_origin] == featDict[attmap[key_attr_origin]] and ("sentido" not in valuemap or ("sentido" in valuemap and valuemap["sentido"] == self.mappingType)):
                            mappedFeat[attmap[key_attr_destiny]] = valuemap[key_value_destiny]

        for classmap in self.mappingDict['mapeamento_classes']:
            if "sentido" not in classmap or ("sentido" in classmap and classmap["sentido"] == self.mappingType):
                if classmap[key_class_origin] == featDict["fme_feature_type"]:
                    if filter_key in classmap:
                        if not self.evaluateFilter(featDict, classmap[filter_key]):
                            continue
                    
                    mappedFeat["fme_feature_type"] = classmap[key_class_destiny]

                    if default_key in classmap:
                        for default in classmap[default_key]:
                            mappedFeat[default["nome_atributo"]] = default["valor"]
                
                    if "traducao_atributos" in classmap:
                        for attmap in classmap['traducao_atributos']:
                            if attmap[key_attr_origin] in featDict:
                                mappedFeat[attmap[key_attr_destiny]] = featDict[attmap[key_attr_origin]]
                                if "traducao" in attmap:
                                    for valuemap in attmap["traducao"]:
                                        if valuemap[key_value_origin] == featDict[attmap[key_attr_origin]] and ("sentido" not in valuemap or ("sentido" in valuemap and valuemap["sentido"] == self.mappingType)):
                                            mappedFeat[attmap[key_attr_destiny]] = valuemap[key_value_destiny]
                    
                    if "mapeamento_atributos" in classmap:
                        for attmap in classmap['mapeamento_atributos']:
                            if "sentido" not in attmap or ("sentido" in attmap and attmap["sentido"] == self.mappingType):
                                if all([self.evaluateExpression(featDict, condition) for condition in attmap[key_group_origin]]):
                                    for valuemap in attmap[key_group_destiny]:
                                        mappedFeat[valuemap["nome_atributo"]] = valuemap["valor"]
                    break
                                    
        return mappedFeat

    def mapDictToFeature(self, feat, featDict):
        for attr, value in featDict.iteritems():
            if value or value == 0:
                feat.setAttribute(attr, u'{0}'.format(value))
            else:
                feat.setAttribute(attr, None)
        return feat

    def input(self,feature):
        feat = self.buildFeatureDict(feature)
        outputFeatDict = self.convertFeature(feat)
        outputFeature = self.mapDictToFeature(feature, outputFeatDict)
        self.pyoutput(outputFeature)

    def close(self):
        pass