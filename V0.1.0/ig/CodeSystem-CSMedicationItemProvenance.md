# Medication item provenance - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication item provenance**

## CodeSystem: Medication item provenance (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/CSMedicationItemProvenance | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:CSMedicationItemProvenance |

 
CodeSystem for french medication item provenance. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMedicationItemProvenance](ValueSet-vsMedicationItemProvenance.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMedicationItemProvenance",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/CSMedicationItemProvenance",
  "version" : "0.1.0",
  "name" : "CSMedicationItemProvenance",
  "title" : "Medication item provenance",
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
  "description" : "CodeSystem for french medication item provenance.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "1",
      "display" : "Pharmacie"
    },
    {
      "code" : "2",
      "display" : "Armoire de service"
    },
    {
      "code" : "3",
      "display" : "Non comptabilisé"
    },
    {
      "code" : "4",
      "display" : "Gestion particulière"
    }
  ]
}

```
