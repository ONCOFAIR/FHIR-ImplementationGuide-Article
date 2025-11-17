# Type évènement Code System - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type évènement Code System**

## CodeSystem: Type évènement Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/siph-typeevenement-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:SIPhTypeEvenementOncoFAIRCodeSystem |

 
Code system pour l'attribut TypeEvenement 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SIPhTypeEvenementOncoFAIRValueSet](ValueSet-siph-typeevenement-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "siph-typeevenement-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/siph-typeevenement-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "SIPhTypeEvenementOncoFAIRCodeSystem",
  "title" : "Type évènement Code System",
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
  "description" : "Code system pour l'attribut TypeEvenement",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "DH",
      "display" : "date-heure absolue"
    },
    {
      "code" : "DHEVT",
      "display" : "date-heure relative à un événement"
    },
    {
      "code" : "SIGNE",
      "display" : "survenue d'un signe"
    },
    {
      "code" : "POSOCOND",
      "display" : "paramètre de posologie conditionnelle"
    }
  ]
}

```
