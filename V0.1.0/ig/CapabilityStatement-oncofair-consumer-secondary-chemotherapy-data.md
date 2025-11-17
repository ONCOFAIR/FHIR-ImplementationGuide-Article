# OncoFAIR Consumer secondary chemotherapy data - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIR Consumer secondary chemotherapy data**

## CapabilityStatement: OncoFAIR Consumer secondary chemotherapy data (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/CapabilityStatement/oncofair-consumer-secondary-chemotherapy-data | *Version*:0.1.0 |
| Draft as of 2024-06-19 | *Computable Name*:OncoFAIRConsumerOfSecondaryChemotherapyData |

 
A structure or professional using chemotherapy data (complete or aggregated). These data may be used for a variety of purposes (pharmacovigilance, clinical studies, etc.). 

 [Raw OpenAPI-Swagger Definition file](oncofair-consumer-secondary-chemotherapy-data.openapi.json) | [Download](oncofair-consumer-secondary-chemotherapy-data.openapi.json) 

## OncoFAIR Consumer secondary chemotherapy data

* Implementation Guide Version: 0.1.0 
* FHIR Version: 5.0.0 
* Supported Formats: `xml`, `json`
* Published on: 2024-06-19 15:15:00+0100 
* Published by: KEREVAL and DOMASIA team of the Signal and Image Processing Laboratory (LTSI) 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

Search and consultation of aggregate data on chemotherapy

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
| [Patient](#Patient1-1) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-patient](StructureDefinition-oncofair-patient.md) | y | y |  |  | identifier |  | `Encounter:subject` |  |
| [Encounter](#Encounter1-2) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-encounter](StructureDefinition-oncofair-encounter.md) | y | y |  |  | identifier | `Encounter:subject` | `MedicationAdministration:encounter`,`MedicationRequest:encounter` |  |
| [Observation](#Observation1-3) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-observation](StructureDefinition-oncofair-observation.md) | y | y |  |  | clinical-code, clinical-date |  |  |  |
| [Medication](#Medication1-4) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medication](StructureDefinition-oncofair-medication.md) | y | y |  |  | _filter, _has, _id, clinical-code, medication-type |  | `MedicationRequest:medication`,`MedicationAdministration:medication` |  |
| [MedicationRequest](#MedicationRequest1-5) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-prescription](StructureDefinition-oncofair-medicationrequest-prescription.md)**Additional supported profiles:**  [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)  [OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md) | y | y |  |  | identifier, wording, indication, mr-prescription-validation-date, mr-type-elementprescription, element-form, status, element-route, element-site, combo-date, mr-date-time-prescription-start, mr-date-time-prescription-end, mr-element-gonogo-status, mr-element-gonogo-reasonwaiting, group-identifier, mr-element-frequency-posology, mr-element-duration-posology, mr-element-rate-posology, mr-element-quantity-posology, mr-prescribed-component-quantity, mr-component-substitution, mr-is-dosage-referent, mr-exempt-ltc, mr-component-solute | `MedicationRequest:encounter`,`MedicationRequest:medication` |  |  |
| [CarePlan](#CarePlan1-6) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-careplan](StructureDefinition-oncofair-careplan.md) | y | y |  |  | identifier, cp-title, status, cp-date-time-reference, indication | `MedicationRequest:basedOn` |  |  |
| [MedicationAdministration](#MedicationAdministration1-7) | [http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationadministration-element](StructureDefinition-oncofair-medicationadministration-element.md)**Additional supported profiles:**  [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md)  [OncoFAIR MedicationAdministration Report](StructureDefinition-oncofair-medicationadministration-report.md) | y | y |  |  | ma-method, ma-category, element-form, element-route, element-site, date, ma-comments, ma-planned-quantity, ma-prescribed-quantity, identifier, wording, performer | `MedicationAdministration:encounter`,`MedicationAdministration:medication` |  |  |

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
  "id" : "oncofair-consumer-secondary-chemotherapy-data",
  "url" : "http://oncofair-ig.kereval.cloud/CapabilityStatement/oncofair-consumer-secondary-chemotherapy-data",
  "version" : "0.1.0",
  "name" : "OncoFAIRConsumerOfSecondaryChemotherapyData",
  "title" : "OncoFAIR Consumer secondary chemotherapy data",
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
  "description" : "A structure or professional using chemotherapy data (complete or aggregated). These data may be used for a variety of purposes (pharmacovigilance, clinical studies, etc.). ",
  "kind" : "requirements",
  "fhirVersion" : "5.0.0",
  "format" : ["xml", "json"],
  "rest" : [
    {
      "mode" : "client",
      "documentation" : "Search and consultation of aggregate data on chemotherapy",
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
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier",
              "type" : "token",
              "documentation" : "Identifier of the patient"
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
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "Identifier of the patient's stay"
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
              "name" : "clinical-code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token",
              "documentation" : "Nature of additional information representing by LOINC code"
            },
            {
              "name" : "clinical-date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date",
              "documentation" : "Date and time of registration of the additional information"
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
              "name" : "_filter",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-filter",
              "type" : "special",
              "documentation" : "Filter search parameter that supports a more sophisticated search grammar. See [documentation](https://hl7.org/fhir/search_filter.html) for more details."
            },
            {
              "name" : "_has",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-has",
              "type" : "special",
              "documentation" : "Enables resources to be selected on the basis of the properties of the resources that refer to them (reverse chaining)."
            },
            {
              "name" : "_id",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Logical resource identifier"
            },
            {
              "name" : "clinical-code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token",
              "documentation" : "Identifies the prescribed component according to a nomenclature depending on the type"
            },
            {
              "name" : "medication-type",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-medication-type",
              "type" : "token",
              "documentation" : "Specifies whether the component prescribed is a speciality, a common name or any other product (pharmacopoeia)."
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
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "Identifier"
            },
            {
              "name" : "wording",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-wording",
              "type" : "string",
              "documentation" : "Wording of element/component"
            },
            {
              "name" : "indication",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-indication",
              "type" : "string",
              "documentation" : "Indications concerning the prescription item and the component prescribed"
            },
            {
              "name" : "mr-prescription-validation-date",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-prescription-validation-date",
              "type" : "date",
              "documentation" : "Date and time at which the prescriber considered the prescription validated"
            },
            {
              "name" : "mr-type-elementprescription",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-type-elementprescrption",
              "type" : "token",
              "documentation" : "Type of prescription element"
            },
            {
              "name" : "element-form",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-form",
              "type" : "token",
              "documentation" : "Pharmaceutical form of the prescription item"
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/medications-status",
              "type" : "token",
              "documentation" : "Indicates the status of the protocol from the prescriber's point of view"
            },
            {
              "name" : "element-route",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-route",
              "type" : "token",
              "documentation" : "Specifies the route of administration of the product"
            },
            {
              "name" : "element-site",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-site",
              "type" : "token",
              "documentation" : "Specifies, where appropriate, the exact point on the body where the product is to be applied to the patient"
            },
            {
              "name" : "combo-date",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationRequest-combo-date",
              "type" : "date",
              "documentation" : "Returns medication request to be administered on a specific date or within a date range"
            },
            {
              "name" : "mr-date-time-prescription-start",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-date-time-prescription-start",
              "type" : "date",
              "documentation" : "Effective start date and time of product prescription"
            },
            {
              "name" : "mr-date-time-prescription-end",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-date-time-prescription-end",
              "type" : "date",
              "documentation" : "Effective end date and time of product prescription"
            },
            {
              "name" : "mr-element-gonogo-status",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-gonogo-status",
              "type" : "token",
              "documentation" : "Communicates the conditional state of implementation of the prescription element according to a list of coded values"
            },
            {
              "name" : "mr-element-gonogo-reasonwaiting",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-gonogo-reasonwaiting",
              "type" : "token",
              "documentation" : "Describes the reason for the goNogo implementation status of the prescription element if the management option via the goNogo attribute is enabled"
            },
            {
              "name" : "group-identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationRequest-group-identifier",
              "type" : "token",
              "documentation" : "Identifier common to all components of the same prescription"
            },
            {
              "name" : "mr-element-frequency-posology",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-frequency-posology",
              "type" : "number",
              "documentation" : "Indicates the recurrence of the dosage. By default, every day"
            },
            {
              "name" : "mr-element-duration-posology",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-duration-posology",
              "type" : "number",
              "documentation" : "Duration of administration"
            },
            {
              "name" : "mr-element-rate-posology",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-rate-posology",
              "type" : "quantity",
              "documentation" : "Rate of administration in the case of injection"
            },
            {
              "name" : "mr-element-quantity-posology",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-element-quantity-posology",
              "type" : "quantity",
              "documentation" : "Quantity of the prescription element in the dosage"
            },
            {
              "name" : "mr-prescribed-component-quantity",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-prescribed-component-quantity",
              "type" : "quantity",
              "documentation" : "Quantity of the component prescribed in the prescription element"
            },
            {
              "name" : "mr-component-substitution",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-component-substitution",
              "type" : "token",
              "documentation" : "True if the component prescribed is declared non-substitutable in the prescription element"
            },
            {
              "name" : "mr-is-dosage-referent",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-is-dosage-referent",
              "type" : "token",
              "documentation" : "True if the component prescribed is the component that refers to the quantity or flow rate expressed in the dosage element when these are gravimetric (for example, mg or mg/h)."
            },
            {
              "name" : "mr-exempt-ltc",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-exempt-ltc",
              "type" : "token",
              "documentation" : "Identifier of the ALD for which the component prescribed is prescribed for one of the reasons for which the patient benefits from an exemption under article L324-1 of the CSS."
            },
            {
              "name" : "mr-component-solute",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-mr-component-solute",
              "type" : "token",
              "documentation" : "True if the component prescribed is solute in the prescription element"
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
          "searchInclude" : ["MedicationRequest:basedOn"],
          "searchParam" : [
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "Prescribed protocol identifier"
            },
            {
              "name" : "cp-title",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-cp-title",
              "type" : "string",
              "documentation" : "Wording of the prescribed protocol"
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/CarePlan-status",
              "type" : "token",
              "documentation" : "Indicates the status of the protocol from the prescriber's point of view"
            },
            {
              "name" : "cp-date-time-reference",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-cp-date-time-reference",
              "type" : "date",
              "documentation" : "Reference date and time of this prescribed protocol"
            },
            {
              "name" : "indication",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-indication",
              "type" : "string",
              "documentation" : "Indication concerning the prescribed protocol"
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
              "name" : "ma-method",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-method",
              "type" : "token",
              "documentation" : "Type of administration element"
            },
            {
              "name" : "ma-category",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-category",
              "type" : "token",
              "documentation" : "Code identifying the nature of the administration element"
            },
            {
              "name" : "element-form",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-form",
              "type" : "token",
              "documentation" : "Pharmaceutical form of the administration item"
            },
            {
              "name" : "element-route",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-route",
              "type" : "token",
              "documentation" : "Specifies the route of administration of the product"
            },
            {
              "name" : "element-site",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-element-site",
              "type" : "token",
              "documentation" : "Specifies, where applicable, the exact point on the body where the product is to be applied to the patient. By default, the place of administration is that shown in the prescription element associated with the administration element"
            },
            {
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/medications-date",
              "type" : "date",
              "documentation" : "Effective date and time for starting/ending administration of the administration element"
            },
            {
              "name" : "ma-comments",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-comments",
              "type" : "string",
              "documentation" : "Comments of component"
            },
            {
              "name" : "ma-planned-quantity",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-planned-quantity",
              "type" : "quantity",
              "documentation" : "Quantity of the component administered in the administration element that was intended to be administered to the patient"
            },
            {
              "name" : "ma-prescribed-quantity",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-ma-prescribed-quantity",
              "type" : "quantity",
              "documentation" : "Quantity actually administered to the patient or planned to be administered"
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "Identifier"
            },
            {
              "name" : "wording",
              "definition" : "http://oncofair-ig.kereval.cloud/SearchParameter/oncofair-sp-wording",
              "type" : "string",
              "documentation" : "Wording of component/element of administration"
            },
            {
              "name" : "performer",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationAdministration-performer",
              "type" : "reference",
              "documentation" : "Identification of the person who planned, administered or monitored the administration of the medicines represented by the administration elements"
            }
          ]
        }
      ]
    }
  ]
}

```
