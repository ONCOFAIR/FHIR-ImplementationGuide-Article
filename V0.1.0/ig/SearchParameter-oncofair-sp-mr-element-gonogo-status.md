# oncofair-sp-mr-element-gonogo-status - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-element-gonogo-status**

## SearchParameter: oncofair-sp-mr-element-gonogo-status 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-gonogo-status | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRElementGonogoStatus |

 
Search for the element goNogo status 

## OncoFAIRSPMRElementGonogoStatus

Parameter `mr-element-gonogo-status`:`token`

Search for the element goNogo status

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-element-go-nogo').extension.where(url='GoNogoStatus').value` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-element-gonogo-status",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-gonogo-status",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRElementGonogoStatus",
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
  "description" : "Search for the element goNogo status",
  "code" : "mr-element-gonogo-status",
  "base" : ["MedicationRequest"],
  "type" : "token",
  "expression" : "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-element-go-nogo').extension.where(url='GoNogoStatus').value",
  "processingMode" : "normal"
}

```
