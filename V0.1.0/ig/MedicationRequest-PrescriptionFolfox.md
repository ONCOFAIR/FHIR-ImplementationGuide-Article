# Folfox Vehicle OncoFAIR MedicationRequest Prescription - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Folfox Vehicle OncoFAIR MedicationRequest Prescription**

## Example MedicationRequest: Folfox Vehicle OncoFAIR MedicationRequest Prescription

Profile: [OncoFAIR MedicationRequest Prescription](StructureDefinition-oncofair-medicationrequest-prescription.md)

**OncoFAIRMRPrescriptionValidationDate**: 2024-06-01 08:00:00+0000

**identifier**: prescription-folfox-hospitals

**basedOn**: [CarePlan Folfox](CarePlan-OncoFAIRCarePlan-folfox.md)

**groupIdentifier**: folfox-example

**status**: Active

**intent**: Order

### Medications

| | |
| :--- | :--- |
| - | **Concept** |
| * | prescription |

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**encounter**: [Encounter: identifier = EN-987654; status = in-progress](Encounter-ExampleOncoFAIREncounter.md)

**supportingInformation**: 

* [HealthcareService: identifier = A065](HealthcareService-ExampleHealthcareServiceAccomodation.md)
* [HealthcareService: identifier = MD067](HealthcareService-ExampleHealthcareServiceMedicalLiability.md)

### Reasons

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Observation Poids](Observation-ExampleOncoFAIRObservation.md) |

**note**: 

> 

This is a default comment on the prescription by the prescribing doctor.




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "PrescriptionFolfox",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-prescription"
    ]
  },
  "extension" : [
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-prescription-validation-date",
      "valueDateTime" : "2024-06-01T08:00:00Z"
    }
  ],
  "identifier" : [
    {
      "value" : "prescription-folfox-hospitals"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/OncoFAIRCarePlan-folfox"
    }
  ],
  "groupIdentifier" : {
    "value" : "folfox-example"
  },
  "status" : "active",
  "intent" : "order",
  "medication" : {
    "concept" : {
      "coding" : [
        {
          "system" : "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem",
          "code" : "prescription",
          "display" : "prescription"
        }
      ]
    }
  },
  "subject" : {
    "reference" : "Patient/ExampleOncoFAIRPatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleOncoFAIREncounter"
  },
  "supportingInformation" : [
    {
      "id" : "accomodationUnit",
      "reference" : "HealthcareService/ExampleHealthcareServiceAccomodation"
    },
    {
      "id" : "medicalLiabiltyUnit",
      "reference" : "HealthcareService/ExampleHealthcareServiceMedicalLiability"
    }
  ],
  "reason" : [
    {
      "reference" : {
        "reference" : "Observation/ExampleOncoFAIRObservation"
      }
    }
  ],
  "note" : [
    {
      "text" : "This is a default comment on the prescription by the prescribing doctor."
    }
  ]
}

```
