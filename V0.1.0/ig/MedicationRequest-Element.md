# Example OncoFAIR MedicationRequest Element - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR MedicationRequest Element**

## Example MedicationRequest: Example OncoFAIR MedicationRequest Element

Profile: [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)

**OncoFAIRElementForm**: Tablet

**OncoFAIRMRElementSupply**: true

**OncoFAIRMRElementRank**: 3

> **OncoFAIRMRElementGoNogo**
* GoNogoStatus: En attente
* GoNogoReasonWaiting: XXX

> **OncoFAIRPharmacistAdvice**
* pharmacistValidation: validée
* pharmacistProposal: Suggestion

**identifier**: 654321

**basedOn**: 

* [MedicationRequest: extension = 2024-06-01 08:00:00+0000; identifier = example; status = active; intent = order](MedicationRequest-Prescription.md)
* [MedicationRequest: extension = Tablet,true,3,,; identifier = 654321; groupIdentifier = 121212; status = active; intent = proposal; priority = urgent; note = Paracetamol 500mg Tablet,Prescribed for headaches,Administered after meals; effectiveDosePeriod = 2024-06-01 08:00:00+0000 --> 2024-06-01 09:00:00+0000](MedicationRequest-Element.md)
* [CarePlan Example Prescribed Protocol](CarePlan-ExampleOncoFAIRCarePlan.md)

**groupIdentifier**: 121212

**status**: Active

**intent**: Proposal

**priority**: Urgent

### Medications

| | | |
| :--- | :--- | :--- |
| - | **Concept** | **Reference** |
| * | element | [Medication Ibuprofen](Medication-ExampleOncoFAIRMedication.md) |

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**requester**: [Practitioner: identifier = 12345](Practitioner-ExampleOncoFAIRPractitioner.md)

### Devices

| | |
| :--- | :--- |
| - | **Reference** |
| * | [DeviceDefinition: identifier = D05](DeviceDefinition-ExampleOncoFAIRDeviceDefinition.md) |

**note**: , , 

> 

Paracetamol 500mg Tablet


> 

Prescribed for headaches


> 

Administered after meals


**effectiveDosePeriod**: 2024-06-01 08:00:00+0000 --> 2024-06-01 09:00:00+0000

> **dosageInstruction**
> **id**element
**text**: Description of the dosage**additionalInstruction**:Half to one hour before food**timing**: 10min , before breakfast, Once**site**:Throat**route**:Oral route**method**:Médicament

> **dosageInstruction**
> **id**posology
**timing**: Duration 1?? , 2

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Dose[x]** | **Rate[x]** |
| * | 250 mg | 50 mg/h |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "Element",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-element"
    ]
  },
  "extension" : [
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
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-supply",
      "valueBoolean" : true
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-rank",
      "valueInteger" : 3
    },
    {
      "extension" : [
        {
          "url" : "GoNogoStatus",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://ltsi.univ-rennes.fr/CodeSystem/siph-gonogo-oncofair-codesystem",
                "code" : "ATT",
                "display" : "En attente"
              }
            ]
          }
        },
        {
          "url" : "GoNogoReasonWaiting",
          "valueCodeableConcept" : {
            "text" : "XXX"
          }
        }
      ],
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-go-nogo"
    },
    {
      "extension" : [
        {
          "url" : "pharmacistValidation",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://ltsi.univ-rennes.fr/CodeSystem/siph-statutvalidpharm-oncofair-codesystem",
                "code" : "VAL",
                "display" : "validée"
              }
            ]
          }
        },
        {
          "url" : "pharmacistProposal",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://ltsi.univ-rennes.fr/CodeSystem/siph-natureproppharm-oncofair-codesystem",
                "code" : "SUG",
                "display" : "Suggestion"
              }
            ]
          }
        }
      ],
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-pharmacist-advice"
    }
  ],
  "identifier" : [
    {
      "value" : "654321"
    }
  ],
  "basedOn" : [
    {
      "reference" : "MedicationRequest/Prescription"
    },
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
      "reference" : "MedicationRequest/Element"
    },
    {
      "reference" : "CarePlan/ExampleOncoFAIRCarePlan"
    }
  ],
  "groupIdentifier" : {
    "value" : "121212"
  },
  "status" : "active",
  "intent" : "proposal",
  "priority" : "urgent",
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
  "requester" : {
    "reference" : "Practitioner/ExampleOncoFAIRPractitioner"
  },
  "device" : [
    {
      "reference" : {
        "reference" : "DeviceDefinition/ExampleOncoFAIRDeviceDefinition"
      }
    }
  ],
  "note" : [
    {
      "id" : "wording",
      "text" : "Paracetamol 500mg Tablet"
    },
    {
      "id" : "indication",
      "text" : "Prescribed for headaches"
    },
    {
      "id" : "comments",
      "text" : "Administered after meals"
    }
  ],
  "effectiveDosePeriod" : {
    "start" : "2024-06-01T08:00:00Z",
    "end" : "2024-06-01T09:00:00Z"
  },
  "dosageInstruction" : [
    {
      "id" : "element",
      "text" : "Description of the dosage",
      "additionalInstruction" : [
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "311501008",
              "display" : "Half to one hour before food"
            }
          ]
        }
      ],
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2024-06-01T08:00:00Z",
            "end" : "2024-06-01T09:00:00Z"
          },
          "when" : ["ACM"],
          "offset" : 10
        }
      },
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
    },
    {
      "id" : "posology",
      "timing" : {
        "repeat" : {
          "duration" : 1,
          "durationUnit" : "s",
          "frequency" : 2
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
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
      ]
    }
  ]
}

```
