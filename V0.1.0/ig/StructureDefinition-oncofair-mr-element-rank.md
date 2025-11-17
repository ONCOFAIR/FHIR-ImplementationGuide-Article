# OncoFAIRMRElementRank - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMRElementRank**

## Extension: OncoFAIRMRElementRank 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-rank | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMRElementRank |

Extension created as part of OncoFAIR containing the prescription element rank.

Extension créée dans le cadre d'OncoFAIR contenant le rangd d'élement de la prescription.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)
* Examples for this Extension: [MedicationRequest/Element](MedicationRequest-Element.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-mr-element-rank)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-mr-element-rank.csv), [Excel](StructureDefinition-oncofair-mr-element-rank.xlsx), [Schematron](StructureDefinition-oncofair-mr-element-rank.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-mr-element-rank",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-rank",
  "version" : "0.1.0",
  "name" : "OncoFAIRMRElementRank",
  "title" : "OncoFAIRMRElementRank",
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
  "description" : "Extension created as part of OncoFAIR containing the prescription element rank. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant le rangd d'élement de la prescription.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-mr-element-rank",
      "name" : "Mapping de l'extension OncoFAIR MR Element Rank"
    },
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
      "expression" : "MedicationRequest"
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
        "short" : "Gives the rank of the prescription element in the prescription according to a total order of prescription elements on the prescription object to which they are attached.",
        "definition" : "Extension created as part of OncoFAIR containing the prescription element rank. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant le rangd d'élement de la prescription."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-rank"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-mr-element-rank",
            "map" : "rangElementPrescription"
          }
        ]
      }
    ]
  }
}

```
