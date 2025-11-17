# oncofair-sp-ma-comments - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-ma-comments**

## SearchParameter: oncofair-sp-ma-comments 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-comments | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMAComments |

 
Search for comments on the administration element 

## OncoFAIRSPMAComments

Parameter `ma-comments`:`string`

Search for comments on the administration element

| | |
| :--- | :--- |
| Resource | [MedicationAdministration](http://hl7.org/fhir/R5/medicationadministration.html) |
| Expression | `MedicationAdministration.note.where(id='comments').text` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-ma-comments",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-comments",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMAComments",
  "status" : "active",
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
  "description" : "Search for comments on the administration element",
  "code" : "ma-comments",
  "base" : ["MedicationAdministration"],
  "type" : "string",
  "expression" : "MedicationAdministration.note.where(id='comments').text",
  "processingMode" : "normal"
}

```
