# OncoFAIR MedicationAdministration Component - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR MedicationAdministration Component**

## Resource Profile: OncoFAIR MedicationAdministration Component 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-component | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMedicationAdministrationComponent |

 
This object corresponds to a product that belongs to the nomenclature of medicines used in the hospital. 
Cet objet correspond à un produit qui appartient à la nomenclature de médicaments utilisée dans l’hôpital. 

**Usages:**

* Examples for this Profile: [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationComponent](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationComponent.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-medicationadministration-component)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-medicationadministration-component.csv), [Excel](StructureDefinition-oncofair-medicationadministration-component.xlsx), [Schematron](StructureDefinition-oncofair-medicationadministration-component.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-medicationadministration-component",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-component",
  "version" : "0.1.0",
  "name" : "OncoFAIRMedicationAdministrationComponent",
  "title" : "OncoFAIR MedicationAdministration Component",
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
  "description" : "This object corresponds to a product that belongs to the nomenclature of medicines used in the hospital. \r\n\nCet objet correspond à un produit qui appartient à la nomenclature de médicaments utilisée dans l’hôpital.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-medicationadministration-component",
      "name" : "Mapping du profil OncoFAIR MedicationAdministration Component"
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
            "identity" : "mapping-oncofair-medicationadministration-component",
            "map" : "ComposantAdministre"
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
        "id" : "MedicationAdministration.extension:oncofair-ma-component-origin",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "oncofair-ma-component-origin",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-component-origin"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:oncofair-ma-component-administration-status",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "oncofair-ma-component-administration-status",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-component-administration-status"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.partOf",
        "path" : "MedicationAdministration.partOf",
        "short" : "The element of administration part of the administered component",
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
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-element"
            ]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationadministration-component",
            "map" : "ElementAdministration"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.medication",
        "path" : "MedicationAdministration.medication",
        "short" : "The medication linked to the administered component",
        "type" : [
          {
            "code" : "CodeableReference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication"
            ]
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/concept-medication-oncofair-valueset"
        },
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationadministration-component",
            "map" : "Composant"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.medication.concept",
        "path" : "MedicationAdministration.medication.concept",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "component"
            }
          ]
        }
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
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.note:comments",
        "path" : "MedicationAdministration.note",
        "sliceName" : "comments",
        "short" : "Comment relating to the administration of the administered component",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationadministration-component",
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
        "id" : "MedicationAdministration.note:wording",
        "path" : "MedicationAdministration.note",
        "sliceName" : "wording",
        "short" : "Name of administered component",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationadministration-component",
            "map" : "libelleComposant"
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
        "id" : "MedicationAdministration.dosage",
        "path" : "MedicationAdministration.dosage",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.dosage.dose",
        "path" : "MedicationAdministration.dosage.dose",
        "short" : "Quantity of the component administered in the administration element that was intended to be administered to the patient",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationadministration-component",
            "map" : "quantitePrevue"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.dosage.rate[x]",
        "path" : "MedicationAdministration.dosage.rate[x]",
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
        "id" : "MedicationAdministration.dosage.rate[x]:rateQuantity",
        "path" : "MedicationAdministration.dosage.rate[x]",
        "sliceName" : "rateQuantity",
        "short" : "Quantity actually administered to the patient or planned to be administered",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationadministration-component",
            "map" : "quantiteAdministree"
          }
        ]
      }
    ]
  }
}

```
