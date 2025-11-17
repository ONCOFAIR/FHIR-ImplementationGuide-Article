# oncofair-sp-mr-element-rate-posology - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-element-rate-posology**

## SearchParameter: oncofair-sp-mr-element-rate-posology 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-rate-posology | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRRatePosology |

 
Search for rate of administration in the case of injection 

## OncoFAIRSPMRRatePosology

Parameter `mr-element-rate-posology`:`quantity`

Search for rate of administration in the case of injection

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.dosageInstruction.doseAndRate.rate.as(Quantity)` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparators | Allowed: eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-element-rate-posology",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-rate-posology",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRRatePosology",
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
  "description" : "Search for rate of administration in the case of injection",
  "code" : "mr-element-rate-posology",
  "base" : ["MedicationRequest"],
  "type" : "quantity",
  "expression" : "MedicationRequest.dosageInstruction.doseAndRate.rate.as(Quantity)",
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
