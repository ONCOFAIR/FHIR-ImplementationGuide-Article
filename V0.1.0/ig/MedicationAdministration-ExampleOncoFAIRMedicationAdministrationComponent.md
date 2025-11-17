# Example OncoFAIR MedicationAdministration Component - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR MedicationAdministration Component**

## Example MedicationAdministration: Example OncoFAIR MedicationAdministration Component

Profile: [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md)

> **OncoFAIRMAElementTraceability**
* batchNumber: BATCH12345
* serialNumber: SN67890

**OncoFAIRMAElementExpirationDate**: 2024-12-31 23:59:59+0000

**OncoFAIRMAComponentOrigin**: XXXX

**OncoFAIRMAComponentAdministrationStatus**: suivi

**partOf**: [MedicationAdministration: extension = true,2024-12-31 23:59:59+0000,,2024-06-01 07:00:00+0000 --> 2024-06-01 08:00:00+0000,Tablet; identifier = ADM-123456; status = in-progress; occurence[x] = 2024-06-01 08:00:00+0000 --> 2024-06-01 09:00:00+0000; note = Paracetamol 500mg Tablet,Administered after meals](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationElement.md)

**status**: In Progress

### Medications

| | | |
| :--- | :--- | :--- |
| - | **Concept** | **Reference** |
| * | component | [Medication Ibuprofen](Medication-ExampleOncoFAIRMedication.md) |

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**occurence**: 2024-06-04 12:00:00+0000

**note**: , 

> 

Patient experienced mild nausea.


> 

Paracetamol 500mg Tablet


### Dosages

| | | |
| :--- | :--- | :--- |
| - | **Dose** | **Rate[x]** |
| * | 250 mg | 50 mg/h |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "ExampleOncoFAIRMedicationAdministrationComponent",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-component"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "batchNumber",
          "valueString" : "BATCH12345"
        },
        {
          "url" : "serialNumber",
          "valueString" : "SN67890"
        }
      ],
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-traceability"
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-expirationdate",
      "valueDateTime" : "2024-12-31T23:59:59Z"
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-component-origin",
      "valueCodeableConcept" : {
        "text" : "XXXX"
      }
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-component-administration-status",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://ltsi.univ-rennes.fr/CodeSystem/siph-statutcomposantadm-oncofair-codesystem",
            "code" : "SU",
            "display" : "suivi"
          }
        ]
      }
    }
  ],
  "partOf" : [
    {
      "reference" : "MedicationAdministration/ExampleOncoFAIRMedicationAdministrationElement"
    }
  ],
  "status" : "in-progress",
  "medication" : {
    "concept" : {
      "coding" : [
        {
          "system" : "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem",
          "code" : "component",
          "display" : "component"
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
  "occurenceDateTime" : "2024-06-04T12:00:00Z",
  "note" : [
    {
      "id" : "comments",
      "text" : "Patient experienced mild nausea."
    },
    {
      "id" : "wording",
      "text" : "Paracetamol 500mg Tablet"
    }
  ],
  "dosage" : {
    "dose" : {
      "value" : 250,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org"
    },
    "rateQuantity" : {
      "value" : 50,
      "unit" : "mg/h",
      "system" : "http://unitsofmeasure.org"
    }
  }
}

```
