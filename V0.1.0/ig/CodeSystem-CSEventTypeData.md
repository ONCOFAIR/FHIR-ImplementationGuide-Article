# Event Types - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Event Types**

## CodeSystem: Event Types (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CodeSystem/CSEventTypeData | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:CSEventTypeData |

 
CodeSystem for various event types used in French healthcare systems, identified by number, abbreviation, and full name. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEventTypeData](ValueSet-VSEventTypeData.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEventTypeData",
  "url" : "http://oncofair-ig.kereval.cloud/CodeSystem/CSEventTypeData",
  "version" : "0.1.0",
  "name" : "CSEventTypeData",
  "title" : "Event Types",
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
  "description" : "CodeSystem for various event types used in French healthcare systems, identified by number, abbreviation, and full name.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "1",
      "display" : "BOO - Booléen"
    },
    {
      "code" : "2",
      "display" : "QLT - Qualitatif"
    },
    {
      "code" : "3",
      "display" : "QLO - Qualitatif ordonné"
    },
    {
      "code" : "4",
      "display" : "QTT - Quantitatif"
    },
    {
      "code" : "5",
      "display" : "HOR - Horaire"
    },
    {
      "code" : "6",
      "display" : "PHE - Plage horaire"
    }
  ]
}

```
