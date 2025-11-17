# Folfox OncoFAIR CarePlan - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Folfox OncoFAIR CarePlan**

## Example CarePlan: Folfox OncoFAIR CarePlan 

Profile: [OncoFAIR CarePlan](StructureDefinition-oncofair-careplan.md)

> **OncoFAIRCPTreatment**
* treatmentRank: 1
* dayRank: 1
* dateTimeReference: 2024-11-01 10:00:00+0000

> **OncoFAIRPharmacistAdvice**
* pharmacistValidation: validée

**identifier**: folfox-example

**status**: Active

**intent**: Order

**title**: Folfox

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**note**: , 

> 

Patient diagnosed with condition X requiring protocol Y.


> 

Patient responded well to previous treatments.




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "OncoFAIRCarePlan-folfox",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-careplan"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "treatmentRank",
          "valueInteger" : 1
        },
        {
          "url" : "dayRank",
          "valueInteger" : 1
        },
        {
          "url" : "dateTimeReference",
          "valueDateTime" : "2024-11-01T10:00:00Z"
        }
      ],
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-cp-treatment"
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
        }
      ],
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-pharmacist-advice"
    }
  ],
  "identifier" : [
    {
      "value" : "folfox-example"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "title" : "Folfox",
  "subject" : {
    "reference" : "Patient/ExampleOncoFAIRPatient"
  },
  "note" : [
    {
      "id" : "indication",
      "text" : "Patient diagnosed with condition X requiring protocol Y."
    },
    {
      "id" : "comments",
      "text" : "Patient responded well to previous treatments."
    }
  ]
}

```
