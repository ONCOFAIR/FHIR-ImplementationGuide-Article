# OncoFAIR Observation - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR Observation**

## Resource Profile: OncoFAIR Observation 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-observation | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRObservation |

 
Allows you to enter information about the patient in addition to that described in the prescription elements. 
Permet d’indiquer les informations relatives au patient qui complètent celles décrites par les éléments de prescription 

**Usages:**

* Refer to this Profile: [OncoFAIR MedicationRequest Prescription](StructureDefinition-oncofair-medicationrequest-prescription.md)
* Examples for this Profile: [Observation/ExampleOncoFAIRObservation](Observation-ExampleOncoFAIRObservation.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-observation.csv), [Excel](StructureDefinition-oncofair-observation.xlsx), [Schematron](StructureDefinition-oncofair-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-observation",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-observation",
  "version" : "0.1.0",
  "name" : "OncoFAIRObservation",
  "title" : "OncoFAIR Observation",
  "status" : "active",
  "date" : "2025-11-17T09:12:37+00:00",
  "publisher" : "KEREVAL and DOMASIA team of the Signal and Image Processing Laboratory (LTSI)",
  "contact" : [
    {
      "name" : "KEREVAL and DOMASIA team of the Signal and Image Processing Laboratory (LTSI)",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/ONCOFAIR"
        }
      ]
    }
  ],
  "description" : "Allows you to enter information about the patient in addition to that described in the prescription elements. \r\n\nPermet d’indiquer les informations relatives au patient qui complètent celles décrites par les éléments de prescription",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-observation",
      "name" : "Mapping du profil OncoFAIR Observation"
    },
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-observation",
            "map" : "RenseignementComplementaire"
          }
        ]
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Nature of additional information representing by LOINC code",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/siph-renscomplement-oncofair-valueset"
        },
        "mapping" : [
          {
            "identity" : "mapping-oncofair-observation",
            "map" : "codeRenseignementComplementaire"
          }
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.effective[x]:effectiveDateTime",
        "path" : "Observation.effective[x]",
        "sliceName" : "effectiveDateTime",
        "short" : "Date and time of registration of the additional information",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-observation",
            "map" : "dateHeureEnregistrementRenseignementComplementaire"
          }
        ]
      },
      {
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "short" : "Date and time associated with the additional information",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-observation",
            "map" : "dateHeureRenseignementComplementaire"
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "Contains the value of the additional information",
        "min" : 1,
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-observation",
            "map" : "valeurRenseignementComplementaire"
          }
        ]
      }
    ]
  }
}

```
