# oncofair-sp-mr-prescription-validation-date - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-prescription-validation-date**

## SearchParameter: oncofair-sp-mr-prescription-validation-date 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-prescription-validation-date | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRPrescriptionValidationDate |

 
Search for the prescription validation date of the prescription 

## OncoFAIRSPMRPrescriptionValidationDate

Parameter `mr-prescription-validation-date`:`date`

Search for the prescription validation date of the prescription

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-prescription-validation-date').value` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparators | Allowed: eq, ne, gt, lt, ge, le, sa, eb, ap |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-prescription-validation-date",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-prescription-validation-date",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRPrescriptionValidationDate",
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
  "description" : "Search for the prescription validation date of the prescription",
  "code" : "mr-prescription-validation-date",
  "base" : ["MedicationRequest"],
  "type" : "date",
  "expression" : "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-prescription-validation-date').value",
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
