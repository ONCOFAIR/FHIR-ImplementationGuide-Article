# oncofair-sp-mr-element-quantity-posology - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-element-quantity-posology**

## SearchParameter: oncofair-sp-mr-element-quantity-posology 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-quantity-posology | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRQuantityPosology |

 
Search for quantity of the prescription element in the dosage 

## OncoFAIRSPMRQuantityPosology

Parameter `mr-element-quantity-posology`:`quantity`

Search for quantity of the prescription element in the dosage

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.dosageInstruction.doseAndRate.dose.as(Quantity)` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparators | Allowed: eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-element-quantity-posology",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-quantity-posology",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRQuantityPosology",
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
  "description" : "Search for quantity of the prescription element in the dosage",
  "code" : "mr-element-quantity-posology",
  "base" : ["MedicationRequest"],
  "type" : "quantity",
  "expression" : "MedicationRequest.dosageInstruction.doseAndRate.dose.as(Quantity)",
  "processingMode" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true,
  "comparator" : [
    "eq",
    "ne",
    "gt",
    "lt",
    "ge",
    "le",
    "sa",
    "eb",
    "ap"
  ]
}

```
