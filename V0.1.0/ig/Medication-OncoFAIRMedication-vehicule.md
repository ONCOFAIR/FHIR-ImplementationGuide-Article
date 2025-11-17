# Folfox Vehicle OncoFAIR Medication - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Folfox Vehicle OncoFAIR Medication**

## Example Medication: Folfox Vehicle OncoFAIR Medication

Profile: [OncoFAIR Medication](StructureDefinition-oncofair-medication.md)

**OncoFAIRMedicationType**: principe actif

**identifier**: medication-folfox-vehicle

**code**: Sodium chloride



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "OncoFAIRMedication-vehicule",
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
      "value" : "medication-folfox-vehicle"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "387390002",
        "display" : "Sodium chloride"
      }
    ]
  }
}

```
