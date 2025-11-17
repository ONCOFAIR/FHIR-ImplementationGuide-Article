# Example OncoFAIR Medication - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR Medication**

## Example Medication: Example OncoFAIR Medication

Profile: [OncoFAIR Medication](StructureDefinition-oncofair-medication.md)

**OncoFAIRMedicationType**: principe actif

**code**: Ibuprofen



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "ExampleOncoFAIRMedication",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication"
    ]
  },
  "extension" : [
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication-type",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://ltsi.univ-rennes.fr/CodeSystem/siph-typecomposant-oncofair-codesystem",
            "code" : "PRAC",
            "display" : "principe actif"
          }
        ]
      }
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "387207008",
        "display" : "Ibuprofen"
      }
    ]
  }
}

```
