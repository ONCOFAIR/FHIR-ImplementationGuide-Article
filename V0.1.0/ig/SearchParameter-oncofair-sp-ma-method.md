# oncofair-sp-ma-method - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-ma-method**

## SearchParameter: oncofair-sp-ma-method 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-method | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMAMethod |

 
Search for type of administration element 

## OncoFAIRSPMAMethod

Parameter `ma-method`:`token`

Search for type of administration element

| | |
| :--- | :--- |
| Resource | [MedicationAdministration](http://hl7.org/fhir/R5/medicationadministration.html) |
| Expression | `MedicationAdministration.dosage.method` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-ma-method",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-method",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMAMethod",
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
  "description" : "Search for type of administration element",
  "code" : "ma-method",
  "base" : ["MedicationAdministration"],
  "type" : "token",
  "expression" : "MedicationAdministration.dosage.method",
  "processingMode" : "normal"
}

```
