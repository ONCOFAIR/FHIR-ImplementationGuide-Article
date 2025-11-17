# oncofair-sp-indication - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-indication**

## SearchParameter: oncofair-sp-indication 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-indication | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPIndication |

 
Search for indications concerning the prescription item and the component prescribed or prescribed protocol 

## OncoFAIRSPIndication

Parameter `indication`:`string`

Search for indications concerning the prescription item and the component prescribed or prescribed protocol

| | |
| :--- | :--- |
| Resources | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html),[CarePlan](http://hl7.org/fhir/R5/careplan.html) |
| Expression | `note.where(id='indication').text` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-indication",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-indication",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPIndication",
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
  "description" : "Search for indications concerning the prescription item and the component prescribed or prescribed protocol",
  "code" : "indication",
  "base" : ["MedicationRequest", "CarePlan"],
  "type" : "string",
  "expression" : "note.where(id='indication').text",
  "processingMode" : "normal"
}

```
