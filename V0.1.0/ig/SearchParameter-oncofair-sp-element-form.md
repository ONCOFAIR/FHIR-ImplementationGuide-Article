# oncofair-sp-element-form - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-element-form**

## SearchParameter: oncofair-sp-element-form 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-form | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPElementForm |

 
Search for the pharmaceutical form of the prescription/administration item 

## OncoFAIRSPElementForm

Parameter `element-form`:`token`

Search for the pharmaceutical form of the prescription/administration item

| | |
| :--- | :--- |
| Resources | [MedicationAdministration](http://hl7.org/fhir/R5/medicationadministration.html),[MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationAdministration.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-element-form').value | MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-element-form').value` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-element-form",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-form",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPElementForm",
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
  "description" : "Search for the pharmaceutical form of the prescription/administration item",
  "code" : "element-form",
  "base" : ["MedicationAdministration", "MedicationRequest"],
  "type" : "token",
  "expression" : "MedicationAdministration.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-element-form').value | MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-element-form').value",
  "processingMode" : "normal"
}

```
