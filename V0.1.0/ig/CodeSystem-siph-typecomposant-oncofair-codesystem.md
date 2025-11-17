# Type de composant Code System - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type de composant Code System**

## CodeSystem: Type de composant Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/siph-typecomposant-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:SIPhTypeComposantOncoFAIRCodeSystem |

 
Code system pour l'attribut TypeComposant 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SIPhTypeComposantOncoFAIRValueSet](ValueSet-siph-typecomposant-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "siph-typecomposant-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/siph-typecomposant-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "SIPhTypeComposantOncoFAIRCodeSystem",
  "title" : "Type de composant Code System",
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
  "description" : "Code system pour l'attribut TypeComposant",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [
    {
      "code" : "SPEC",
      "display" : "spécialité"
    },
    {
      "code" : "ATUN",
      "display" : "ATU nominative"
    },
    {
      "code" : "PRAC",
      "display" : "principe actif"
    },
    {
      "code" : "PRHO",
      "display" : "préparation hospitalière"
    },
    {
      "code" : "IMPO",
      "display" : "importation"
    },
    {
      "code" : "ATUC",
      "display" : "ATU de cohorte"
    },
    {
      "code" : "PRMA",
      "display" : "préparation magistrale"
    },
    {
      "code" : "MAPR",
      "display" : "matière première"
    },
    {
      "code" : "MVTS",
      "display" : "médicament virtuel THESORIMED"
    },
    {
      "code" : "MVTR",
      "display" : "médicament virtuel THERIAQUE"
    },
    {
      "code" : "MVBC",
      "display" : "médicament virtuel BCB DEXTER"
    },
    {
      "code" : "MVVI",
      "display" : "médicament virtuel VIDAL"
    },
    {
      "code" : "DC",
      "display" : "dénomination commune"
    },
    {
      "code" : "MVMB",
      "display" : "médicament virtuel MedicaBase"
    }
  ]
}

```
