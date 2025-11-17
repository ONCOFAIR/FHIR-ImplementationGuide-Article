# Treatment Type Value Set - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Treatment Type Value Set**

## ValueSet: Treatment Type Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/ValueSet/TreatmentType | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:TreatmentType |

 
Treatment type 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "TreatmentType",
  "url" : "http://oncofair-ig.kereval.cloud/ValueSet/TreatmentType",
  "version" : "0.1.0",
  "name" : "TreatmentType",
  "title" : "Treatment Type Value Set",
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
  "description" : "Treatment type",
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/umls",
        "concept" : [
          {
            "code" : "C3665472",
            "display" : "Chemotherapy"
          },
          {
            "code" : "C0279025",
            "display" : "Hormone therapy"
          },
          {
            "code" : "C1522449",
            "display" : "Therapeutic radiology procedure"
          },
          {
            "code" : "C0728940",
            "display" : "Surgery"
          },
          {
            "code" : "C0006098",
            "display" : "Brachytherapy"
          },
          {
            "code" : "C0021083",
            "display" : "Immunotherapy"
          },
          {
            "code" : "C0005961",
            "display" : "Bone marrow transplant"
          },
          {
            "code" : "C0279694",
            "display" : "Monoclonal antibody"
          },
          {
            "code" : "C93352",
            "display" : "Target therapy"
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
