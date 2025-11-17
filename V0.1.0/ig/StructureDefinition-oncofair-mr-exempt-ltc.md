# OncoFAIRMRExemptLTC - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMRExemptLTC**

## Extension: OncoFAIRMRExemptLTC 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-exempt-ltc | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMRExemptLTC |

Extension created as part of OncoFAIR containing the notion of exemption.

Extension créée dans le cadre d'OncoFAIR contenant la notion d'exonération.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md)
* Examples for this Extension: [MedicationRequest/Component](MedicationRequest-Component.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-mr-exempt-ltc)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-mr-exempt-ltc.csv), [Excel](StructureDefinition-oncofair-mr-exempt-ltc.xlsx), [Schematron](StructureDefinition-oncofair-mr-exempt-ltc.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-mr-exempt-ltc",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-exempt-ltc",
  "version" : "0.1.0",
  "name" : "OncoFAIRMRExemptLTC",
  "title" : "OncoFAIRMRExemptLTC",
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
  "description" : "Extension created as part of OncoFAIR containing the notion of exemption. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la notion d'exonération.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-mr-exempt-ltc",
      "name" : "Mapping de l'extension OncoFAIR MR Exempt LTC"
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
        "short" : "Identifier of the ALD for which the component prescribed is prescribed for one of the reasons for which the patient benefits from an exemption under article L324-1 of the CSS.",
        "definition" : "Extension created as part of OncoFAIR containing the notion of exemption. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la notion d'exonération."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-exempt-ltc"
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
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/siph-listeald-oncofair-valueset"
        },
        "mapping" : [
          {
            "identity" : "mapping-oncofair-mr-exempt-ltc",
            "map" : "ALDExonerante"
          }
        ]
      }
    ]
  }
}

```
