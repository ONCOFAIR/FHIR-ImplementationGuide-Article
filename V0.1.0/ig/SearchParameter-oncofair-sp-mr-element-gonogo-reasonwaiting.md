# oncofair-sp-mr-element-gonogo-reasonwaiting - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-element-gonogo-reasonwaiting**

## SearchParameter: oncofair-sp-mr-element-gonogo-reasonwaiting 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-gonogo-reasonwaiting | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRElementGonogoReasonWaiting |

 
Search for the element goNogo reason waiting 

## OncoFAIRSPMRElementGonogoReasonWaiting

Parameter `mr-element-gonogo-reasonwaiting`:`token`

Search for the element goNogo reason waiting

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-element-go-nogo').extension.where(url='GoNogoReasonWaiting').value` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-element-gonogo-reasonwaiting",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-gonogo-reasonwaiting",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRElementGonogoReasonWaiting",
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
  "description" : "Search for the element goNogo reason waiting",
  "code" : "mr-element-gonogo-reasonwaiting",
  "base" : ["MedicationRequest"],
  "type" : "token",
  "expression" : "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-element-go-nogo').extension.where(url='GoNogoReasonWaiting').value",
  "processingMode" : "normal"
}

```
