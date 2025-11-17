# OncoFAIR MedicationRequest Element - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR MedicationRequest Element**

## Resource Profile: OncoFAIR MedicationRequest Element 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-element | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMedicationRequestElement |

 
Corresponds to a prescription line on a prescription. Each item contains one or more components (in the case of a magistral preparation or an infusion). 
Correspond à une ligne de prescription d’une ordonnance. Chacune comporte un ou plusieurs composants (lorsqu’il s’agit d’une préparation magistrale ou d’une perfusion). 

**Usages:**

* Refer to this Profile: [OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md) and [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)
* Examples for this Profile: [MedicationRequest/Element-folfox-diffuseur](MedicationRequest-Element-folfox-diffuseur.md), [MedicationRequest/Element-folfox](MedicationRequest-Element-folfox.md) and [MedicationRequest/Element](MedicationRequest-Element.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-medicationrequest-element)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-medicationrequest-element.csv), [Excel](StructureDefinition-oncofair-medicationrequest-element.xlsx), [Schematron](StructureDefinition-oncofair-medicationrequest-element.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-medicationrequest-element",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-element",
  "version" : "0.1.0",
  "name" : "OncoFAIRMedicationRequestElement",
  "title" : "OncoFAIR MedicationRequest Element",
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
  "description" : "Corresponds to a prescription line on a prescription. Each item contains one or more components (in the case of a magistral\npreparation or an infusion). \r\n\nCorrespond à une ligne de prescription d’une ordonnance. Chacune comporte un ou plusieurs composants (lorsqu’il s’agit d’une préparation magistrale ou d’une perfusion).",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-medicationrequest-element-prescription",
      "name" : "Mapping du profil OncoFAIR MedicationRequest Element"
    },
    {
      "identity" : "mapping-oncofair-medicationrequest-element-posologie",
      "name" : "Mapping du profil OncoFAIR MedicationRequest Element"
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
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "ElementPrescription"
          },
          {
            "identity" : "mapping-oncofair-medicationrequest-element-posologie",
            "map" : "ElementPosologie"
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
        "id" : "MedicationRequest.extension:oncofair-element-form",
        "path" : "MedicationRequest.extension",
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
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.extension:oncofair-mr-element-supply",
        "path" : "MedicationRequest.extension",
        "sliceName" : "oncofair-mr-element-supply",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-supply"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.extension:oncofair-mr-element-rank",
        "path" : "MedicationRequest.extension",
        "sliceName" : "oncofair-mr-element-rank",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-rank"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.extension:oncofair-mr-element-go-nogo",
        "path" : "MedicationRequest.extension",
        "sliceName" : "oncofair-mr-element-go-nogo",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-go-nogo"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.extension:oncofair-pharmacist-advice",
        "path" : "MedicationRequest.extension",
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
        "id" : "MedicationRequest.identifier",
        "path" : "MedicationRequest.identifier",
        "short" : "Unique identifier of the prescription item by the prescriber",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "idElementPrescription"
          }
        ]
      },
      {
        "id" : "MedicationRequest.identifier.value",
        "path" : "MedicationRequest.identifier.value",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.basedOn",
        "path" : "MedicationRequest.basedOn",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.basedOn:prescription",
        "path" : "MedicationRequest.basedOn",
        "sliceName" : "prescription",
        "short" : "The prescription linked to the element of prescription",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-prescription"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "Prescription"
          }
        ]
      },
      {
        "id" : "MedicationRequest.basedOn:element",
        "path" : "MedicationRequest.basedOn",
        "sliceName" : "element",
        "short" : "The element linked to the element of prescription",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-element"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "ElementLie"
          }
        ]
      },
      {
        "id" : "MedicationRequest.basedOn:element.extension",
        "path" : "MedicationRequest.basedOn.extension",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.basedOn:element.extension:oncofair-mr-element-link-type",
        "path" : "MedicationRequest.basedOn.extension",
        "sliceName" : "oncofair-mr-element-link-type",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-link-type"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.basedOn:protocol",
        "path" : "MedicationRequest.basedOn",
        "sliceName" : "protocol",
        "short" : "The protocol linked to the element of prescription",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-careplan"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "ProtocolePrescrit"
          }
        ]
      },
      {
        "id" : "MedicationRequest.groupIdentifier",
        "path" : "MedicationRequest.groupIdentifier",
        "short" : "Identifier common to all components of the same prescription",
        "min" : 1,
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "idGroupe"
          }
        ]
      },
      {
        "id" : "MedicationRequest.groupIdentifier.value",
        "path" : "MedicationRequest.groupIdentifier.value",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.status",
        "path" : "MedicationRequest.status",
        "short" : "Indicates the status of the protocol from the prescriber's point of view",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "CreationArretModificationValidation"
          }
        ]
      },
      {
        "id" : "MedicationRequest.priority",
        "path" : "MedicationRequest.priority",
        "short" : "Attribute indicating the urgency with which the prescription item must be completed",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "urgent"
          }
        ]
      },
      {
        "id" : "MedicationRequest.medication",
        "path" : "MedicationRequest.medication",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/concept-medication-oncofair-valueset"
        }
      },
      {
        "id" : "MedicationRequest.medication.concept",
        "path" : "MedicationRequest.medication.concept",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "element"
            }
          ]
        }
      },
      {
        "id" : "MedicationRequest.requester",
        "path" : "MedicationRequest.requester",
        "short" : "The requester linked to the element of prescription",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "idpPrescripteur"
          }
        ]
      },
      {
        "id" : "MedicationRequest.device",
        "path" : "MedicationRequest.device",
        "short" : "Specifies, where applicable, the medical devices or equipment to be used to administer the product",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "dispostifsAssocies"
          }
        ]
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
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.note:wording",
        "path" : "MedicationRequest.note",
        "sliceName" : "wording",
        "short" : "Prescription element wording",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "libelleElementPrescription"
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
        "id" : "MedicationRequest.note:indication",
        "path" : "MedicationRequest.note",
        "sliceName" : "indication",
        "short" : "Explain the reasons that led the prescriber to prescribe this item",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
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
        "id" : "MedicationRequest.note:comments",
        "path" : "MedicationRequest.note",
        "sliceName" : "comments",
        "short" : "Comments associated with this element, which represents the smallest entity that can be administered to the patient",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
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
        "id" : "MedicationRequest.effectiveDosePeriod",
        "path" : "MedicationRequest.effectiveDosePeriod",
        "short" : "Effective start and end date and time of product prescription",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.effectiveDosePeriod.start",
        "path" : "MedicationRequest.effectiveDosePeriod.start",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "dateHeureDebutPrescription"
          }
        ]
      },
      {
        "id" : "MedicationRequest.effectiveDosePeriod.end",
        "path" : "MedicationRequest.effectiveDosePeriod.end",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "dateHeureFinPrescription"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction",
        "path" : "MedicationRequest.dosageInstruction",
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
        "id" : "MedicationRequest.dosageInstruction:element",
        "path" : "MedicationRequest.dosageInstruction",
        "sliceName" : "element",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "MedicationRequest.dosageInstruction:element.id",
        "path" : "MedicationRequest.dosageInstruction.id",
        "min" : 1,
        "patternId" : "element"
      },
      {
        "id" : "MedicationRequest.dosageInstruction:element.text",
        "path" : "MedicationRequest.dosageInstruction.text",
        "short" : "Description of the prescribed dosage, in text form.",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "posologie"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:element.additionalInstruction",
        "path" : "MedicationRequest.dosageInstruction.additionalInstruction",
        "short" : "Free text describing the conditions of application of this prescription element",
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "conditionsApplication"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:element.timing.repeat.bounds[x]",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
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
        "id" : "MedicationRequest.dosageInstruction:element.timing.repeat.bounds[x]:boundsPeriod",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
        "sliceName" : "boundsPeriod",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:element.timing.repeat.bounds[x]:boundsPeriod.start",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].start",
        "short" : "Prescribed start date and time of product prescription",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "dateHeureDebutPrescrite"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:element.timing.repeat.bounds[x]:boundsPeriod.end",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].end",
        "short" : "Prescribed end date and time of product prescription",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "dateHeureFinPrescrite"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:element.timing.repeat.offset",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.offset",
        "short" : "Decimal value, positive or negative, of the interval between the reference date/time of the prescribed protocol and that of this prescription item",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "deltaDateHeureReference"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:element.site",
        "path" : "MedicationRequest.dosageInstruction.site",
        "short" : "Specifies, where appropriate, the exact point on the body where the product is to be applied to the patient",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "lieuAdministration"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:element.route",
        "path" : "MedicationRequest.dosageInstruction.route",
        "short" : "Specifies the route of administration of the product",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "voieAdministration"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:element.method",
        "path" : "MedicationRequest.dosageInstruction.method",
        "short" : "Type of prescription element",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/siph-typeeltpla-oncofair-valueset"
        },
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "typeElementPrescription"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:posology",
        "path" : "MedicationRequest.dosageInstruction",
        "sliceName" : "posology",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "MedicationRequest.dosageInstruction:posology.id",
        "path" : "MedicationRequest.dosageInstruction.id",
        "min" : 1,
        "patternId" : "posology"
      },
      {
        "id" : "MedicationRequest.dosageInstruction:posology.timing.repeat.duration",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.duration",
        "short" : "Duration of administration",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-posologie",
            "map" : "duree"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:posology.timing.repeat.frequency",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
        "short" : "Indicates the recurrence of the dosage. By default, every day",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-posologie",
            "map" : "frequence"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:posology.doseAndRate.dose[x]",
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
        }
      },
      {
        "id" : "MedicationRequest.dosageInstruction:posology.doseAndRate.dose[x]:doseQuantity",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "sliceName" : "doseQuantity",
        "short" : "Quantity of the prescription element in the dosage",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-posologie",
            "map" : "quantite"
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction:posology.doseAndRate.rate[x]",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
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
        "id" : "MedicationRequest.dosageInstruction:posology.doseAndRate.rate[x]:rateQuantity",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
        "sliceName" : "rateQuantity",
        "short" : "Rate of administration in the case of injection",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-posologie",
            "map" : "debit"
          }
        ]
      },
      {
        "id" : "MedicationRequest.substitution",
        "path" : "MedicationRequest.substitution",
        "short" : "Characterises a prescription item added by the pharmacist, either as a proposed replacement or as a suggestion",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-element-prescription",
            "map" : "propostionPharmaceutique"
          }
        ]
      }
    ]
  }
}

```
