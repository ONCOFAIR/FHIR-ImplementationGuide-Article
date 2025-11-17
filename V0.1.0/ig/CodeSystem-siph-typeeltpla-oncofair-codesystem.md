# Type de l'élément d'administration Code System - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type de l'élément d'administration Code System**

## CodeSystem: Type de l'élément d'administration Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/siph-typeeltpla-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:SIPhTypeEltPLAOncoFAIRCodeSystem |

 
Code system pour l'attribut TypeEltPLA 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SIPhTypeEltPLAOncoFAIRValueSet](ValueSet-siph-typeeltpla-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "siph-typeeltpla-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/siph-typeeltpla-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "SIPhTypeEltPLAOncoFAIRCodeSystem",
  "title" : "Type de l'élément d'administration Code System",
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
  "description" : "Code system pour l'attribut TypeEltPLA",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "MED",
      "display" : "Médicament"
    },
    {
      "code" : "ID",
      "display" : "Injection directe"
    },
    {
      "code" : "PERF",
      "display" : "Perfusion"
    },
    {
      "code" : "PSE",
      "display" : "Pousse-seringue électrique"
    },
    {
      "code" : "PCA",
      "display" : "Patient Controled Analgesiae"
    },
    {
      "code" : "GAZ",
      "display" : "Gaz médical"
    },
    {
      "code" : "AER",
      "display" : "Aérosol"
    },
    {
      "code" : "PATCH",
      "display" : "Patch"
    },
    {
      "code" : "NE",
      "display" : "Nutrition entérale"
    }
  ]
}

```
