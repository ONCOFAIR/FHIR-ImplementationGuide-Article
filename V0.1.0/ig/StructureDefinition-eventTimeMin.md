# Event Time Min - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Event Time Min**

## Extension: Event Time Min 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/eventTimeMin | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:EventTimeMin |

Represents the minimum time for the event.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/eventTimeMin)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eventTimeMin.csv), [Excel](StructureDefinition-eventTimeMin.xlsx), [Schematron](StructureDefinition-eventTimeMin.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eventTimeMin",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/eventTimeMin",
  "version" : "0.1.0",
  "name" : "EventTimeMin",
  "title" : "Event Time Min",
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
  "description" : "Represents the minimum time for the event.",
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
      "expression" : "Element"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Event Time Min",
        "definition" : "Represents the minimum time for the event."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/eventTimeMin"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Extension.value[x]:valueTime",
        "path" : "Extension.value[x]",
        "sliceName" : "valueTime",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "time"
          }
        ]
      }
    ]
  }
}

```
