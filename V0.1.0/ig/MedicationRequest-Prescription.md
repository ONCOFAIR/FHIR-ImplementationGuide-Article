# Example OncoFAIR MedicationRequest Prescription - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR MedicationRequest Prescription**

## Example MedicationRequest: Example OncoFAIR MedicationRequest Prescription

Profile: [OncoFAIR MedicationRequest Prescription](StructureDefinition-oncofair-medicationrequest-prescription.md)

**OncoFAIRMRPrescriptionValidationDate**: 2024-06-01 08:00:00+0000

**identifier**: example

**status**: Active

**intent**: Order

### Medications

| | |
| :--- | :--- |
| - | **Concept** |
| * | prescription |

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**encounter**: [Encounter: identifier = EN-987654; status = in-progress](Encounter-ExampleOncoFAIREncounter.md)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "Prescription",
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
      "value" : "example"
    }
  ],
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
  }
}

```
