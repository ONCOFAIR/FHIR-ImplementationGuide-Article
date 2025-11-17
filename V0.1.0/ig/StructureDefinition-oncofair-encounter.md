# OncoFAIR Encounter - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR Encounter**

## Resource Profile: OncoFAIR Encounter 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-encounter | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIREncounter |

 
Must be taken in the generic sense, i.e. it goes beyond hospital admissions, outpatient consultations, dialysis sessions, day hospitals, etc. 
Doit être pris au sens générique, c’est-à-dire que cela dépasse les hospitalisations, consultations externes, séances de dialyse, hôpitaux de jour, etc … 

**Usages:**

* Refer to this Profile: [OncoFAIR MedicationAdministration Report](StructureDefinition-oncofair-medicationadministration-report.md) and [OncoFAIR MedicationRequest Prescription](StructureDefinition-oncofair-medicationrequest-prescription.md)
* Examples for this Profile: [Encounter/ExampleOncoFAIREncounter](Encounter-ExampleOncoFAIREncounter.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-encounter.csv), [Excel](StructureDefinition-oncofair-encounter.xlsx), [Schematron](StructureDefinition-oncofair-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-encounter",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-encounter",
  "version" : "0.1.0",
  "name" : "OncoFAIREncounter",
  "title" : "OncoFAIR Encounter",
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
  "description" : "Must be taken in the generic sense, i.e. it goes beyond hospital admissions, outpatient consultations, dialysis sessions, day hospitals, etc. \r\n\nDoit être pris au sens générique, c’est-à-dire que cela dépasse les hospitalisations, consultations externes, séances de dialyse, hôpitaux de jour, etc …",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-encounter",
      "name" : "Mapping du profil OncoFAIR Encounter"
    },
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-encounter",
            "map" : "Sejour"
          }
        ]
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "short" : "Identifier for the patient's stay",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-encounter",
            "map" : "idSejour"
          }
        ]
      },
      {
        "id" : "Encounter.identifier.value",
        "path" : "Encounter.identifier.value",
        "min" : 1
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "short" : "The patient involved in the encounter",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-patient"
            ]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-encounter",
            "map" : "Patient"
          }
        ]
      }
    ]
  }
}

```
