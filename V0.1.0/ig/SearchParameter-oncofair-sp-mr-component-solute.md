# oncofair-sp-mr-component-solute - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-component-solute**

## SearchParameter: oncofair-sp-mr-component-solute 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-component-solute | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRComponentSolute |

 
Search to find out if the component prescribed is solute in the prescription element 

## OncoFAIRSPMRComponentSolute

Parameter `mr-component-solute`:`token`

Search to find out if the component prescribed is solute in the prescription element

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-component-solute').value` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-component-solute",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-component-solute",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRComponentSolute",
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
  "description" : "Search to find out if the component prescribed is solute in the prescription element",
  "code" : "mr-component-solute",
  "base" : ["MedicationRequest"],
  "type" : "token",
  "expression" : "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-component-solute').value",
  "processingMode" : "normal"
}

```
