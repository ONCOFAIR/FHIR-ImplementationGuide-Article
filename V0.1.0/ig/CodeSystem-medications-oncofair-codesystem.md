# Medications - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medications**

## CodeSystem: Medications (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/medications-oncofair-codesystem | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:MedicationsOncoFAIRCodeSystem |

 
CodeSystem for french medications. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MedicationsOncoFAIRValueSet](ValueSet-medications-oncofair-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medications-oncofair-codesystem",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/medications-oncofair-codesystem",
  "version" : "0.1.0",
  "name" : "MedicationsOncoFAIRCodeSystem",
  "title" : "Medications",
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
  "description" : "CodeSystem for french medications.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "9365536",
      "display" : "OXALIPLATINE 200 mg"
    },
    {
      "code" : "9334872",
      "display" : "5-FLUOROURACILE 5 g"
    },
    {
      "code" : "9314929",
      "display" : "LEVOFOLINATE DE CALCIUM"
    },
    {
      "code" : "9296278",
      "display" : "ONDANSETRON"
    },
    {
      "code" : "5",
      "display" : "METHYLPREDNISOLONE"
    },
    {
      "code" : "9279854",
      "display" : "G5% 100ML POCHE"
    },
    {
      "code" : "9403863",
      "display" : "OXYCODONE LP 10 MG VIATRIS, CPR À LIBÉRATION PROLONGÉE"
    },
    {
      "code" : "9009043",
      "display" : "BACTRIM FORTE 800MG/160MG CPR"
    },
    {
      "code" : "9137249",
      "display" : "PENTACARINAT 300MG PDR INJ"
    }
  ]
}

```
