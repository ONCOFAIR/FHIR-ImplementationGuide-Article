# Nature proposition pharmaceutique Code System - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nature proposition pharmaceutique Code System**

## CodeSystem: Nature proposition pharmaceutique Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/siph-natureproppharm-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:SIPhNaturePropPharmOncoFAIRCodeSystem |

 
Code system pour l'attribut NaturePropPharm 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SIPhNaturePropPharmOncoFAIRValueSet](ValueSet-siph-natureproppharm-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "siph-natureproppharm-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/siph-natureproppharm-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "SIPhNaturePropPharmOncoFAIRCodeSystem",
  "title" : "Nature proposition pharmaceutique Code System",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Code system pour l'attribut NaturePropPharm",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "NON",
      "display" : "Aucune"
    },
    {
      "code" : "SUG",
      "display" : "Suggestion"
    },
    {
      "code" : "SUB",
      "display" : "Substitution"
    },
    {
      "code" : "DDC",
      "display" : "Dispensation DC"
    }
  ]
}

```
