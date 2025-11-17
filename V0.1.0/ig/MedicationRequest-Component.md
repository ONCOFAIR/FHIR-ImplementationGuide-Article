# Example OncoFAIR MedicationRequest Component - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OncoFAIR MedicationRequest Component**

## Example MedicationRequest: Example OncoFAIR MedicationRequest Component

Profile: [OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md)

**OncoFAIRMRExemptLTC**: Accident vasculaire cérébral invalidant

**OncoFAIRMRComponentSolute**: false

**OncoFAIRMRIsDosageReferent**: true

**basedOn**: [MedicationRequest: extension = Tablet,true,3,,; identifier = 654321; groupIdentifier = 121212; status = active; intent = proposal; priority = urgent; note = Paracetamol 500mg Tablet,Prescribed for headaches,Administered after meals; effectiveDosePeriod = 2024-06-01 08:00:00+0000 --> 2024-06-01 09:00:00+0000](MedicationRequest-Element.md)

**status**: Active

**intent**: Order

### Medications

| | | |
| :--- | :--- | :--- |
| - | **Concept** | **Reference** |
| * | component | [Medication Ibuprofen](Medication-ExampleOncoFAIRMedication.md) |

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( 123456789)](Patient-ExampleOncoFAIRPatient.md)

**note**: , , 

> 

Prescribed component wording


> 

Comments associated with the prescribed component


> 

Specifies the reasons for prescribing this component


> **dosageInstruction**

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 250 mg |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "Component",
  "meta" : {
    "profile" : [
      "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-medicationrequest-component"
    ]
  },
  "extension" : [
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-exempt-ltc",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://ltsi.univ-rennes.fr/CodeSystem/siph-listeald-oncofair-codesystem",
            "code" : "ALD1",
            "display" : "Accident vasculaire cérébral invalidant"
          }
        ]
      }
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-component-solute",
      "valueBoolean" : false
    },
    {
      "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-is-dosage-referent",
      "valueBoolean" : true
    }
  ],
  "basedOn" : [
    {
      "reference" : "MedicationRequest/Element"
    }
  ],
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
      "reference" : "Medication/ExampleOncoFAIRMedication"
    }
  },
  "subject" : {
    "reference" : "Patient/ExampleOncoFAIRPatient"
  },
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
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 250,
            "unit" : "mg",
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
