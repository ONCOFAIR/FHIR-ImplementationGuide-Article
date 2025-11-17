# oncofair-sp-wording - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-wording**

## SearchParameter: oncofair-sp-wording 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-wording | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPWording |

 
Search for wording on the administration/prescribed element 

## OncoFAIRSPWording

Parameter `wording`:`string`

Search for wording on the administration/prescribed element

| | |
| :--- | :--- |
| Resources | [MedicationAdministration](http://hl7.org/fhir/R5/medicationadministration.html),[MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `note.where(id='wording').text` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-wording",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-wording",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPWording",
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
  "description" : "Search for wording on the administration/prescribed element",
  "code" : "wording",
  "base" : ["MedicationAdministration", "MedicationRequest"],
  "type" : "string",
  "expression" : "note.where(id='wording').text",
  "processingMode" : "normal"
}

```
