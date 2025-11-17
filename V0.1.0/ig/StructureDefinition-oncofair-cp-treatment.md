# OncoFAIRCPTreatment - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRCPTreatment**

## Extension: OncoFAIRCPTreatment 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-cp-treatment | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRCPTreatment |

Extension created as part of OncoFAIR grouping together the treatment number, the day number and the reference date and time of the prescribed protocol.

Extension créée dans le cadre d'OncoFAIR regroupant le numéro de cure, le numéro de jour ainsi que la date et heure de référence du protocole prescrit.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR CarePlan](StructureDefinition-oncofair-careplan.md)
* Examples for this Extension: [CarePlan/ExampleOncoFAIRCarePlan](CarePlan-ExampleOncoFAIRCarePlan.md) and [CarePlan/OncoFAIRCarePlan-folfox](CarePlan-OncoFAIRCarePlan-folfox.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-cp-treatment)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-cp-treatment.csv), [Excel](StructureDefinition-oncofair-cp-treatment.xlsx), [Schematron](StructureDefinition-oncofair-cp-treatment.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-cp-treatment",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-cp-treatment",
  "version" : "0.1.0",
  "name" : "OncoFAIRCPTreatment",
  "title" : "OncoFAIRCPTreatment",
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
  "description" : "Extension created as part of OncoFAIR grouping together the treatment number, the day number and the reference date and time of the prescribed protocol. \r\n \nExtension créée dans le cadre d'OncoFAIR regroupant le numéro de cure, le numéro de jour ainsi que la date et heure de référence du protocole prescrit.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-cp-treatment",
      "name" : "Mapping de l'extension OncoFAIR CP Treatment"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "CarePlan"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "OncoFAIRCPTreatment",
        "definition" : "Extension created as part of OncoFAIR grouping together the treatment number, the day number and the reference date and time of the prescribed protocol. \r\n \nExtension créée dans le cadre d'OncoFAIR regroupant le numéro de cure, le numéro de jour ainsi que la date et heure de référence du protocole prescrit."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:treatmentRank",
        "path" : "Extension.extension",
        "sliceName" : "treatmentRank",
        "short" : "Rank of the treatment in which this prescribed protocol is included within the reference protocol in which this prescription is included",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-cp-treatment",
            "map" : "numeroCure"
          }
        ]
      },
      {
        "id" : "Extension.extension:treatmentRank.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:treatmentRank.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "treatmentRank"
      },
      {
        "id" : "Extension.extension:treatmentRank.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.extension:dayRank",
        "path" : "Extension.extension",
        "sliceName" : "dayRank",
        "short" : "Ranking of the day in which this prescribed protocol falls within the reference protocol in which this prescription falls",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-cp-treatment",
            "map" : "numeroJour"
          }
        ]
      },
      {
        "id" : "Extension.extension:dayRank.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:dayRank.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "dayRank"
      },
      {
        "id" : "Extension.extension:dayRank.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.extension:dateTimeReference",
        "path" : "Extension.extension",
        "sliceName" : "dateTimeReference",
        "short" : "Reference date and time of this prescribed protocol",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-cp-treatment",
            "map" : "dateHeureReference"
          }
        ]
      },
      {
        "id" : "Extension.extension:dateTimeReference.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:dateTimeReference.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "dateTimeReference"
      },
      {
        "id" : "Extension.extension:dateTimeReference.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-cp-treatment"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
