# oncofair-sp-mr-date-time-prescription-end - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-date-time-prescription-end**

## SearchParameter: oncofair-sp-mr-date-time-prescription-end 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-date-time-prescription-end | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRDateTimePrescriptionEnd |

 
Search for the the date/time prescription end 

## OncoFAIRSPMRDateTimePrescriptionEnd

Parameter `mr-date-time-prescription-end`:`date`

Search for the the date/time prescription end

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.effectiveDosePeriod.end` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparators | Allowed: eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-date-time-prescription-end",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-date-time-prescription-end",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRDateTimePrescriptionEnd",
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
  "description" : "Search for the the date/time prescription end",
  "code" : "mr-date-time-prescription-end",
  "base" : ["MedicationRequest"],
  "type" : "date",
  "expression" : "MedicationRequest.effectiveDosePeriod.end",
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
