# oncofair-sp-cp-title - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-cp-title**

## SearchParameter: oncofair-sp-cp-title 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-cp-title | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPCPTitle |

 
Search for the title of the prescribed protocol 

## OncoFAIRSPCPTitle

Parameter `cp-title`:`string`

Search for the title of the prescribed protocol

| | |
| :--- | :--- |
| Resource | [CarePlan](http://hl7.org/fhir/R5/careplan.html) |
| Expression | `CarePlan.title` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-cp-title",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-cp-title",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPCPTitle",
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
  "description" : "Search for the title of the prescribed protocol",
  "code" : "cp-title",
  "base" : ["CarePlan"],
  "type" : "string",
  "expression" : "CarePlan.title",
  "processingMode" : "normal"
}

```
