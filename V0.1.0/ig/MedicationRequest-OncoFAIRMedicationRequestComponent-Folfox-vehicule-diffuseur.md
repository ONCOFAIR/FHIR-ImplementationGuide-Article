# Folfox Vehicle OncoFAIR MedicationRequest Component - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Folfox Vehicle OncoFAIR MedicationRequest Component**

## Example MedicationRequest: Folfox Vehicle OncoFAIR MedicationRequest Component

Profile: [OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md)

**OncoFAIRMRComponentSolute**: false

**OncoFAIRMRIsDosageReferent**: true

**identifier**: prescription-component-folfox-vehicle-difuseur

**basedOn**: [MedicationRequest: identifier = prescription-element-folfox-difuseur; groupIdentifier = folfox-example; status = active; intent = proposal; note = 5-fluoro-uracile,protocol folfox; effectiveDosePeriod = 2024-11-01 08:00:00+0000 --> 2024-11-30 09:00:00+0000](MedicationRequest-Element-folfox-diffuseur.md)

**groupIdentifier**: folfox-example

**status**: Active

**intent**: Order

### Medications

| | | |
| :--- | :--- | :--- |
| - | **Concept** | **Reference** |
| * | component | [Medication Sodium chloride](Medication-OncoFAIRMedication-vehicule.md) |

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**performer**: [Practitioner: identifier = 12345](Practitioner-ExampleOncoFAIRPractitioner.md)

### Devices

| | |
| :--- | :--- |
| - | **Reference** |
| * | [DeviceDefinition: identifier = Difuseur](DeviceDefinition-ExampleOncoFAIRDeviceDefinition-diffuseur.md) |

**note**: , , 

> 

Prescribed component wording


> 

Comments associated with the prescribed component


> 

Specifies the reasons for prescribing this component


> **dosageInstruction****site**:6894000**route**:Intravenous route**method**:Administer (administration method)

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1000 ml |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "OncoFAIRMedicationRequestComponent-Folfox-vehicule-diffuseur",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-component"
    ]
  },
  "extension" : [
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-component-solute",
      "valueBoolean" : false
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-is-dosage-referent",
      "valueBoolean" : true
    }
  ],
  "identifier" : [
    {
      "value" : "prescription-component-folfox-vehicle-difuseur"
    }
  ],
  "basedOn" : [
    {
      "reference" : "MedicationRequest/Element-folfox-diffuseur"
    }
  ],
  "groupIdentifier" : {
    "value" : "folfox-example"
  },
  "status" : "active",
  "intent" : "order",
  "medication" : {
    "concept" : {
      "coding" : [
        {
          "system" : "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem",
          "code" : "component",
          "display" : "component"
        }
      ]
    },
    "reference" : {
      "reference" : "Medication/OncoFAIRMedication-vehicule"
    }
  },
  "subject" : {
    "reference" : "Patient/ExampleOncoFAIRPatient"
  },
  "performer" : [
    {
      "reference" : "Practitioner/ExampleOncoFAIRPractitioner"
    }
  ],
  "device" : [
    {
      "reference" : {
        "reference" : "DeviceDefinition/ExampleOncoFAIRDeviceDefinition-diffuseur"
      }
    }
  ],
  "note" : [
    {
      "id" : "wording",
      "text" : "Prescribed component wording"
    },
    {
      "id" : "comments",
      "text" : "Comments associated with the prescribed component"
    },
    {
      "id" : "indication",
      "text" : "Specifies the reasons for prescribing this component"
    }
  ],
  "dosageInstruction" : [
    {
      "site" : {
        "coding" : [
          {
            "code" : "6894000"
          }
        ]
      },
      "route" : {
        "coding" : [
          {
            "code" : "47625008",
            "display" : "Intravenous route"
          }
        ]
      },
      "method" : {
        "coding" : [
          {
            "code" : "738990001",
            "display" : "Administer (administration method)"
          }
        ]
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1000,
            "unit" : "ml",
            "system" : "http://unitsofmeasure.org"
          }
        }
      ]
    }
  ],
  "substitution" : {
    "allowedBoolean" : false
  }
}

```
