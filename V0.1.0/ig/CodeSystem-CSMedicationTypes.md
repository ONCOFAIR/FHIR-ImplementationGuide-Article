# Medication types - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication types**

## CodeSystem: Medication types (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/CSMedicationTypes | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:CSMedicationTypes |

 
CodeSystem for french medication types. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMedicationTypes](ValueSet-vsMedicationTypes.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMedicationTypes",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/CSMedicationTypes",
  "version" : "0.1.0",
  "name" : "CSMedicationTypes",
  "title" : "Medication types",
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
  "description" : "CodeSystem for french medication types.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [
    {
      "code" : "1",
      "display" : "spécialité"
    },
    {
      "code" : "2",
      "display" : "ATU nominative"
    },
    {
      "code" : "3",
      "display" : "principe actif"
    },
    {
      "code" : "4",
      "display" : "préparation hospitalière"
    },
    {
      "code" : "5",
      "display" : "importation"
    },
    {
      "code" : "6",
      "display" : "ATU de cohorte"
    },
    {
      "code" : "7",
      "display" : "préparation magistrale"
    },
    {
      "code" : "8",
      "display" : "matière première"
    },
    {
      "code" : "9",
      "display" : "médicament virtuel THESORIMED"
    },
    {
      "code" : "10",
      "display" : "médicament virtuel THERIAQUE"
    },
    {
      "code" : "11",
      "display" : "médicament virtuel BCB DEXTER"
    },
    {
      "code" : "12",
      "display" : "médicament virtuel VIDAL"
    },
    {
      "code" : "13",
      "display" : "dénomination commune"
    },
    {
      "code" : "14",
      "display" : "médicament virtuel MedicaBase"
    }
  ]
}

```
