import json
from os.path import join, dirname
from jsonschema import Draft4Validator, validators

THIS_DIR = os.path.dirname(os.path.abspath(__file__))

def extend_with_default(validator_class):
    validate_properties = validator_class.VALIDATORS["properties"]

    def set_defaults(validator, properties, instance, schema):
        for property, subschema in properties.iteritems():
            if "default" in subschema:
                instance.setdefault(property, subschema["default"])

        for error in validate_properties(
            validator, properties, instance, schema,
        ):
            yield error

    return validators.extend(
        validator_class, {"properties" : set_defaults},
    )

DefaultValidatingDraft4Validator = extend_with_default(Draft4Validator)

with open('master_file_schema.json') as schema_file:
    with open('master_file_2.1.3_pro.json') as test_file:
        schema = json.loads(schema_file.read())
        test =  json.loads(test_file.read())
        DefaultValidatingDraft4Validator(schema).validate(test)