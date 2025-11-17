# Example OncoFAIR Observation - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR Observation**

## Example Observation: Example OncoFAIR Observation

Profile: [OncoFAIR Observation](StructureDefinition-oncofair-observation.md)

**status**: Final

**code**: Poids

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**effective**: 2024-06-06 10:00:00+0000

**issued**: 2024-06-06 10:15:00+0000

**value**: 70 kg



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleOncoFAIRObservation",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-observation"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://ltsi.univ-rennes.fr/CodeSystem/siph-renscomplement-oncofair-codesystem",
        "code" : "POIDS",
        "display" : "Poids"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleOncoFAIRPatient"
  },
  "effectiveDateTime" : "2024-06-06T10:00:00Z",
  "issued" : "2024-06-06T10:15:00Z",
  "valueQuantity" : {
    "value" : 70,
    "unit" : "kg"
  }
}

```
