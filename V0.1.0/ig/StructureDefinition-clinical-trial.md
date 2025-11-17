# Oncology Clinical Trial - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Oncology Clinical Trial**

## Resource Profile: Oncology Clinical Trial 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/clinical-trial | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:ClinicalTrial |

 
Oncology clinical trial used to associate a Onco Patient to a Clinical Trial 

**Usages:**

* Examples for this Profile: [ResearchStudy/fhir-osiris-example-researchstudy](ResearchStudy-fhir-osiris-example-researchstudy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/clinical-trial)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-clinical-trial.csv), [Excel](StructureDefinition-clinical-trial.xlsx), [Schematron](StructureDefinition-clinical-trial.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "clinical-trial",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/clinical-trial",
  "version" : "0.1.0",
  "name" : "ClinicalTrial",
  "title" : "Oncology Clinical Trial",
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
  "description" : "Oncology clinical trial used to associate a Onco Patient to a Clinical Trial",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "BRIDG5.1",
      "uri" : "https://bridgmodel.nci.nih.gov",
      "name" : "BRIDG 5.1 Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "clinicaltrials-gov",
      "uri" : "http://clinicaltrials.gov",
      "name" : "ClinicalTrials.gov Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ResearchStudy",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ResearchStudy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ResearchStudy",
        "path" : "ResearchStudy"
      },
      {
        "id" : "ResearchStudy.identifier",
        "path" : "ResearchStudy.identifier",
        "short" : "EudraCT number of the clinical trial",
        "definition" : "The number in the EudraCT clinical trials database.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "ResearchStudy.title",
        "path" : "ResearchStudy.title",
        "short" : "Clinical trial name",
        "definition" : "If the treatment is part of a clinical trial, its name is indicated.",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
