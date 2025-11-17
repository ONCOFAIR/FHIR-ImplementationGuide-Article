# fhir-osiris-example-TumorPathologyEvent-instance-1 - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **fhir-osiris-example-TumorPathologyEvent-instance-1**

## Example Condition: fhir-osiris-example-TumorPathologyEvent-instance-1

Profile: [Tumor Pathology Event](StructureDefinition-tumor-pathology-event.md)

**Laterality**: C0238767

**clinicalStatus**: Active

**code**: C0677930

**bodySite**: C00.8

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**onset**: 2005-11-17

**recordedDate**: 2005-11-17

### Stages

| | | |
| :--- | :--- | :--- |
| - | **Summary** | **Type** |
| * | 8002/3 | 116676008 |



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "fhir-osiris-example-TumorPathologyEvent-instance-1",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/tumor-pathology-event"
    ]
  },
  "extension" : [
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/laterality",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/umls",
            "code" : "C0238767"
          }
        ]
      }
    }
  ],
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active",
        "display" : "Active"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/umls",
        "code" : "C0677930"
      }
    ]
  },
  "bodySite" : [
    {
      "coding" : [
        {
          "code" : "C00.8"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/ExampleOncoFAIRPatient"
  },
  "onsetDateTime" : "2005-11-17",
  "recordedDate" : "2005-11-17",
  "stage" : [
    {
      "summary" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
            "code" : "8002/3"
          }
        ]
      },
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/umls",
            "code" : "116676008"
          }
        ]
      }
    }
  ]
}

```
