# Renseignement complémentaire Code System - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Renseignement complémentaire Code System**

## CodeSystem: Renseignement complémentaire Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/siph-renscomplement-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:SIPhRensComplementOncoFAIRCodeSystem |

 
Code system pour l'attribut RensComplement 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SIPhRensComplementOncoFAIRValueSet](ValueSet-siph-renscomplement-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "siph-renscomplement-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/siph-renscomplement-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "SIPhRensComplementOncoFAIRCodeSystem",
  "title" : "Renseignement complémentaire Code System",
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
  "description" : "Code system pour l'attribut RensComplement",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [
    {
      "code" : "ELT_DOSS",
      "display" : "Elément du dossier médical"
    },
    {
      "code" : "POIDS",
      "display" : "Poids"
    },
    {
      "code" : "TAILLE",
      "display" : "Taille"
    },
    {
      "code" : "S_CORP",
      "display" : "Surface corporelle"
    },
    {
      "code" : "DIAG",
      "display" : "Diagnostic"
    },
    {
      "code" : "CL_CREAT",
      "display" : "Clairance de la créatinine"
    },
    {
      "code" : "REGIME",
      "display" : "Régime"
    },
    {
      "code" : "ALLERGIE",
      "display" : "Allergie"
    },
    {
      "code" : "AGE",
      "display" : "Age"
    },
    {
      "code" : "SEXE",
      "display" : "Sexe clinique"
    },
    {
      "code" : "EVT",
      "display" : "Evénment clinique"
    }
  ]
}

```
