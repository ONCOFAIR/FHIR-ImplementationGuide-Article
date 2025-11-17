# OncoFAIR MedicationAdministration Element - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR MedicationAdministration Element**

## Resource Profile: OncoFAIR MedicationAdministration Element 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-element | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMedicationAdministrationElement |

 
Corresponds to the activity induced by a prescription item and its dosage (structured or unstructured), and carried out at a given moment. 
Correspond à l’activité induite par un élément de prescription et sa posologie (structurée ou non), et réalisée à un instant donné. 

**Usages:**

* Refer to this Profile: [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md)
* Examples for this Profile: [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationElement](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationElement.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-medicationadministration-element)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-medicationadministration-element.csv), [Excel](StructureDefinition-oncofair-medicationadministration-element.xlsx), [Schematron](StructureDefinition-oncofair-medicationadministration-element.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-medicationadministration-element",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-element",
  "version" : "0.1.0",
  "name" : "OncoFAIRMedicationAdministrationElement",
  "title" : "OncoFAIR MedicationAdministration Element",
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
  "description" : "Corresponds to the activity induced by a prescription item and its dosage (structured or unstructured), and carried out at a given moment. \r\n\nCorrespond à l’activité induite par un élément de prescription et sa posologie (structurée ou non), et réalisée à un instant donné.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-medicationradministration-element",
      "name" : "Mapping du profil OncoFAIR MedicationAdministration Element"
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
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationAdministration",
        "path" : "MedicationAdministration",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "ElementAdministration"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension",
        "path" : "MedicationAdministration.extension",
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
        "id" : "MedicationAdministration.extension:oncofair-ma-element-urgent",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "oncofair-ma-element-urgent",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-urgent"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.extension:oncofair-ma-element-expirationdate",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "oncofair-ma-element-expirationdate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-expirationdate"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:oncofair-ma-element-traceability",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "oncofair-ma-element-traceability",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-traceability"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:oncofair-ma-plannedperiod",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "oncofair-ma-plannedperiod",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-plannedperiod"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:oncofair-element-form",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "oncofair-element-form",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-element-form"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.identifier",
        "path" : "MedicationAdministration.identifier",
        "short" : "Unique identifier of the administration element in the HIS.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "idElementAdministration"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.partOf",
        "path" : "MedicationAdministration.partOf",
        "short" : "The medication administration report linked to the element of administration",
        "min" : 1,
        "max" : "1",
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
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-report"
            ]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "CompteRenduAdministration"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.category",
        "path" : "MedicationAdministration.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        },
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.category:code",
        "path" : "MedicationAdministration.category",
        "sliceName" : "code",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "codeElementAdministration"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.category:nature",
        "path" : "MedicationAdministration.category",
        "sliceName" : "nature",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "presentation"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.medication",
        "path" : "MedicationAdministration.medication",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/concept-medication-oncofair-valueset"
        }
      },
      {
        "id" : "MedicationAdministration.medication.concept",
        "path" : "MedicationAdministration.medication.concept",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "element"
            }
          ]
        }
      },
      {
        "id" : "MedicationAdministration.occurence[x]",
        "path" : "MedicationAdministration.occurence[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationAdministration.occurence[x]:occurencePeriod",
        "path" : "MedicationAdministration.occurence[x]",
        "sliceName" : "occurencePeriod",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.occurence[x]:occurencePeriod.start",
        "path" : "MedicationAdministration.occurence[x].start",
        "short" : "Effective date and time for startinf administration of the administration element",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "dateHeureDebutEffective"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.occurence[x]:occurencePeriod.end",
        "path" : "MedicationAdministration.occurence[x].end",
        "short" : "Effective date and time for ending administration of the administration element",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "dateHeureFinEffective"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.request",
        "path" : "MedicationAdministration.request",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "ElementPrescription"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.request.identifier",
        "path" : "MedicationAdministration.request.identifier",
        "short" : "Unique identifier of the prescription element to which this administration element responds"
      },
      {
        "id" : "MedicationAdministration.device",
        "path" : "MedicationAdministration.device",
        "short" : "Specifies, where applicable, the medical devices or equipment to be used to administer the product. By default, the associated devices are those listed in the prescription element associated with the administration element",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "dispositifsAssocies"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.note",
        "path" : "MedicationAdministration.note",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "id"
            }
          ],
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.note:wording",
        "path" : "MedicationAdministration.note",
        "sliceName" : "wording",
        "short" : "Wording of the administration element",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "libelleElementAdministration"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.note:wording.id",
        "path" : "MedicationAdministration.note.id",
        "min" : 1,
        "patternId" : "wording"
      },
      {
        "id" : "MedicationAdministration.note:comments",
        "path" : "MedicationAdministration.note",
        "sliceName" : "comments",
        "short" : "Comment attached to the administration element",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "commentaires"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.note:comments.id",
        "path" : "MedicationAdministration.note.id",
        "min" : 1,
        "patternId" : "comments"
      },
      {
        "id" : "MedicationAdministration.dosage",
        "path" : "MedicationAdministration.dosage",
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.dosage.site",
        "path" : "MedicationAdministration.dosage.site",
        "short" : "Specifies, where applicable, the exact point on the body where the product is to be applied to the patient. By default, the place of administration is that shown in the prescription element associated with the administration element",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "lieuAdministration"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.dosage.route",
        "path" : "MedicationAdministration.dosage.route",
        "short" : "Specifies the route of administration of the product. By default, it is the one shown in the prescription element associated with the administration element.",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "voieAdministration"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.dosage.method",
        "path" : "MedicationAdministration.dosage.method",
        "short" : "Type of administration element. Must be used to differentiate between management processes adapted to different types of drug treatment.",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/siph-typeeltpla-oncofair-valueset"
        },
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationradministration-element",
            "map" : "typeElementAdministration"
          }
        ]
      }
    ]
  }
}

```
