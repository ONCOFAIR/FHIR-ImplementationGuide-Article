# OncoFAIR Patient - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR Patient**

## Resource Profile: OncoFAIR Patient 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-patient | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRPatient |

 
Contains the patient's identity details needed to ensure that the prescription is properly taken into account. 
Contient les informations d’identité du patient nécessaires à la bonne prise en compte de la prescription médicamenteuse. 

**Usages:**

* Refer to this Profile: [OncoFAIR Encounter](StructureDefinition-oncofair-encounter.md) and [Tumor Pathology Event](StructureDefinition-tumor-pathology-event.md)
* Examples for this Profile: [Patient/ExampleOncoFAIRPatient](Patient-ExampleOncoFAIRPatient.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-patient.csv), [Excel](StructureDefinition-oncofair-patient.xlsx), [Schematron](StructureDefinition-oncofair-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-patient",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-patient",
  "version" : "0.1.0",
  "name" : "OncoFAIRPatient",
  "title" : "OncoFAIR Patient",
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
  "description" : "Contains the patient's identity details needed to ensure that the prescription is properly taken into account. \r\n\nContient les informations d’identité du patient nécessaires à la bonne prise en compte de la prescription médicamenteuse.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-patient",
      "name" : "Mapping du profil OncoFAIR Patient"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "interface",
      "uri" : "http://hl7.org/fhir/interface",
      "name" : "Interface Pattern"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-patient",
            "map" : "Patient"
          }
        ]
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-patient",
            "map" : "IPP"
          }
        ]
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "short" : "Permanent Patient Identifier"
      }
    ]
  }
}

```
