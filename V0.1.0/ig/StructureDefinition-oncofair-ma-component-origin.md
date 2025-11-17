# OncoFAIRMAComponentOrigin - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMAComponentOrigin**

## Extension: OncoFAIRMAComponentOrigin 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-component-origin | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMAComponentOrigin |

Extension created as part of OncoFAIR containing the origin of the administered component.

Extension créée dans le cadre d'OncoFAIR contenant la provenance du composant administré.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md)
* Examples for this Extension: [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationComponent](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationComponent.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-ma-component-origin)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-ma-component-origin.csv), [Excel](StructureDefinition-oncofair-ma-component-origin.xlsx), [Schematron](StructureDefinition-oncofair-ma-component-origin.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-ma-component-origin",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-component-origin",
  "version" : "0.1.0",
  "name" : "OncoFAIRMAComponentOrigin",
  "title" : "OncoFAIRMAComponentOrigin",
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
  "description" : "Extension created as part of OncoFAIR containing the origin of the administered component. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la provenance du composant administré.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-ma-component-origin",
      "name" : "Mapping de l'extension OncoFAIR MA Component Origin"
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
      "expression" : "MedicationAdministration"
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
        "short" : "Specifies the origin of the component administered",
        "definition" : "Extension created as part of OncoFAIR containing the origin of the administered component. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la provenance du composant administré."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-component-origin"
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
            "identity" : "mapping-oncofair-ma-component-origin",
            "map" : "provenance"
          }
        ]
      }
    ]
  }
}

```
