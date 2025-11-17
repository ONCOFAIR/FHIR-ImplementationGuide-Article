# Example OncoFAIR Patient - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR Patient**

## Example Patient: Example OncoFAIR Patient

Profile: [OncoFAIR Patient](StructureDefinition-oncofair-patient.md)

Anonymous Patient (no stated gender), DoB Unknown ( 123456789)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExampleOncoFAIRPatient",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-patient"
    ]
  },
  "identifier" : [
    {
      "value" : "123456789"
    }
  ]
}

```
