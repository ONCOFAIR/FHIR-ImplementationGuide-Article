# Example OncoFAIR CarePlan - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR CarePlan**

## Example CarePlan: Example OncoFAIR CarePlan

Profile: [OncoFAIR CarePlan](StructureDefinition-oncofair-careplan.md)

> **OncoFAIRCPTreatment**
* treatmentRank: 1
* dayRank: 1
* dateTimeReference: 2024-05-29 10:00:00+0000

> **OncoFAIRPharmacistAdvice**
* pharmacistValidation: validée
* pharmacistProposal: Suggestion

**identifier**: CP-123456

**basedOn**: [CarePlan Example Prescribed Protocol](CarePlan-ExampleOncoFAIRCarePlan.md)

**status**: Active

**intent**: Order

**title**: Example Prescribed Protocol

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**note**: , , 

> 

Patient diagnosed with condition X requiring protocol Y.


> 

Patient responded well to previous treatments.


> 

Parent Protocol ID: CP-654321




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "ExampleOncoFAIRCarePlan",
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
          "valueDateTime" : "2024-05-29T10:00:00Z"
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
      "value" : "CP-123456"
    }
  ],
  "basedOn" : [
    {
      "reference" : "CarePlan/ExampleOncoFAIRCarePlan"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "title" : "Example Prescribed Protocol",
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
    },
    {
      "id" : "idFatherProtocol",
      "text" : "Parent Protocol ID: CP-654321"
    }
  ]
}

```
