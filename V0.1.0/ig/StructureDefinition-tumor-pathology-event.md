# Tumor Pathology Event - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Pathology Event**

## Resource Profile: Tumor Pathology Event 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/tumor-pathology-event | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:TumorPathologyEvent |

 
Tumor Pathology Event (TPE) Condition describing a tumoral event: reference to the parent TPE, laterality, morphology. 

**Usages:**

* Refer to this Profile: [Tumor Pathology Event Parent](StructureDefinition-dueTo-tumor-pathology-event.md)
* Examples for this Profile: [Condition/fhir-osiris-example-TumorPathologyEvent-instance-1](Condition-fhir-osiris-example-TumorPathologyEvent-instance-1.md) and [Condition/fhir-osiris-example-TumorPathologyEvent-instance-2](Condition-fhir-osiris-example-TumorPathologyEvent-instance-2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/tumor-pathology-event)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tumor-pathology-event.csv), [Excel](StructureDefinition-tumor-pathology-event.xlsx), [Schematron](StructureDefinition-tumor-pathology-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tumor-pathology-event",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/tumor-pathology-event",
  "version" : "0.1.0",
  "name" : "TumorPathologyEvent",
  "title" : "Tumor Pathology Event",
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
  "description" : "Tumor Pathology Event (TPE) Condition describing a tumoral event: reference to the parent TPE, laterality, morphology.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition"
      },
      {
        "id" : "Condition.extension",
        "path" : "Condition.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Condition.extension:due-to",
        "path" : "Condition.extension",
        "sliceName" : "due-to",
        "short" : "The parent tumoral event",
        "definition" : "The parent tumoral event",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/dueTo-tumor-pathology-event"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.extension:laterality",
        "path" : "Condition.extension",
        "sliceName" : "laterality",
        "short" : "Laterality of location",
        "definition" : "Laterality of location",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/laterality"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.extension:histologygrade",
        "path" : "Condition.extension",
        "sliceName" : "histologygrade",
        "short" : "Histology of the tumor",
        "definition" : "Histology of the tumor",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/histologygrade"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "short" : "Type of tumor event",
        "definition" : "Allows to establish the initial diagnosis of cancer (neoplasm) and to follow the evolution of the disease (primary cancer, locoregional or metastatic recurrence).",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/TumorPathologyEventType"
        }
      },
      {
        "id" : "Condition.bodySite",
        "path" : "Condition.bodySite",
        "short" : "Topographic code",
        "definition" : "Allows you to describe the point of origin of the cancer.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/Topography"
        }
      },
      {
        "id" : "Condition.subject",
        "path" : "Condition.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.onset[x]",
        "path" : "Condition.onset[x]",
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
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Condition.onset[x]:onsetDateTime",
        "path" : "Condition.onset[x]",
        "sliceName" : "onsetDateTime",
        "short" : "Start date",
        "definition" : "Date of cancer onset or subsequent tumor event.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.abatement[x]",
        "path" : "Condition.abatement[x]",
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
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Condition.abatement[x]:abatementDateTime",
        "path" : "Condition.abatement[x]",
        "sliceName" : "abatementDateTime",
        "short" : "End date",
        "definition" : "Date of end of cancer or subsequent tumor event.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.recordedDate",
        "path" : "Condition.recordedDate",
        "short" : "Date of diagnosis",
        "definition" : "Date of diagnosis of the tumor event.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Condition.stage",
        "path" : "Condition.stage",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type.coding.code"
            }
          ],
          "description" : "Slice based on stage pattern",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Condition.stage:morphology",
        "path" : "Condition.stage",
        "sliceName" : "morphology",
        "short" : "International code of lesion / histological type / morphology of the tumoral event",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Condition.stage:morphology.summary",
        "path" : "Condition.stage.summary",
        "short" : "Histological/ morphological code",
        "definition" : "Used to describe the cell type and biological activity of the tumor.",
        "min" : 1,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/Morphology"
        }
      },
      {
        "id" : "Condition.stage:morphology.type.coding.code",
        "path" : "Condition.stage.type.coding.code",
        "min" : 1,
        "patternCode" : "116676008"
      }
    ]
  }
}

```
