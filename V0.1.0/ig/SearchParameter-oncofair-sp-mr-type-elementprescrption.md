# oncofair-sp-mr-type-elementprescrption - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-type-elementprescrption**

## SearchParameter: oncofair-sp-mr-type-elementprescrption 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-type-elementprescrption | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRTypeElementPrescription |

 
Search for the type of element prescription 

## OncoFAIRSPMRTypeElementPrescription

Parameter `mr-type-elementprescrption`:`token`

Search for the type of element prescription

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.dosageInstruction.where(id='element').method` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-type-elementprescrption",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-type-elementprescrption",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRTypeElementPrescription",
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
  "description" : "Search for the type of element prescription",
  "code" : "mr-type-elementprescrption",
  "base" : ["MedicationRequest"],
  "type" : "token",
  "expression" : "MedicationRequest.dosageInstruction.where(id='element').method",
  "processingMode" : "normal"
}

```
