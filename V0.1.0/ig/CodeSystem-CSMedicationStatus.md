# Medication status - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication status**

## CodeSystem: Medication status (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/CSMedicationStatus | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:CSMedicationStatus |

 
CodeSystem for french medication status. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMedicationStatus](ValueSet-vsMedicationStatus.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMedicationStatus",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/CSMedicationStatus",
  "version" : "0.1.0",
  "name" : "CSMedicationStatus",
  "title" : "Medication status",
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
  "description" : "CodeSystem for french medication status.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [
    {
      "code" : "1",
      "display" : "à faire"
    },
    {
      "code" : "2",
      "display" : "fait"
    },
    {
      "code" : "3",
      "display" : "annulé"
    },
    {
      "code" : "4",
      "display" : "perdu"
    },
    {
      "code" : "5",
      "display" : "démarré"
    },
    {
      "code" : "6",
      "display" : "fini"
    },
    {
      "code" : "7",
      "display" : "arrêté"
    },
    {
      "code" : "8",
      "display" : "suspendu"
    },
    {
      "code" : "9",
      "display" : "suivi"
    },
    {
      "code" : "10",
      "display" : "redémarré"
    }
  ]
}

```
