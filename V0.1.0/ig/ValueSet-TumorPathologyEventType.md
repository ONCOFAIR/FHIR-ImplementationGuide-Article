# Tumor Pathology Event Type Value Set - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Pathology Event Type Value Set**

## ValueSet: Tumor Pathology Event Type Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/ValueSet/TumorPathologyEventType | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:TumorPathologyEventType |

 
Tumor pathology event type 

 **References** 

* [Tumor Pathology Event](StructureDefinition-tumor-pathology-event.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "TumorPathologyEventType",
  "url" : "http://oncofair-ig.kereval.cloud/ValueSet/TumorPathologyEventType",
  "version" : "0.1.0",
  "name" : "TumorPathologyEventType",
  "title" : "Tumor Pathology Event Type Value Set",
  "status" : "active",
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
  "description" : "Tumor pathology event type",
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/umls",
        "concept" : [
          {
            "code" : "C1882062",
            "display" : "Neoplasm"
          },
          {
            "code" : "C2939419",
            "display" : "Metastatic Malignant Neoplasm (NCI:C36263)"
          },
          {
            "code" : "C0521158",
            "display" : "Recurrent tumor"
          },
          {
            "code" : "C0677930",
            "display" : "Primary tumor"
          },
          {
            "code" : "C0439673",
            "display" : "Unknown"
          }
        ]
      }
    ]
  }
}

```
