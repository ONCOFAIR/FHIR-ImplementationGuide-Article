# OncoFAIRMRPrescriptionValidationDate - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMRPrescriptionValidationDate**

## Extension: OncoFAIRMRPrescriptionValidationDate 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-prescription-validation-date | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMRPrescriptionValidationDate |

Extension créée dans le cadre d'OncoFAIR contenant la date et heure de la prescription

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationRequest Prescription](StructureDefinition-oncofair-medicationrequest-prescription.md)
* Examples for this Extension: [MedicationRequest/Prescription](MedicationRequest-Prescription.md), [MedicationRequest/PrescriptionFolfox-difuseur](MedicationRequest-PrescriptionFolfox-difuseur.md) and [MedicationRequest/PrescriptionFolfox](MedicationRequest-PrescriptionFolfox.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-mr-prescription-validation-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-mr-prescription-validation-date.csv), [Excel](StructureDefinition-oncofair-mr-prescription-validation-date.xlsx), [Schematron](StructureDefinition-oncofair-mr-prescription-validation-date.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-mr-prescription-validation-date",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-prescription-validation-date",
  "version" : "0.1.0",
  "name" : "OncoFAIRMRPrescriptionValidationDate",
  "title" : "OncoFAIRMRPrescriptionValidationDate",
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
  "description" : "Extension créée dans le cadre d'OncoFAIR contenant la date et heure de la prescription",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-mr-prescription-validation-date",
      "name" : "Mapping de l'extension OncoFAIR MR Prescription Date"
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
        "short" : "Date and time at which the prescriber considered the prescription validated",
        "definition" : "Extension créée dans le cadre d'OncoFAIR contenant la date et heure de la prescription"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-prescription-validation-date"
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
            "identity" : "mapping-oncofair-mr-prescription-validation-date",
            "map" : "dateHeurePrescription"
          }
        ]
      }
    ]
  }
}

```
