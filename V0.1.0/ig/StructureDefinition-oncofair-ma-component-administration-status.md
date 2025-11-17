# OncoFAIRMAComponentAdministrationStatus - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMAComponentAdministrationStatus**

## Extension: OncoFAIRMAComponentAdministrationStatus 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-component-administration-status | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMAComponentAdministrationStatus |

Extension created as part of OncoFAIR containing the administration status of the administered component.

Extension créée dans le cadre d'OncoFAIR contenant le statut d'administration du composant administré.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md)
* Examples for this Extension: [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationComponent](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationComponent.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-ma-component-administration-status)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-ma-component-administration-status.csv), [Excel](StructureDefinition-oncofair-ma-component-administration-status.xlsx), [Schematron](StructureDefinition-oncofair-ma-component-administration-status.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-ma-component-administration-status",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-component-administration-status",
  "version" : "0.1.0",
  "name" : "OncoFAIRMAComponentAdministrationStatus",
  "title" : "OncoFAIRMAComponentAdministrationStatus",
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
  "description" : "Extension created as part of OncoFAIR containing the administration status of the administered component. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant le statut d'administration du composant administré.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-oncofair-ma-component-administration-status",
      "name" : "Mapping de l'extension OncoFAIR MA Component Administration Status"
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
        "short" : "Specifies whether the component administered was actually administered to the patient or not.",
        "definition" : "Extension created as part of OncoFAIR containing the administration status of the administered component. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant le statut d'administration du composant administré."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-component-administration-status"
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
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/siph-statutcomposantadm-oncofair-valueset"
        },
        "mapping" : [
          {
            "identity" : "mapping-oncofair-oncofair-ma-component-administration-status",
            "map" : "statut"
          }
        ]
      }
    ]
  }
}

```
