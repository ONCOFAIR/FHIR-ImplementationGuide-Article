# Example OncoFAIR Encounter - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR Encounter**

## Example Encounter: Example OncoFAIR Encounter

Profile: [OncoFAIR Encounter](StructureDefinition-oncofair-encounter.md)

**identifier**: EN-987654

**status**: In Progress

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "ExampleOncoFAIREncounter",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-encounter"
    ]
  },
  "identifier" : [
    {
      "value" : "EN-987654"
    }
  ],
  "status" : "in-progress",
  "subject" : {
    "reference" : "Patient/ExampleOncoFAIRPatient"
  }
}

```
