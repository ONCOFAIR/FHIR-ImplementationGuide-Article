# OncoFAIR MedicationRequest Component - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR MedicationRequest Component**

## Resource Profile: OncoFAIR MedicationRequest Component 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-component | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMedicationRequestComponent |

 
Is a product that belongs to the nomenclature of medicines used. It may, for example, be a speciality, a product defined by its common name or a pharmacopoeial product. 
Est un produit qui appartient à la nomenclature de médicaments utilisée. Il peut s’agir par exemple d’une spécialité, d’un produit défini par sa DC ou d’un produit de la pharmacopée. 

**Usages:**

* Examples for this Profile: [MedicationRequest/Component](MedicationRequest-Component.md), [MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-oxaliplatine-diffuseur](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-oxaliplatine-diffuseur.md), [MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-oxaliplatine](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-oxaliplatine.md), [MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-uracile-diffuseur](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-uracile-diffuseur.md)...Show 3 more,[MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-uracile](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-uracile.md),[MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-vehicule-diffuseur](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-vehicule-diffuseur.md)and[MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-vehicule](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-vehicule.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-medicationrequest-component)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-medicationrequest-component.csv), [Excel](StructureDefinition-oncofair-medicationrequest-component.xlsx), [Schematron](StructureDefinition-oncofair-medicationrequest-component.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-medicationrequest-component",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-component",
  "version" : "0.1.0",
  "name" : "OncoFAIRMedicationRequestComponent",
  "title" : "OncoFAIR MedicationRequest Component",
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
  "description" : "Is a product that belongs to the nomenclature of medicines used. It may, for example, be a speciality, a product defined by its common name or a pharmacopoeial product. \r\n\nEst un produit qui appartient à la nomenclature de médicaments utilisée. Il peut s’agir par exemple d’une spécialité, d’un produit défini par sa DC ou d’un produit de la pharmacopée.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-medicationrequest-component",
      "name" : "Mapping du profil OncoFAIR MedicationRequest Component"
    },
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-component",
            "map" : "ComposantPrescrit"
          }
        ]
      },
      {
        "id" : "MedicationRequest.extension",
        "path" : "MedicationRequest.extension",
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
        "id" : "MedicationRequest.extension:oncofair-mr-exempt-ltc",
        "path" : "MedicationRequest.extension",
        "sliceName" : "oncofair-mr-exempt-ltc",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-exempt-ltc"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.extension:oncofair-mr-component-solute",
        "path" : "MedicationRequest.extension",
        "sliceName" : "oncofair-mr-component-solute",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-component-solute"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.extension:oncofair-mr-is-dosage-referent",
        "path" : "MedicationRequest.extension",
        "sliceName" : "oncofair-mr-is-dosage-referent",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-is-dosage-referent"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.basedOn",
        "path" : "MedicationRequest.basedOn",
        "short" : "The element linked to the component prescribed",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-element"
            ]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-component",
            "map" : "ElementPrescription"
          }
        ]
      },
      {
        "id" : "MedicationRequest.medication",
        "path" : "MedicationRequest.medication",
        "short" : "The medication linked to the component prescribed",
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
            "identity" : "mapping-oncofair-medicationrequest-component",
            "map" : "Composant"
          }
        ]
      },
      {
        "id" : "MedicationRequest.medication.concept",
        "path" : "MedicationRequest.medication.concept",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "component"
            }
          ]
        }
      },
      {
        "id" : "MedicationRequest.note",
        "path" : "MedicationRequest.note",
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
        "id" : "MedicationRequest.note:wording",
        "path" : "MedicationRequest.note",
        "sliceName" : "wording",
        "short" : "Wording of the prescribed component",
        "min" : 1,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-component",
            "map" : "libelleComposant"
          }
        ]
      },
      {
        "id" : "MedicationRequest.note:wording.id",
        "path" : "MedicationRequest.note.id",
        "min" : 1,
        "patternId" : "wording"
      },
      {
        "id" : "MedicationRequest.note:comments",
        "path" : "MedicationRequest.note",
        "sliceName" : "comments",
        "short" : "Comments associated with the prescribed component",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-component",
            "map" : "commentaires"
          }
        ]
      },
      {
        "id" : "MedicationRequest.note:comments.id",
        "path" : "MedicationRequest.note.id",
        "min" : 1,
        "patternId" : "comments"
      },
      {
        "id" : "MedicationRequest.note:indication",
        "path" : "MedicationRequest.note",
        "sliceName" : "indication",
        "short" : "Specifies the reasons that led the prescriber to prescribe this component in the prescription element",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-component",
            "map" : "indication"
          }
        ]
      },
      {
        "id" : "MedicationRequest.note:indication.id",
        "path" : "MedicationRequest.note.id",
        "min" : 1,
        "patternId" : "indication"
      },
      {
        "id" : "MedicationRequest.dosageInstruction",
        "path" : "MedicationRequest.dosageInstruction",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dosageInstruction.doseAndRate",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate",
        "max" : "1"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
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
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseQuantity",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "sliceName" : "doseQuantity",
        "short" : "Quantity of the component prescribed in the prescription element",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-component",
            "map" : "quantiteComposantPrescrit"
          }
        ]
      },
      {
        "id" : "MedicationRequest.substitution",
        "path" : "MedicationRequest.substitution",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.substitution.allowed[x]",
        "path" : "MedicationRequest.substitution.allowed[x]",
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
        "id" : "MedicationRequest.substitution.allowed[x]:allowedBoolean",
        "path" : "MedicationRequest.substitution.allowed[x]",
        "sliceName" : "allowedBoolean",
        "short" : "True if the component prescribed is declared non-substitutable in the prescription element",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-component",
            "map" : "nonSubstituable"
          }
        ]
      }
    ]
  }
}

```
