# OncoFAIRElementForm - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRElementForm**

## Extension: OncoFAIRElementForm 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-element-form | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRElementForm |

Extension created as part of OncoFair containing the drug form.

Extension créée dans le cadre d'OncoFair contenant la forme du médicament.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationAdministration Element](StructureDefinition-oncofair-medicationadministration-element.md) and [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)
* Examples for this Extension: [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationElement](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationElement.md) and [MedicationRequest/Element](MedicationRequest-Element.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-element-form)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-element-form.csv), [Excel](StructureDefinition-oncofair-element-form.xlsx), [Schematron](StructureDefinition-oncofair-element-form.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-element-form",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-element-form",
  "version" : "0.1.0",
  "name" : "OncoFAIRElementForm",
  "title" : "OncoFAIRElementForm",
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
  "description" : "Extension created as part of OncoFair containing the drug form. \r\n\nExtension créée dans le cadre d'OncoFair contenant la forme du médicament.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-element-form",
      "name" : "Mapping de l'extension OncoFAIR Element Form"
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
    },
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
        "short" : "Pharmaceutical form of the prescription/administration item",
        "definition" : "Extension created as part of OncoFair containing the drug form. \r\n\nExtension créée dans le cadre d'OncoFair contenant la forme du médicament."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-element-form"
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
            "identity" : "mapping-oncofair-element-form",
            "map" : "forme"
          }
        ]
      }
    ]
  }
}

```
