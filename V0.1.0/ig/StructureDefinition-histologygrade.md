# Histology - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Histology**

## Extension: Histology 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/histologygrade | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:Histology_Grade |

Grade of Histology

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Tumor Pathology Event](StructureDefinition-tumor-pathology-event.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/histologygrade)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-histologygrade.csv), [Excel](StructureDefinition-histologygrade.xlsx), [Schematron](StructureDefinition-histologygrade.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "histologygrade",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/histologygrade",
  "version" : "0.1.0",
  "name" : "Histology_Grade",
  "title" : "Histology",
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
  "description" : "Grade of Histology",
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
        "short" : "Histology",
        "definition" : "Grade of Histology"
      },
      {
        "id" : "Extension.extension:histologyGradeType",
        "path" : "Extension.extension",
        "sliceName" : "histologyGradeType",
        "short" : "Histological Type. Obligatory if Histological Grade exists.",
        "definition" : "The classification system used to define the grade of the tumor (breast, prostate are given here as examples).",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:histologyGradeType.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:histologyGradeType.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "histologyGradeType"
      },
      {
        "id" : "Extension.extension:histologyGradeType.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:histologyGradeValue",
        "path" : "Extension.extension",
        "sliceName" : "histologyGradeValue",
        "short" : "Histological Grade. Obligatory if Histological Type exists.",
        "definition" : "The value of the histological grade according to the classification system used.",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:histologyGradeValue.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:histologyGradeValue.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "histologyGradeValue"
      },
      {
        "id" : "Extension.extension:histologyGradeValue.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/histologygrade"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
