# goNogo Code System - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **goNogo Code System**

## CodeSystem: goNogo Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/siph-gonogo-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:SIPhgoNogoOncoFAIRCodeSystem |

 
Code system pour l'attribut goNogo 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SIPhgoNogoOncoFAIRValueSet](ValueSet-siph-gonogo-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "siph-gonogo-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/siph-gonogo-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "SIPhgoNogoOncoFAIRCodeSystem",
  "title" : "goNogo Code System",
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
  "description" : "Code system pour l'attribut goNogo",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "NA",
      "display" : "Non applicable"
    },
    {
      "code" : "ATT",
      "display" : "En attente"
    },
    {
      "code" : "PREP",
      "display" : "A préparer"
    },
    {
      "code" : "GO",
      "display" : "Confirmé"
    },
    {
      "code" : "NOGO",
      "display" : "Annulé"
    }
  ]
}

```
