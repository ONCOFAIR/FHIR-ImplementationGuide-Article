# Folfox Fluoro-uracile OncoFAIR Medication - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Folfox Fluoro-uracile OncoFAIR Medication**

## Example Medication: Folfox Fluoro-uracile OncoFAIR Medication

Profile: [OncoFAIR Medication](StructureDefinition-oncofair-medication.md)

**OncoFAIRMedicationType**: principe actif

**identifier**: medication-folfox-fluoro

**code**: 5-fluorouracil



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "OncoFAIRMedication-fluoro-uracile",
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
      "value" : "medication-folfox-fluoro"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "387172005",
        "display" : "5-fluorouracil"
      }
    ]
  }
}

```
