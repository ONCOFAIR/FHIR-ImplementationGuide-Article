# OncoFAIR Medication - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR Medication**

## Resource Profile: OncoFAIR Medication 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMedication |

 
This object describes the medication. 
Cet objet décrit le médicament 

**Usages:**

* Refer to this Profile: [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md) and [OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md)
* Examples for this Profile: [Medication/ExampleOncoFAIRMedication](Medication-ExampleOncoFAIRMedication.md), [Medication/OncoFAIRMedication-fluoro-uracile](Medication-OncoFAIRMedication-fluoro-uracile.md), [Medication/OncoFAIRMedication-oxaliplatine](Medication-OncoFAIRMedication-oxaliplatine.md) and [Medication/OncoFAIRMedication-vehicule](Medication-OncoFAIRMedication-vehicule.md)
* CapabilityStatements using this Profile: [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md), [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) and [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-medication.csv), [Excel](StructureDefinition-oncofair-medication.xlsx), [Schematron](StructureDefinition-oncofair-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-medication",
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication",
  "version" : "0.1.0",
  "name" : "OncoFAIRMedication",
  "title" : "OncoFAIR Medication",
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
  "description" : "This object describes the medication. \r\n\nCet objet décrit le médicament",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-medication",
      "name" : "Mapping du profil OncoFAIR Medication"
    },
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication",
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medication",
            "map" : "Composant"
          }
        ]
      },
      {
        "id" : "Medication.extension",
        "path" : "Medication.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Medication.extension:oncofair-medication-type",
        "path" : "Medication.extension",
        "sliceName" : "oncofair-medication-type",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication-type"
            ]
          }
        ]
      },
      {
        "id" : "Medication.code",
        "path" : "Medication.code",
        "short" : "Identifies the prescribed component according to a nomenclature depending on the type",
        "min" : 1,
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "mapping-oncofair-medication",
            "map" : "codeComposant"
          }
        ]
      }
    ]
  }
}

```
