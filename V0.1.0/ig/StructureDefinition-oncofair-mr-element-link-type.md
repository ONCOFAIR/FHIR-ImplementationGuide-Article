# OncoFAIRMRElementLinkType - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMRElementLinkType**

## Extension: OncoFAIRMRElementLinkType 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-link-type | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMRElementLinkType |

Extension created as part of OncoFAIR containing the element's type of link.

Extension créée dans le cadre d'OncoFAIR contenant le type de liaison de l'élément.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)
* Examples for this Extension: [MedicationRequest/Element-folfox-diffuseur](MedicationRequest-Element-folfox-diffuseur.md), [MedicationRequest/Element-folfox](MedicationRequest-Element-folfox.md) and [MedicationRequest/Element](MedicationRequest-Element.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-mr-element-link-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-mr-element-link-type.csv), [Excel](StructureDefinition-oncofair-mr-element-link-type.xlsx), [Schematron](StructureDefinition-oncofair-mr-element-link-type.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-mr-element-link-type",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-link-type",
  "version" : "0.1.0",
  "name" : "OncoFAIRMRElementLinkType",
  "title" : "OncoFAIRMRElementLinkType",
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
  "description" : "Extension created as part of OncoFAIR containing the element's type of link. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant le type de liaison de l'élément.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-mr-element-link-type",
      "name" : "Mapping de l'extension OncoFAIR MR Element Link Type"
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
      "expression" : "MedicationRequest.basedOn"
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
        "short" : "Type of link between the two prescription elements",
        "definition" : "Extension created as part of OncoFAIR containing the element's type of link. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant le type de liaison de l'élément."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-link-type"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-mr-element-link-type",
            "map" : "typeLiaisonElement"
          }
        ]
      }
    ]
  }
}

```
