# oncofair-sp-element-site - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-element-site**

## SearchParameter: oncofair-sp-element-site 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-site | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPElementSite |

 
Search on the administration site of the element 

## OncoFAIRSPElementSite

Parameter `element-site`:`token`

Search on the administration site of the element

| | |
| :--- | :--- |
| Resources | [MedicationAdministration](http://hl7.org/fhir/R5/medicationadministration.html),[MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationAdministration.dosage.site | MedicationRequest.dosageInstruction.where(id='element').site` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-element-site",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-site",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPElementSite",
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
  "description" : "Search on the administration site of the element",
  "code" : "element-site",
  "base" : ["MedicationAdministration", "MedicationRequest"],
  "type" : "token",
  "expression" : "MedicationAdministration.dosage.site | MedicationRequest.dosageInstruction.where(id='element').site",
  "processingMode" : "normal"
}

```
