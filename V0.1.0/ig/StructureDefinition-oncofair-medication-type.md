# OncoFAIRMedicationType - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMedicationType**

## Extension: OncoFAIRMedicationType 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication-type | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMedicationType |

Extension created as part of OncoFAIR containing the type of component.

Extension créée dans le cadre d'OncoFAIR contenant le type de composant.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR Medication](StructureDefinition-oncofair-medication.md)
* Examples for this Extension: [Medication/ExampleOncoFAIRMedication](Medication-ExampleOncoFAIRMedication.md), [Medication/OncoFAIRMedication-fluoro-uracile](Medication-OncoFAIRMedication-fluoro-uracile.md), [Medication/OncoFAIRMedication-oxaliplatine](Medication-OncoFAIRMedication-oxaliplatine.md) and [Medication/OncoFAIRMedication-vehicule](Medication-OncoFAIRMedication-vehicule.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-medication-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-medication-type.csv), [Excel](StructureDefinition-oncofair-medication-type.xlsx), [Schematron](StructureDefinition-oncofair-medication-type.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-medication-type",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication-type",
  "version" : "0.1.0",
  "name" : "OncoFAIRMedicationType",
  "title" : "OncoFAIRMedicationType",
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
  "description" : "Extension created as part of OncoFAIR containing the type of component. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant le type de composant.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-medication-type",
      "name" : "Mapping de l'extension OncoFAIR Medication Type"
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
      "expression" : "Medication"
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
        "short" : "Specifies whether the component prescribed is a speciality, a common name or any other product (pharmacopoeia).",
        "definition" : "Extension created as part of OncoFAIR containing the type of component. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant le type de composant."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication-type"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/siph-typecomposant-oncofair-valueset"
        },
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medication-type",
            "map" : "typeComposant"
          }
        ]
      }
    ]
  }
}

```
