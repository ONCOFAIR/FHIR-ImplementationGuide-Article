# fhir-osiris-example-TumorPathologyEvent-instance-2 - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **fhir-osiris-example-TumorPathologyEvent-instance-2**

## Example Condition: fhir-osiris-example-TumorPathologyEvent-instance-2

Profile: [Tumor Pathology Event](StructureDefinition-tumor-pathology-event.md)

**Condition Due To**: [Condition C0677930](Condition-fhir-osiris-example-TumorPathologyEvent-instance-1.md)

**Laterality**: C0439673

**clinicalStatus**: Active

**code**: C0521158

**bodySite**: C11.1

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**onset**: 2010-11-18

**recordedDate**: 2010-11-18

### Stages

| | | |
| :--- | :--- | :--- |
| - | **Summary** | **Type** |
| * | 8000-1 | 116676008 |



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "fhir-osiris-example-TumorPathologyEvent-instance-2",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/tumor-pathology-event"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/condition-dueTo",
      "valueReference" : {
        "reference" : "Condition/fhir-osiris-example-TumorPathologyEvent-instance-1"
      }
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/laterality",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/umls",
            "code" : "C0439673"
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
        "code" : "C0521158"
      }
    ]
  },
  "bodySite" : [
    {
      "coding" : [
        {
          "code" : "C11.1"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/ExampleOncoFAIRPatient"
  },
  "onsetDateTime" : "2010-11-18",
  "recordedDate" : "2010-11-18",
  "stage" : [
    {
      "summary" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
            "code" : "8000-1"
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
