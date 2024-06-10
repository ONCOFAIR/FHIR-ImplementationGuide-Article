Instance: ExampleOncoFAIRMedicationRequestPrescription
InstanceOf: OncoFAIRMedicationRequestPrescription
Title: "Example OncoFAIR MedicationRequest Prescription"
Description: "An example instance of OncoFAIR MedicationRequest Prescription."

* status = #active
* intent = #order
* medication.concept.coding.code = #prescription
* medication.reference = Reference(ExampleOncoFAIRMedication)

* subject = Reference (ExampleOncoFAIRPatient)
* encounter = Reference (ExampleOncoFAIREncounter)

* reason = Reference (ExampleOncoFAIRObservation)
* basedOn = Reference (ExampleOncoFAIRCarePlan)

/** supportingInformation[accomodationUnit].reference = "HealthcareService" 
* supportingInformation[accomodationUnit].reference = "HealthcareService" */
* identifier.value = "12345"
* note.text = "This is a default comment on the prescription by the prescribing doctor."

* extension[oncofair-mr-prescription-validation-date].valueDateTime = "2024-06-01T08:00:00Z"