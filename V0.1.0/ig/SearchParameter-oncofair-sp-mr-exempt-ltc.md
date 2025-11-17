# oncofair-sp-mr-exempt-ltc - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oncofair-sp-mr-exempt-ltc**

## SearchParameter: oncofair-sp-mr-exempt-ltc 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-exempt-ltc | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRSPMRExemptLTC |

 
Search for identifier of the ALD for which the component prescribed is prescribed for one of the reasons for which the patient benefits from an exemption under article L324-1 of the CSS. 

## OncoFAIRSPMRExemptLTC

Parameter `mr-exempt-ltc`:`token`

Search for identifier of the ALD for which the component prescribed is prescribed for one of the reasons for which the patient benefits from an exemption under article L324-1 of the CSS.

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R5/medicationrequest.html) |
| Expression | `MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-exempt-ltc').value` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "oncofair-sp-mr-exempt-ltc",
  "url" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-exempt-ltc",
  "version" : "0.1.0",
  "name" : "OncoFAIRSPMRExemptLTC",
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
  "description" : "Search for identifier of the ALD for which the component prescribed is prescribed for one of the reasons for which the patient benefits from an exemption under article L324-1 of the CSS.",
  "code" : "mr-exempt-ltc",
  "base" : ["MedicationRequest"],
  "type" : "token",
  "expression" : "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-exempt-ltc').value",
  "processingMode" : "normal"
}

```
