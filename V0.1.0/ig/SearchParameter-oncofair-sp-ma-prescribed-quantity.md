# oncofair-sp-ma-prescribed-quantity - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-ma-prescribed-quantity**

## SearchParameter: oncofair-sp-ma-prescribed-quantity 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-prescribed-quantity | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMAPrescribedQuantity |

 
Search for the prescribed quantity of the administration element 

## OncoFAIRSPMAPrescribedQuantity

Parameter `ma-prescribed-quantity`:`quantity`

Search for the prescribed quantity of the administration element

| | |
| :--- | :--- |
| Resource | [MedicationAdministration](http://hl7.org/fhir/R5/medicationadministration.html) |
| Expression | `MedicationAdministration.dosage.dose` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparators | Allowed: eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-ma-prescribed-quantity",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-prescribed-quantity",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMAPrescribedQuantity",
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
  "description" : "Search for the prescribed quantity of the administration element",
  "code" : "ma-prescribed-quantity",
  "base" : ["MedicationAdministration"],
  "type" : "quantity",
  "expression" : "MedicationAdministration.dosage.dose",
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
