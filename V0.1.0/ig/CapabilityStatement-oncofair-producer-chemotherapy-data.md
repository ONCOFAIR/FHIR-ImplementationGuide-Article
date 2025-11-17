# OncoFAIR Producer Chemotherapy Data - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR Producer Chemotherapy Data**

## CapabilityStatement: OncoFAIR Producer Chemotherapy Data (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CapabilityStatement/oncofair-producer-chemotherapy-data | *Version*:0.1.0 |
| Draft as of 2024-06-19 | *Computable Name*:OncoFAIRProducerChemotherapyData |

 
Software for tracking chemotherapy information relating to a patient. The software generates chemotherapy data by means of data updates by medical staff. 

 [Raw OpenAPI-Swagger Definition file](oncofair-producer-chemotherapy-data.openapi.json) | [Download](oncofair-producer-chemotherapy-data.openapi.json) 

## OncoFAIR Producer Chemotherapy Data

* Implementation Guide Version: 0.1.0 
* FHIR Version: 5.0.0 
* Supported Formats: `xml`, `json`
* Published on: 2024-06-19 15:15:00+0100 
* Published by: KEREVAL and DOMASIA team of the Signal and Image Processing Laboratory (LTSI) 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: server

Software for tracking chemotherapy information relating to a patient

**Security**

Enable CORS: no

Security services supported:
`OAuth`

### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Patient](#Patient1-1) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-patient](StructureDefinition-oncofair-patient.md) | y | y |  |  | _lastUpdated |  | `Encounter:subject` |  |
| [Encounter](#Encounter1-2) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-encounter](StructureDefinition-oncofair-encounter.md) | y | y |  |  | _lastUpdated | `Encounter:subject` | `MedicationAdministration:encounter`,`MedicationRequest:encounter` |  |
| [Observation](#Observation1-3) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-observation](StructureDefinition-oncofair-observation.md) | y | y |  |  | _lastUpdated |  |  |  |
| [Medication](#Medication1-4) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication](StructureDefinition-oncofair-medication.md) | y | y |  |  | _lastUpdated |  | `MedicationRequest:medication`,`MedicationAdministration:medication` |  |
| [MedicationRequest](#MedicationRequest1-5) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-prescription](StructureDefinition-oncofair-medicationrequest-prescription.md)**Additional supported profiles:**  [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)  [OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md) | y | y |  |  | _lastUpdated | `MedicationRequest:encounter`,`MedicationRequest:medication` |  |  |
| [CarePlan](#CarePlan1-6) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-careplan](StructureDefinition-oncofair-careplan.md) | y | y |  |  | _lastUpdated | `CarePlan:basedOn` |  |  |
| [MedicationAdministration](#MedicationAdministration1-7) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-element](StructureDefinition-oncofair-medicationadministration-element.md)**Additional supported profiles:**  [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md)  [OncoFAIR MedicationAdministration Report](StructureDefinition-oncofair-medicationadministration-report.md) | y | y |  |  | _lastUpdated | `MedicationAdministration:encounter`,`MedicationAdministration:medication` |  |  |

-------

#### Resource Conformance: supported Patient

Base System Profile

[OncoFAIR Patient](StructureDefinition-oncofair-patient.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `search-type`, `read`.

Search Parameters


 

#### Resource Conformance: supported Encounter

Base System Profile

[OncoFAIR Encounter](StructureDefinition-oncofair-encounter.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `search-type`, `read`.

Search Parameters


 

#### Resource Conformance: supported Observation

Base System Profile

[OncoFAIR Observation](StructureDefinition-oncofair-observation.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `search-type`, `read`.

Search Parameters


 

#### Resource Conformance: supported Medication

Base System Profile

[OncoFAIR Medication](StructureDefinition-oncofair-medication.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `search-type`, `read`.

Search Parameters


 

#### Resource Conformance: supported MedicationRequest

Base System Profile

[OncoFAIR MedicationRequest Prescription](StructureDefinition-oncofair-medicationrequest-prescription.md)

Profile Conformance

**SHALL**

Reference Policy

Supported Profiles
[OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)
[OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md)

Interaction summary

* Supports `search-type`, `read`.

Search Parameters


 

#### Resource Conformance: supported CarePlan

Base System Profile

[OncoFAIR CarePlan](StructureDefinition-oncofair-careplan.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `search-type`, `read`.

Search Parameters


 

#### Resource Conformance: supported MedicationAdministration

Base System Profile

[OncoFAIR MedicationAdministration Element](StructureDefinition-oncofair-medicationadministration-element.md)

Profile Conformance

**SHALL**

Reference Policy

Supported Profiles
[OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md)
[OncoFAIR MedicationAdministration Report](StructureDefinition-oncofair-medicationadministration-report.md)

Interaction summary

* Supports `search-type`, `read`.

Search Parameters


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "oncofair-producer-chemotherapy-data",
  "url" : "http://oncofair-ig.kereval.cloud/CapabilityStatement/oncofair-producer-chemotherapy-data",
  "version" : "0.1.0",
  "name" : "OncoFAIRProducerChemotherapyData",
  "title" : "OncoFAIR Producer Chemotherapy Data",
  "status" : "draft",
  "experimental" : true,
  "date" : "2024-06-19T15:15:00+01:00",
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
  "description" : "Software for tracking chemotherapy information relating to a patient. The software generates chemotherapy data by means of data updates by medical staff.",
  "kind" : "requirements",
  "fhirVersion" : "5.0.0",
  "format" : ["xml", "json"],
  "rest" : [
    {
      "mode" : "server",
      "documentation" : "Software for tracking chemotherapy information relating to a patient",
      "security" : {
        "cors" : false,
        "service" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/restful-security-service",
                "code" : "OAuth"
              }
            ]
          }
        ]
      },
      "resource" : [
        {
          "type" : "Patient",
          "profile" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-patient",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchRevInclude" : ["Encounter:subject"],
          "searchParam" : [
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            }
          ]
        },
        {
          "type" : "Encounter",
          "profile" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-encounter",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchInclude" : ["Encounter:subject"],
          "searchRevInclude" : [
            "MedicationAdministration:encounter",
            "MedicationRequest:encounter"
          ],
          "searchParam" : [
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            }
          ]
        },
        {
          "type" : "Observation",
          "profile" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-observation",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchParam" : [
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            }
          ]
        },
        {
          "type" : "Medication",
          "profile" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchRevInclude" : [
            "MedicationRequest:medication",
            "MedicationAdministration:medication"
          ],
          "searchParam" : [
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            }
          ]
        },
        {
          "type" : "MedicationRequest",
          "profile" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-prescription",
          "supportedProfile" : [
            "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-element",
            "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-component"
          ],
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchInclude" : ["MedicationRequest:encounter", "MedicationRequest:medication"],
          "searchParam" : [
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            }
          ]
        },
        {
          "type" : "CarePlan",
          "profile" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-careplan",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchInclude" : ["CarePlan:basedOn"],
          "searchParam" : [
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            }
          ]
        },
        {
          "type" : "MedicationAdministration",
          "profile" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-element",
          "supportedProfile" : [
            "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-component",
            "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-report"
          ],
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchInclude" : [
            "MedicationAdministration:encounter",
            "MedicationAdministration:medication"
          ],
          "searchParam" : [
            {
              "name" : "_lastUpdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            }
          ]
        }
      ]
    }
  ]
}

```
