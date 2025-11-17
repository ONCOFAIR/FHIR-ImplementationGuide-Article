# oncofair-sp-mr-component-substitution - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-component-substitution**

## SearchParameter: oncofair-sp-mr-component-substitution 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-component-substitution | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRComponentSubstitution |

 
Search to find out if the component prescribed is declared non-substitutable in the prescription element 

## OncoFAIRSPMRComponentSubstitution

Parameter `mr-component-substitution`:`token`

Search to find out if the component prescribed is declared non-substitutable in the prescription element

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.substitution.allowed.as(boolean)` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-component-substitution",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-component-substitution",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRComponentSubstitution",
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
  "description" : "Search to find out if the component prescribed is declared non-substitutable in the prescription element ",
  "code" : "mr-component-substitution",
  "base" : ["MedicationRequest"],
  "type" : "token",
  "expression" : "MedicationRequest.substitution.allowed.as(boolean)",
  "processingMode" : "normal"
}

```
