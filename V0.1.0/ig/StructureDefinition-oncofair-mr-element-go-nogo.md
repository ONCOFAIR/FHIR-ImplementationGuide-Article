# OncoFAIRMRElementGoNogo - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMRElementGoNogo**

## Extension: OncoFAIRMRElementGoNogo 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-go-nogo | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMRElementGoNogo |

Extension created as part of OncoFAIR containing the concept of GoNogo.

Extension créée dans le cadre d'OncoFAIR contenant la notion de GoNogo.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)
* Examples for this Extension: [MedicationRequest/Element](MedicationRequest-Element.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-mr-element-go-nogo)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-mr-element-go-nogo.csv), [Excel](StructureDefinition-oncofair-mr-element-go-nogo.xlsx), [Schematron](StructureDefinition-oncofair-mr-element-go-nogo.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-mr-element-go-nogo",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-go-nogo",
  "version" : "0.1.0",
  "name" : "OncoFAIRMRElementGoNogo",
  "title" : "OncoFAIRMRElementGoNogo",
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
  "description" : "Extension created as part of OncoFAIR containing the concept of GoNogo. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la notion de GoNogo.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-mr-element-go-nogo",
      "name" : "Mapping de l'extension OncoFAIR MR Element GoNogo"
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
        "short" : "OncoFAIRMRElementGoNogo",
        "definition" : "Extension created as part of OncoFAIR containing the concept of GoNogo. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la notion de GoNogo."
      },
      {
        "id" : "Extension.extension:GoNogoStatus",
        "path" : "Extension.extension",
        "sliceName" : "GoNogoStatus",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-mr-element-go-nogo",
            "map" : "GoNogo"
          }
        ]
      },
      {
        "id" : "Extension.extension:GoNogoStatus.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:GoNogoStatus.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "GoNogoStatus"
      },
      {
        "id" : "Extension.extension:GoNogoStatus.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Communicates the conditional state of implementation of the prescription element according to a list of coded values",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/siph-gonogo-oncofair-valueset"
        }
      },
      {
        "id" : "Extension.extension:GoNogoReasonWaiting",
        "path" : "Extension.extension",
        "sliceName" : "GoNogoReasonWaiting",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-mr-element-go-nogo",
            "map" : "motifAttente"
          }
        ]
      },
      {
        "id" : "Extension.extension:GoNogoReasonWaiting.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:GoNogoReasonWaiting.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "GoNogoReasonWaiting"
      },
      {
        "id" : "Extension.extension:GoNogoReasonWaiting.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Describes the reason for the goNogo implementation status of the prescription element if the management option via the goNogo attribute is enabled",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-element-go-nogo"
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
