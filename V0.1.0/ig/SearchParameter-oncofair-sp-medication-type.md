# oncofair-sp-medication-type - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-medication-type**

## SearchParameter: oncofair-sp-medication-type 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-medication-type | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMedicationType |

 
Search for type of medication 

## OncoFAIRSPMedicationType

Parameter `medication-type`:`token`

Search for type of medication

| | |
| :--- | :--- |
| Resource | [Medication](http://hl7.org/fhir/R5/medication.html) |
| Expression | `Medication.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-medication-type').value` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-medication-type",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-medication-type",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMedicationType",
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
  "description" : "Search for type of medication",
  "code" : "medication-type",
  "base" : ["Medication"],
  "type" : "token",
  "expression" : "Medication.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-medication-type').value",
  "processingMode" : "normal"
}

```
