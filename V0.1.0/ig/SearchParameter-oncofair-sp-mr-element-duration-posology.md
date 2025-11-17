# oncofair-sp-mr-element-duration-posology - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-element-duration-posology**

## SearchParameter: oncofair-sp-mr-element-duration-posology 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-duration-posology | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRDurationPosology |

 
Search for duration of administration 

## OncoFAIRSPMRDurationPosology

Parameter `mr-duration-posology`:`number`

Search for duration of administration

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.dosageInstruction.timing.repeat.duration` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparators | Allowed: eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-element-duration-posology",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-duration-posology",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRDurationPosology",
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
  "description" : "Search for duration of administration ",
  "code" : "mr-duration-posology",
  "base" : ["MedicationRequest"],
  "type" : "number",
  "expression" : "MedicationRequest.dosageInstruction.timing.repeat.duration",
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
