# OncoFAIRPharmacistAdvice - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRPharmacistAdvice**

## Extension: OncoFAIRPharmacistAdvice 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-pharmacist-advice | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRPharmacistAdvice |

Extension created as part of OncoFAIR containing the validation and pharmaceutical proposal.

Extension créée dans le cadre d'OncoFAIR contenant la validation et proposition pharmaceutique.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR CarePlan](StructureDefinition-oncofair-careplan.md) and [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)
* Examples for this Extension: [CarePlan/ExampleOncoFAIRCarePlan](CarePlan-ExampleOncoFAIRCarePlan.md), [CarePlan/OncoFAIRCarePlan-folfox](CarePlan-OncoFAIRCarePlan-folfox.md) and [MedicationRequest/Element](MedicationRequest-Element.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-pharmacist-advice)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-pharmacist-advice.csv), [Excel](StructureDefinition-oncofair-pharmacist-advice.xlsx), [Schematron](StructureDefinition-oncofair-pharmacist-advice.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-pharmacist-advice",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-pharmacist-advice",
  "version" : "0.1.0",
  "name" : "OncoFAIRPharmacistAdvice",
  "title" : "OncoFAIRPharmacistAdvice",
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
  "description" : "Extension created as part of OncoFAIR containing the validation and pharmaceutical proposal. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la validation et proposition pharmaceutique.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-pharmacist-advice",
      "name" : "Mapping de l'extension OncoFAIR Pharmacist Advice"
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
      "expression" : "CarePlan"
    },
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
        "short" : "OncoFAIRPharmacistAdvice",
        "definition" : "Extension created as part of OncoFAIR containing the validation and pharmaceutical proposal. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la validation et proposition pharmaceutique."
      },
      {
        "id" : "Extension.extension:pharmacistValidation",
        "path" : "Extension.extension",
        "sliceName" : "pharmacistValidation",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-pharmacist-advice",
            "map" : "validationPharmaceutique"
          }
        ]
      },
      {
        "id" : "Extension.extension:pharmacistValidation.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:pharmacistValidation.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "pharmacistValidation"
      },
      {
        "id" : "Extension.extension:pharmacistValidation.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Indicates the pharmacist's opinion on a prescription/prescribed protocol sent to him/her",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/siph-statutvalidpharm-oncofair-valueset"
        }
      },
      {
        "id" : "Extension.extension:pharmacistProposal",
        "path" : "Extension.extension",
        "sliceName" : "pharmacistProposal",
        "min" : 0,
        "max" : "1",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-pharmacist-advice",
            "map" : "propositionPharmaceutique"
          }
        ]
      },
      {
        "id" : "Extension.extension:pharmacistProposal.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:pharmacistProposal.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "pharmacistProposal"
      },
      {
        "id" : "Extension.extension:pharmacistProposal.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Characterises a prescription/prescribed protocol added by the pharmacist, either as a proposed replacement or as a suggestion.",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/siph-natureproppharm-oncofair-valueset"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-pharmacist-advice"
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
