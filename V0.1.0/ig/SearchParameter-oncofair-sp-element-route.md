# oncofair-sp-element-route - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-element-route**

## SearchParameter: oncofair-sp-element-route 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-route | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPElementRoute |

 
Search for the route of administration element 

## OncoFAIRSPElementRoute

Parameter `element-route`:`token`

Search for the route of administration element

| | |
| :--- | :--- |
| Resources | [MedicationAdministration](http://hl7.org/fhir/R5/medicationadministration.html),[MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationAdministration.dosage.route | MedicationRequest.dosageInstruction.where(id='element').route` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-element-route",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-route",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPElementRoute",
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
  "description" : "Search for the route of administration element",
  "code" : "element-route",
  "base" : ["MedicationAdministration", "MedicationRequest"],
  "type" : "token",
  "expression" : "MedicationAdministration.dosage.route | MedicationRequest.dosageInstruction.where(id='element').route",
  "processingMode" : "normal"
}

```
