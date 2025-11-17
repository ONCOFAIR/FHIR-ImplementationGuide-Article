# Example OncoFAIR MedicationAdministration Element - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR MedicationAdministration Element**

## Example MedicationAdministration: Example OncoFAIR MedicationAdministration Element

Profile: [OncoFAIR MedicationAdministration Element](StructureDefinition-oncofair-medicationadministration-element.md)

**OncoFAIRMAElementUrgent**: true

**OncoFAIRMAElementExpirationDate**: 2024-12-31 23:59:59+0000

> **OncoFAIRMAElementTraceability**
* batchNumber: BATCH12345
* serialNumber: SN67890

**OncoFAIRMAElementPlannedPeriod**: 2024-06-01 07:00:00+0000 --> 2024-06-01 08:00:00+0000

**OncoFAIRElementForm**: Tablet

**identifier**: ADM-123456

**partOf**: [MedicationAdministration: identifier = REP-123456; status = in-progress; occurence[x] = 2024-06-01 08:00:00+0000](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationReport.md)

**status**: In Progress

### Medications

| | | |
| :--- | :--- | :--- |
| - | **Concept** | **Reference** |
| * | element | [Medication Ibuprofen](Medication-ExampleOncoFAIRMedication.md) |

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**occurence**: 2024-06-01 08:00:00+0000 --> 2024-06-01 09:00:00+0000

**request**: Identifier: RX-123456

### Devices

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Device: identifier = D04](Device-ExampleOncoFAIRDevice.md) |

**note**: , 

> 

Paracetamol 500mg Tablet


> 

Administered after meals


### Dosages

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **Site** | **Route** | **Method** |
| * | XXX | Throat | Oral route | Médicament |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "ExampleOncoFAIRMedicationAdministrationElement",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-element"
    ]
  },
  "extension" : [
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-urgent",
      "valueBoolean" : true
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-expirationdate",
      "valueDateTime" : "2024-12-31T23:59:59Z"
    },
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
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-plannedperiod",
      "valuePeriod" : {
        "start" : "2024-06-01T07:00:00Z",
        "end" : "2024-06-01T08:00:00Z"
      }
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-element-form",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "385055001",
            "display" : "Tablet"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "value" : "ADM-123456"
    }
  ],
  "partOf" : [
    {
      "reference" : "MedicationAdministration/ExampleOncoFAIRMedicationAdministrationReport"
    }
  ],
  "status" : "in-progress",
  "medication" : {
    "concept" : {
      "coding" : [
        {
          "system" : "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem",
          "code" : "element",
          "display" : "element"
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
  "occurencePeriod" : {
    "start" : "2024-06-01T08:00:00Z",
    "end" : "2024-06-01T09:00:00Z"
  },
  "request" : {
    "identifier" : {
      "value" : "RX-123456"
    }
  },
  "device" : [
    {
      "reference" : {
        "reference" : "Device/ExampleOncoFAIRDevice"
      }
    }
  ],
  "note" : [
    {
      "id" : "wording",
      "text" : "Paracetamol 500mg Tablet"
    },
    {
      "id" : "comments",
      "text" : "Administered after meals"
    }
  ],
  "dosage" : {
    "text" : "XXX",
    "site" : {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "49928004",
          "display" : "Throat"
        }
      ]
    },
    "route" : {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "26643006",
          "display" : "Oral route"
        }
      ]
    },
    "method" : {
      "coding" : [
        {
          "system" : "http://ltsi.univ-rennes.fr/CodeSystem/siph-typeeltpla-oncofair-codesystem",
          "code" : "MED",
          "display" : "Médicament"
        }
      ]
    }
  }
}

```
