# Concepts Medication Code System - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Concepts Medication Code System**

## CodeSystem: Concepts Medication Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/concept-medication-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:ConceptMedicationOncoFAIRCodeSystem |

 
Code system pour différiencier les niveaux de MR/MA 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ConceptMedicationOncoFAIRValueSet](ValueSet-concept-medication-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "concept-medication-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/concept-medication-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "ConceptMedicationOncoFAIRCodeSystem",
  "title" : "Concepts Medication Code System",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-11-17T09:12:37+00:00",
  "publisher" : "KEREVAL and DOMASIA team of the Signal and Image Processing Laboratory (LTSI)",
  "contact" : [
    {
      "name" : "KEREVAL and DOMASIA team of the Signal and Image Processing Laboratory (LTSI)",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/ONCOFAIR"
        }
      ]
    }
  ],
  "description" : "Code system pour différiencier les niveaux de MR/MA",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "element",
      "display" : "element"
    },
    {
      "code" : "report",
      "display" : "report"
    },
    {
      "code" : "component",
      "display" : "component"
    },
    {
      "code" : "prescription",
      "display" : "prescription"
    }
  ]
}

```
