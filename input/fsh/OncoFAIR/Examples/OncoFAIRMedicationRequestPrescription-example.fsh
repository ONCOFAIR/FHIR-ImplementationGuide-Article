Instance: Prescription
InstanceOf: OncoFAIRMedicationRequestPrescription
Title: "Example OncoFAIR MedicationRequest Prescription"
Description: "Example instance of OncoFAIRMedicationRequestPrescription"
Usage: #example

* identifier.value = "example"

* status = #active
* intent = #order

* medication.concept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem"
* medication.concept.coding[0].display = "prescription"
* medication.concept.coding[0].code = #prescription

* subject = Reference (ExampleOncoFAIRPatient)
* encounter = Reference (ExampleOncoFAIREncounter)

* extension[oncofair-mr-prescription-validation-date].valueDateTime = "2024-06-01T08:00:00Z"