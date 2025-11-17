# Paremètres posologie conditionnelle Code System - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paremètres posologie conditionnelle Code System**

## CodeSystem: Paremètres posologie conditionnelle Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/siph-paramposoconditionnelle-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:SIPhParamPosoConditionnelleOncoFAIRCodeSystem |

 
Code system pour l'attribut ParamPosoConditionnelle 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SIPhParamPosoConditionnelleOncoFAIRValueSet](ValueSet-siph-paramposoconditionnelle-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "siph-paramposoconditionnelle-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/siph-paramposoconditionnelle-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "SIPhParamPosoConditionnelleOncoFAIRCodeSystem",
  "title" : "Paremètres posologie conditionnelle Code System",
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
  "description" : "Code system pour l'attribut ParamPosoConditionnelle",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "DELAIMIN",
      "display" : "Délai minimal entre deux prises ou injections"
    },
    {
      "code" : "DOSEMAXP",
      "display" : "Dose maximale par prise"
    },
    {
      "code" : "DOSEMAXJ",
      "display" : "Dose maximale par 24h"
    },
    {
      "code" : "DEBITMAX",
      "display" : "Débit maximal"
    },
    {
      "code" : "DUREEMIN",
      "display" : "Durée d'injection minimale"
    },
    {
      "code" : "DUREEMAX",
      "display" : "Durée d'injection maximale"
    },
    {
      "code" : "DOSEMAXC",
      "display" : "Dose maximale cumulée"
    }
  ]
}

```
