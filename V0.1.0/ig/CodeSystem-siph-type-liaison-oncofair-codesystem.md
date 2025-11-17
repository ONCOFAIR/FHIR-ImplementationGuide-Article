# Type de liaison Code System - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type de liaison Code System**

## CodeSystem: Type de liaison Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/siph-type-liaison-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:SIPhTypeLiaisonOncoFAIRCodeSystem |

 
Code system pour l'attribut TypeLiaison 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SIPhTypeLiasionOncoFAIRValueSet](ValueSet-siph-type-liasion-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "siph-type-liaison-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/siph-type-liaison-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "SIPhTypeLiaisonOncoFAIRCodeSystem",
  "title" : "Type de liaison Code System",
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
  "description" : "Code system pour l'attribut TypeLiaison",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "COMP",
      "display" : "Complément"
    },
    {
      "code" : "ALTERN",
      "display" : "Alternance"
    },
    {
      "code" : "COND",
      "display" : "Alternative"
    },
    {
      "code" : "DISDC",
      "display" : "Dispensation DC"
    },
    {
      "code" : "MODIF",
      "display" : "Modification"
    },
    {
      "code" : "SUGG",
      "display" : "Suggestion"
    },
    {
      "code" : "REMP",
      "display" : "Remplacement"
    }
  ]
}

```
