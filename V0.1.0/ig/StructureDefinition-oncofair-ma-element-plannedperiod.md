# OncoFAIRMAElementPlannedPeriod - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMAElementPlannedPeriod**

## Extension: OncoFAIRMAElementPlannedPeriod 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-plannedperiod | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMAElementPlannedPeriod |

Extension created as part of OncoFAIR containing the planned start and end date of administration.

Extension créée dans le cadre d'OncoFAIR contenant la date de début et de fin prévue de l'administration.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationAdministration Element](StructureDefinition-oncofair-medicationadministration-element.md)
* Examples for this Extension: [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationElement](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationElement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-ma-element-plannedperiod)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-ma-element-plannedperiod.csv), [Excel](StructureDefinition-oncofair-ma-element-plannedperiod.xlsx), [Schematron](StructureDefinition-oncofair-ma-element-plannedperiod.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-ma-element-plannedperiod",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-plannedperiod",
  "version" : "0.1.0",
  "name" : "OncoFAIRMAElementPlannedPeriod",
  "title" : "OncoFAIRMAElementPlannedPeriod",
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
  "description" : "Extension created as part of OncoFAIR containing the planned start and end date of administration. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la date de début et de fin prévue de l'administration.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-ma-element-plannedperiod",
      "name" : "Mapping de l'extension OncoFAIR MA Element Planned DateTime"
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
        "short" : "OncoFAIRMAElementPlannedPeriod",
        "definition" : "Extension created as part of OncoFAIR containing the planned start and end date of administration. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la date de début et de fin prévue de l'administration."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-plannedperiod"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Extension.value[x].start",
        "path" : "Extension.value[x].start",
        "short" : "Date and time scheduled for the start of administration of the administration element",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-ma-element-plannedperiod",
            "map" : "dateHeureDebutPrevue"
          }
        ]
      },
      {
        "id" : "Extension.value[x].end",
        "path" : "Extension.value[x].end",
        "short" : "Date and time scheduled for the end of administration of the administration element",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-ma-element-plannedperiod",
            "map" : "dateHeureFinPrevue"
          }
        ]
      }
    ]
  }
}

```
