# OncoFAIRMAElementExpirationDate - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMAElementExpirationDate**

## Extension: OncoFAIRMAElementExpirationDate 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-expirationdate | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMAElementExpirationDate |

Extension created as part of OncoFAIR containing the expiry date of the component administered.

Extension créée dans le cadre d'OncoFAIR contenant la date de péremption du composant administré.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md) and [OncoFAIR MedicationAdministration Element](StructureDefinition-oncofair-medicationadministration-element.md)
* Examples for this Extension: [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationComponent](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationComponent.md) and [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationElement](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationElement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-ma-element-expirationdate)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-ma-element-expirationdate.csv), [Excel](StructureDefinition-oncofair-ma-element-expirationdate.xlsx), [Schematron](StructureDefinition-oncofair-ma-element-expirationdate.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-ma-element-expirationdate",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-expirationdate",
  "version" : "0.1.0",
  "name" : "OncoFAIRMAElementExpirationDate",
  "title" : "OncoFAIRMAElementExpirationDate",
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
  "description" : "Extension created as part of OncoFAIR containing the expiry date of the component administered. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la date de péremption du composant administré.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-ma-element-expirationdate",
      "name" : "Mapping de l'extension OncoFAIR MA Element ExpirationDate"
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
        "short" : "Expiry date of administered component",
        "definition" : "Extension created as part of OncoFAIR containing the expiry date of the component administered. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la date de péremption du composant administré."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-ma-element-expirationdate"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-ma-element-expirationdate",
            "map" : "datePeremption"
          }
        ]
      }
    ]
  }
}

```
