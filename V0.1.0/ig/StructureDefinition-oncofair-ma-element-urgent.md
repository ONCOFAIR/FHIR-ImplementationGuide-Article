# OncoFAIRMAElementUrgent - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMAElementUrgent**

## Extension: OncoFAIRMAElementUrgent 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-urgent | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMAElementUrgent |

Extension created as part of OncoFAIR containing the notion of emergency.

Extension créée dans le cadre d'OncoFAIR contenant la notion d'urgence.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationAdministration Element](StructureDefinition-oncofair-medicationadministration-element.md)
* Examples for this Extension: [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationElement](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationElement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-ma-element-urgent)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-ma-element-urgent.csv), [Excel](StructureDefinition-oncofair-ma-element-urgent.xlsx), [Schematron](StructureDefinition-oncofair-ma-element-urgent.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-ma-element-urgent",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-urgent",
  "version" : "0.1.0",
  "name" : "OncoFAIRMAElementUrgent",
  "title" : "OncoFAIRMAElementUrgent",
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
  "description" : "Extension created as part of OncoFAIR containing the notion of emergency. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la notion d'urgence.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-ma-element-urgent",
      "name" : "Mapping de l'extension OncoFAIR MA Element Urgent"
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
        "short" : "Boolean attribute indicating the notion of urgency in creating the administration element",
        "definition" : "Extension created as part of OncoFAIR containing the notion of emergency. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la notion d'urgence."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-urgent"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-ma-element-urgent",
            "map" : "urgent"
          }
        ]
      }
    ]
  }
}

```
