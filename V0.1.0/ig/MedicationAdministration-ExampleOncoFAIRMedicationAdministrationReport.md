# Example OncoFAIR MedicationAdministration Report - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR MedicationAdministration Report**

## Example MedicationAdministration: Example OncoFAIR MedicationAdministration Report

Profile: [OncoFAIR MedicationAdministration Report](StructureDefinition-oncofair-medicationadministration-report.md)

**identifier**: REP-123456

**status**: In Progress

### Medications

| | | |
| :--- | :--- | :--- |
| - | **Concept** | **Reference** |
| * | report | [Medication Ibuprofen](Medication-ExampleOncoFAIRMedication.md) |

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**encounter**: [Encounter: identifier = EN-987654; status = in-progress](Encounter-ExampleOncoFAIREncounter.md)

**occurence**: 2024-06-01 08:00:00+0000

> **performer**

### Actors

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Practitioner: identifier = 12345](Practitioner-ExampleOncoFAIRPractitioner.md) |




## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "ExampleOncoFAIRMedicationAdministrationReport",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-report"
    ]
  },
  "identifier" : [
    {
      "value" : "REP-123456"
    }
  ],
  "status" : "in-progress",
  "medication" : {
    "concept" : {
      "coding" : [
        {
          "system" : "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem",
          "code" : "report",
          "display" : "report"
        }
      ]
    },
    "reference" : {
      "reference" : "Medication/ExampleOncoFAIRMedication"
    }
  },
  "subject" : {
    "reference" : "Patient/ExampleOncoFAIRPatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleOncoFAIREncounter"
  },
  "occurenceDateTime" : "2024-06-01T08:00:00Z",
  "performer" : [
    {
      "actor" : {
        "reference" : {
          "reference" : "Practitioner/ExampleOncoFAIRPractitioner"
        }
      }
    }
  ]
}

```
