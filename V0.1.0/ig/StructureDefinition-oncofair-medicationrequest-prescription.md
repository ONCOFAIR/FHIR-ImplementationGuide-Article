# OncoFAIR MedicationRequest Prescription - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR MedicationRequest Prescription**

## Resource Profile: OncoFAIR MedicationRequest Prescription 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-prescription | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMedicationRequestPrescription |

 
Groups together all the prescription elements validated simultaneously by the same prescriber. 
Regroupe l’ensemble des éléments de prescription validés simultanément par un même prescripteur. 

**Usages:**

* Refer to this Profile: [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)
* Examples for this Profile: [MedicationRequest/Prescription](MedicationRequest-Prescription.md), [MedicationRequest/PrescriptionFolfox-difuseur](MedicationRequest-PrescriptionFolfox-difuseur.md) and [MedicationRequest/PrescriptionFolfox](MedicationRequest-PrescriptionFolfox.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-medicationrequest-prescription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-medicationrequest-prescription.csv), [Excel](StructureDefinition-oncofair-medicationrequest-prescription.xlsx), [Schematron](StructureDefinition-oncofair-medicationrequest-prescription.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-medicationrequest-prescription",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-prescription",
  "version" : "0.1.0",
  "name" : "OncoFAIRMedicationRequestPrescription",
  "title" : "OncoFAIR MedicationRequest Prescription",
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
  "description" : "Groups together all the prescription elements validated simultaneously by the same prescriber. \r\n\nRegroupe l’ensemble des éléments de prescription validés simultanément par un même prescripteur.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-medicationrequest-prescription",
      "name" : "Mapping du profil OncoFAIR MedicationRequest Prescription"
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
            "identity" : "mapping-oncofair-medicationrequest-prescription",
            "map" : "Prescription"
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
        },
        "min" : 1
      },
      {
        "id" : "MedicationRequest.extension:oncofair-mr-prescription-validation-date",
        "path" : "MedicationRequest.extension",
        "sliceName" : "oncofair-mr-prescription-validation-date",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-prescription-validation-date"
            ]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-prescription",
            "map" : "dateHeurePrescription"
          }
        ]
      },
      {
        "id" : "MedicationRequest.identifier",
        "path" : "MedicationRequest.identifier",
        "short" : "Unique prescription identifier",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-prescription",
            "map" : "idPrescription"
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
        "short" : "The protocol linked to the prescription",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-careplan"
            ]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-prescription",
            "map" : "ProtocolePrescrit"
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
              "code" : "prescription"
            }
          ]
        }
      },
      {
        "id" : "MedicationRequest.encounter",
        "path" : "MedicationRequest.encounter",
        "short" : "The encounter linked to the prescription",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-encounter"
            ]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-prescription",
            "map" : "Sejour"
          }
        ]
      },
      {
        "id" : "MedicationRequest.supportingInformation",
        "path" : "MedicationRequest.supportingInformation",
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
        "id" : "MedicationRequest.supportingInformation:accomodationUnit",
        "path" : "MedicationRequest.supportingInformation",
        "sliceName" : "accomodationUnit",
        "short" : "This is the unit that houses the patient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/HealthcareService"]
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-prescription",
            "map" : "uniteHebergement"
          }
        ]
      },
      {
        "id" : "MedicationRequest.supportingInformation:accomodationUnit.id",
        "path" : "MedicationRequest.supportingInformation.id",
        "min" : 1,
        "patternId" : "accomodationUnit"
      },
      {
        "id" : "MedicationRequest.supportingInformation:medicalLiabiltyUnit",
        "path" : "MedicationRequest.supportingInformation",
        "sliceName" : "medicalLiabiltyUnit",
        "short" : "This is the unit which assumes medical responsibility for the patient's care",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/HealthcareService"]
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-prescription",
            "map" : "uniteResponsabiliteMedicale"
          }
        ]
      },
      {
        "id" : "MedicationRequest.supportingInformation:medicalLiabiltyUnit.id",
        "path" : "MedicationRequest.supportingInformation.id",
        "min" : 1,
        "patternId" : "medicalLiabiltyUnit"
      },
      {
        "id" : "MedicationRequest.reason",
        "path" : "MedicationRequest.reason",
        "short" : "The observation linked to the prescription",
        "type" : [
          {
            "code" : "CodeableReference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-observation"
            ]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-prescription",
            "map" : "RenseignementComplementaire"
          }
        ]
      },
      {
        "id" : "MedicationRequest.note",
        "path" : "MedicationRequest.note",
        "short" : "Default comment on the prescription by the prescribing doctor",
        "max" : "1",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationrequest-prescription",
            "map" : "commentaires"
          }
        ]
      }
    ]
  }
}

```
