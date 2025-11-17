# OncoFAIR CarePlan - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR CarePlan**

## Resource Profile: OncoFAIR CarePlan 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-careplan | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRCarePlan |

 
This object describes the chaining of prescription elements attached to the prescribed protocol. Its structure enables the chaining of nested sub-protocols. 
Cet objet décrit le chaînage des éléments de prescription rattachés au protocole prescrit. Sa structure permet le chaînage de sous-protocoles imbriqués. 

**Usages:**

* Refer to this Profile: [OncoFAIR CarePlan](StructureDefinition-oncofair-careplan.md), [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md) and [OncoFAIR MedicationRequest Prescription](StructureDefinition-oncofair-medicationrequest-prescription.md)
* Examples for this Profile: [CarePlan/ExampleOncoFAIRCarePlan](CarePlan-ExampleOncoFAIRCarePlan.md) and [CarePlan/OncoFAIRCarePlan-folfox](CarePlan-OncoFAIRCarePlan-folfox.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-careplan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-careplan.csv), [Excel](StructureDefinition-oncofair-careplan.xlsx), [Schematron](StructureDefinition-oncofair-careplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-careplan",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-careplan",
  "version" : "0.1.0",
  "name" : "OncoFAIRCarePlan",
  "title" : "OncoFAIR CarePlan",
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
  "description" : "This object describes the chaining of prescription elements attached to the prescribed protocol. Its structure enables the chaining of nested sub-protocols. \r\n\nCet objet décrit le chaînage des éléments de prescription rattachés au protocole prescrit. Sa structure permet le chaînage de sous-protocoles imbriqués.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlan",
        "path" : "CarePlan"
      },
      {
        "id" : "CarePlan.extension",
        "path" : "CarePlan.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "CarePlan.extension:oncofair-cp-treatment",
        "path" : "CarePlan.extension",
        "sliceName" : "oncofair-cp-treatment",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-cp-treatment"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.extension:oncofair-pharmacist-advice",
        "path" : "CarePlan.extension",
        "sliceName" : "oncofair-pharmacist-advice",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-pharmacist-advice"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.identifier",
        "path" : "CarePlan.identifier",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.identifier.value",
        "path" : "CarePlan.identifier.value",
        "short" : "Prescribed protocol identifier"
      },
      {
        "id" : "CarePlan.partOf",
        "path" : "CarePlan.partOf",
        "short" : "Describes the reference protocol from which the prescribed protocol is derived",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-careplan"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.status",
        "path" : "CarePlan.status",
        "short" : "Indicates the status of the protocol from the prescriber's point of view",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.title",
        "path" : "CarePlan.title",
        "short" : "Wording of the prescribed protocol",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.note",
        "path" : "CarePlan.note",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "id"
            }
          ],
          "rules" : "open"
        },
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.note:indication",
        "path" : "CarePlan.note",
        "sliceName" : "indication",
        "short" : "Explains the reasons that led the prescriber to prescribe this protocol (or this sub-protocol if Id. parent protocol is defined)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "CarePlan.note:indication.id",
        "path" : "CarePlan.note.id",
        "min" : 1,
        "patternId" : "indication"
      },
      {
        "id" : "CarePlan.note:comments",
        "path" : "CarePlan.note",
        "sliceName" : "comments",
        "short" : "Comments associated with the prescribed protocol",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "CarePlan.note:comments.id",
        "path" : "CarePlan.note.id",
        "min" : 1,
        "patternId" : "comments"
      },
      {
        "id" : "CarePlan.note:idFatherProtocol",
        "path" : "CarePlan.note",
        "sliceName" : "idFatherProtocol",
        "short" : "Identifier of the prescribed protocol to which this prescribed protocol belongs",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "CarePlan.note:idFatherProtocol.id",
        "path" : "CarePlan.note.id",
        "min" : 1,
        "patternId" : "idFatherProtocol"
      }
    ]
  }
}

```
