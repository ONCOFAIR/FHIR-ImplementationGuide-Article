# Statut composant administré Code System - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statut composant administré Code System**

## CodeSystem: Statut composant administré Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/siph-statutcomposantadm-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:SIPhStatutComposantAdmOncoFAIRCodeSystem |

 
Code system pour l'attribut StatutComposantAdm 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SIPhStatutComposantAdmOncoFAIRValueSet](ValueSet-siph-statutcomposantadm-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "siph-statutcomposantadm-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/siph-statutcomposantadm-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "SIPhStatutComposantAdmOncoFAIRCodeSystem",
  "title" : "Statut composant administré Code System",
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
  "description" : "Code system pour l'attribut StatutComposantAdm",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [
    {
      "code" : "AF",
      "display" : "à faire"
    },
    {
      "code" : "FA",
      "display" : "fait"
    },
    {
      "code" : "AN",
      "display" : "annulé"
    },
    {
      "code" : "PE",
      "display" : "perdu"
    },
    {
      "code" : "DE",
      "display" : "démarré"
    },
    {
      "code" : "FI",
      "display" : "fini"
    },
    {
      "code" : "AR",
      "display" : "arrêté"
    },
    {
      "code" : "SS",
      "display" : "suspendu"
    },
    {
      "code" : "SU",
      "display" : "suivi"
    },
    {
      "code" : "RD",
      "display" : "redémarré"
    }
  ]
}

```
