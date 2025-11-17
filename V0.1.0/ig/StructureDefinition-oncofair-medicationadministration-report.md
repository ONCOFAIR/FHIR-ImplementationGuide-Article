# OncoFAIR MedicationAdministration Report - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR MedicationAdministration Report**

## Resource Profile: OncoFAIR MedicationAdministration Report 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-report | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMedicationAdministrationReport |

 
Regroups all the prescription elements received on which the pharmacist expresses his validation. It also includes items suggested or resulting from a replacement proposed by the pharmacist. 
Regroupe l’ensemble des éléments de prescription reçus sur lesquels le pharmacien exprime sa validation. S’y ajoutent les éléments suggérés ou issus d’un remplacement proposé par le pharmacien. 

**Usages:**

* Refer to this Profile: [OncoFAIR MedicationAdministration Element](StructureDefinition-oncofair-medicationadministration-element.md)
* Examples for this Profile: [MedicationAdministration/ExampleOncoFAIRMedicationAdministrationReport](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationReport.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-medicationadministration-report)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-medicationadministration-report.csv), [Excel](StructureDefinition-oncofair-medicationadministration-report.xlsx), [Schematron](StructureDefinition-oncofair-medicationadministration-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-medicationadministration-report",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-report",
  "version" : "0.1.0",
  "name" : "OncoFAIRMedicationAdministrationReport",
  "title" : "OncoFAIR MedicationAdministration Report",
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
  "description" : "Regroups all the prescription elements received on which the pharmacist expresses his validation. It also includes items suggested or resulting from a replacement proposed by the pharmacist. \r\n\nRegroupe l’ensemble des éléments de prescription reçus sur lesquels le pharmacien exprime sa validation. S’y ajoutent les éléments suggérés ou issus d’un remplacement proposé par le pharmacien.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-medicationadministration-report",
      "name" : "Mapping du profil OncoFAIR MedicationAdministration Report"
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
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationAdministration",
        "path" : "MedicationAdministration",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationadministration-report",
            "map" : "CompteRenduAdministration"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.identifier",
        "path" : "MedicationAdministration.identifier",
        "short" : "External identifier of the administration report",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationadministration-report",
            "map" : "idCompteRenduAdministration"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.medication",
        "path" : "MedicationAdministration.medication",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://oncofair-ig.kereval.cloud/ValueSet/concept-medication-oncofair-valueset"
        }
      },
      {
        "id" : "MedicationAdministration.medication.concept",
        "path" : "MedicationAdministration.medication.concept",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "report"
            }
          ]
        }
      },
      {
        "id" : "MedicationAdministration.encounter",
        "path" : "MedicationAdministration.encounter",
        "short" : "The encounter linked to the administration report",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-encounter"
            ]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationadministration-report",
            "map" : "Sejour"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.performer",
        "path" : "MedicationAdministration.performer",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "MedicationAdministration.performer.actor",
        "path" : "MedicationAdministration.performer.actor",
        "short" : "Identification of the person who planned, administered or monitored the administration of the medicines represented by the administration elements",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medicationadministration-report",
            "map" : "idpAdministrateur"
          }
        ]
      }
    ]
  }
}

```
