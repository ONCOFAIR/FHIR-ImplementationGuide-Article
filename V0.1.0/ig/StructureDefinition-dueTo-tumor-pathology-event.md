# Tumor Pathology Event Parent - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Pathology Event Parent**

## Extension: Tumor Pathology Event Parent 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/dueTo-tumor-pathology-event | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:DueToTumorPathologyEvent |

Reference the Tumor Pathology Event from which the metastasis comes from.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Tumor Pathology Event](StructureDefinition-tumor-pathology-event.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/dueTo-tumor-pathology-event)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-dueTo-tumor-pathology-event.csv), [Excel](StructureDefinition-dueTo-tumor-pathology-event.xlsx), [Schematron](StructureDefinition-dueTo-tumor-pathology-event.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dueTo-tumor-pathology-event",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/dueTo-tumor-pathology-event",
  "version" : "0.1.0",
  "name" : "DueToTumorPathologyEvent",
  "title" : "Tumor Pathology Event Parent",
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
  "description" : "Reference the Tumor Pathology Event from which the metastasis comes from.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Condition"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/condition-dueTo",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Tumor Pathology Event Parent",
        "definition" : "Reference the Tumor Pathology Event from which the metastasis comes from."
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/tumor-pathology-event"
            ]
          }
        ]
      }
    ]
  }
}

```
