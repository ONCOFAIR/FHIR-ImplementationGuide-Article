# Folfox Oxaliplatine OncoFAIR Medication - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Folfox Oxaliplatine OncoFAIR Medication**

## Example Medication: Folfox Oxaliplatine OncoFAIR Medication

Profile: [OncoFAIR Medication](StructureDefinition-oncofair-medication.md)

**OncoFAIRMedicationType**: principe actif

**identifier**: medication-folfox-oxaliplatine

**code**: Oxaliplatin



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "OncoFAIRMedication-oxaliplatine",
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
  "identifier" : [
    {
      "value" : "medication-folfox-oxaliplatine"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "395814003",
        "display" : "Oxaliplatin"
      }
    ]
  }
}

```
