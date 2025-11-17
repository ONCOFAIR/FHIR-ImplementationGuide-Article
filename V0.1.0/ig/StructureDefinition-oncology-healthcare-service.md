# OncologyHealthcareService - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncologyHealthcareService**

## Resource Profile: OncologyHealthcareService 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncology-healthcare-service | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncologyHealthcareService |

 
Healthcare service(s). 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncology-healthcare-service)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncology-healthcare-service.csv), [Excel](StructureDefinition-oncology-healthcare-service.xlsx), [Schematron](StructureDefinition-oncology-healthcare-service.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncology-healthcare-service",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncology-healthcare-service",
  "version" : "0.1.0",
  "name" : "OncologyHealthcareService",
  "title" : "OncologyHealthcareService",
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
  "description" : "Healthcare service(s).",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "interface",
      "uri" : "http://hl7.org/fhir/interface",
      "name" : "Interface Pattern"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HealthcareService",
        "path" : "HealthcareService"
      },
      {
        "id" : "HealthcareService.name",
        "path" : "HealthcareService.name",
        "short" : "The healthcare service name",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
