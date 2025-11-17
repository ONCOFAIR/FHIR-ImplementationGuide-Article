# Folfox Difuseur OncoFAIR MedicationRequest Element - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Folfox Difuseur OncoFAIR MedicationRequest Element**

## Example MedicationRequest: Folfox Difuseur OncoFAIR MedicationRequest Element

Profile: [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)

**identifier**: prescription-element-folfox-difuseur

**basedOn**: 

* [MedicationRequest: extension = 2024-06-01 08:00:00+0000; identifier = prescription-folfox-difuseur; groupIdentifier = folfox-example; status = active; intent = order; note = This is a default comment on the prescription by the prescribing doctor.](MedicationRequest-PrescriptionFolfox-difuseur.md)
* [CarePlan Folfox](CarePlan-OncoFAIRCarePlan-folfox.md)

**groupIdentifier**: folfox-example

**status**: Active

**intent**: Proposal

### Medications

| | |
| :--- | :--- |
| - | **Concept** |
| * | element |

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**requester**: [Practitioner: identifier = 12345](Practitioner-ExampleOncoFAIRPractitioner.md)

### Devices

| | |
| :--- | :--- |
| - | **Reference** |
| * | [DeviceDefinition: identifier = Difuseur](DeviceDefinition-ExampleOncoFAIRDeviceDefinition-diffuseur.md) |

**note**: , 

> 

5-fluoro-uracile


> 

protocol folfox


**effectiveDosePeriod**: 2024-11-01 08:00:00+0000 --> 2024-11-30 09:00:00+0000

> **dosageInstruction**
> **id**element
**patientInstruction**: Boire beaucoup d'eau**timing**: Once**route**:Intravenous route**method**:Perfusion

> **dosageInstruction**
> **id**posology
**timing**: Count 2 times, Duration 48days , 2 per 30 days

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Dose[x]** | **Rate[x]** |
| * | 1 dose | 1/48 heure |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "Element-folfox-diffuseur",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-element"
    ]
  },
  "identifier" : [
    {
      "value" : "prescription-element-folfox-difuseur"
    }
  ],
  "basedOn" : [
    {
      "extension" : [
        {
          "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-link-type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://ltsi.univ-rennes.fr/CodeSystem/siph-type-liaison-oncofair-codesystem",
                "code" : "COMP",
                "display" : "Complément"
              }
            ]
          }
        }
      ],
      "reference" : "MedicationRequest/PrescriptionFolfox-difuseur"
    },
    {
      "reference" : "CarePlan/OncoFAIRCarePlan-folfox"
    }
  ],
  "groupIdentifier" : {
    "value" : "folfox-example"
  },
  "status" : "active",
  "intent" : "proposal",
  "medication" : {
    "concept" : {
      "coding" : [
        {
          "system" : "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem",
          "code" : "element",
          "display" : "element"
        }
      ]
    }
  },
  "subject" : {
    "reference" : "Patient/ExampleOncoFAIRPatient"
  },
  "requester" : {
    "reference" : "Practitioner/ExampleOncoFAIRPractitioner"
  },
  "device" : [
    {
      "reference" : {
        "reference" : "DeviceDefinition/ExampleOncoFAIRDeviceDefinition-diffuseur"
      }
    }
  ],
  "note" : [
    {
      "id" : "wording",
      "text" : "5-fluoro-uracile"
    },
    {
      "id" : "indication",
      "text" : "protocol folfox"
    }
  ],
  "effectiveDosePeriod" : {
    "start" : "2024-11-01T08:00:00Z",
    "end" : "2024-11-30T09:00:00Z"
  },
  "dosageInstruction" : [
    {
      "id" : "element",
      "patientInstruction" : "Boire beaucoup d'eau",
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2024-11-01T08:00:00Z",
            "end" : "2024-11-30T11:00:00Z"
          }
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "47625008",
            "display" : "Intravenous route"
          }
        ]
      },
      "method" : {
        "coding" : [
          {
            "system" : "http://ltsi.univ-rennes.fr/CodeSystem/siph-typeeltpla-oncofair-codesystem",
            "code" : "PERF",
            "display" : "Perfusion"
          }
        ]
      }
    },
    {
      "id" : "posology",
      "timing" : {
        "repeat" : {
          "count" : 2,
          "duration" : 48,
          "durationUnit" : "h",
          "frequency" : 2,
          "period" : 30,
          "periodUnit" : "d"
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "dose"
          },
          "rateRatio" : {
            "numerator" : {
              "value" : 1
            },
            "denominator" : {
              "value" : 48,
              "unit" : "heure"
            }
          }
        }
      ]
    }
  ]
}

```
