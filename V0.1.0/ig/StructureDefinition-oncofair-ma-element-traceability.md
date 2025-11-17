# OncoFAIRMAElementTraceability - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMAElementTraceability**

## Extension: OncoFAIRMAElementTraceability 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-traceability | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMAElementTraceability |

Extension created as part of OncoFAIR containing the batch and serial number of the administered component/administration element.

Extension créée dans le cadre d'OncoFAIR contenant le numéro de lot et de série du composant administré/élément d'administration.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md) and [OncoFAIR MedicationAdministration Element](StructureDefinition-oncofair-medicationadministration-element.md)
* Examples for this Extension: [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationComponent](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationComponent.md) and [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationElement](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationElement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-ma-element-traceability)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-ma-element-traceability.csv), [Excel](StructureDefinition-oncofair-ma-element-traceability.xlsx), [Schematron](StructureDefinition-oncofair-ma-element-traceability.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-ma-element-traceability",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-traceability",
  "version" : "0.1.0",
  "name" : "OncoFAIRMAElementTraceability",
  "title" : "OncoFAIRMAElementTraceability",
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
  "description" : "Extension created as part of OncoFAIR containing the batch and serial number of the administered component/administration element. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant le numéro de lot et de série du composant administré/élément d'administration.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-ma-element-traceability",
      "name" : "Mapping de l'extension OncoFAIR MA Element Traceability"
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
        "short" : "OncoFAIRMAElementTraceability",
        "definition" : "Extension created as part of OncoFAIR containing the batch and serial number of the administered component/administration element. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant le numéro de lot et de série du composant administré/élément d'administration."
      },
      {
        "id" : "Extension.extension:batchNumber",
        "path" : "Extension.extension",
        "sliceName" : "batchNumber",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-ma-element-traceability",
            "map" : "lot"
          }
        ]
      },
      {
        "id" : "Extension.extension:batchNumber.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:batchNumber.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "batchNumber"
      },
      {
        "id" : "Extension.extension:batchNumber.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Identification of the batch number of the administered component/administration element to ensure product traceability.",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:serialNumber",
        "path" : "Extension.extension",
        "sliceName" : "serialNumber",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-ma-element-traceability",
            "map" : "serie"
          }
        ]
      },
      {
        "id" : "Extension.extension:serialNumber.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:serialNumber.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "serialNumber"
      },
      {
        "id" : "Extension.extension:serialNumber.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Identification of the serial number of the administered component/administration element to ensure product traceability.",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-traceability"
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
