# oncofair-sp-cp-date-time-reference - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-cp-date-time-reference**

## SearchParameter: oncofair-sp-cp-date-time-reference 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-cp-date-time-reference | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPCPDateTimeReference |

 
Search for the reference date and time of the prescribed protocol 

## OncoFAIRSPCPDateTimeReference

Parameter `cp-date-time-reference`:`date`

Search for the reference date and time of the prescribed protocol

| | |
| :--- | :--- |
| Resource | [CarePlan](http://hl7.org/fhir/R5/careplan.html) |
| Expression | `CarePlan.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-cp-treatment').extension.where(url='dateTimeReference').value` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparators | Allowed: eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-cp-date-time-reference",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-cp-date-time-reference",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPCPDateTimeReference",
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
  "description" : "Search for the reference date and time of the prescribed protocol",
  "code" : "cp-date-time-reference",
  "base" : ["CarePlan"],
  "type" : "date",
  "expression" : "CarePlan.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-cp-treatment').extension.where(url='dateTimeReference').value",
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
