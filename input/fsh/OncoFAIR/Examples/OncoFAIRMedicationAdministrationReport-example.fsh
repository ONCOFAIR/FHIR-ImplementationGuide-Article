Instance: ExampleOncoFAIRMedicationAdministrationReport
InstanceOf: OncoFAIRMedicationAdministrationReport
Title: "Example OncoFAIR MedicationAdministration Report"
Description: "An example instance of an OncoFAIR MedicationAdministration Report with required fields populated."

* encounter = Reference(ExampleOncoFAIREncounter)
* performer.actor = Reference(ExampleOncoFAIRPractitioner)
* identifier.value = "REP-123456"
* status = #in-progress
* subject = Reference(ExampleOncoFAIRPatient)

* medication.concept = #report
* medication.reference = Reference(ExampleOncoFAIRMedication)


/* Pas présent dans PN13 mais obligatoire dans MA*/
* occurenceDateTime = "2024-06-01T08:00:00Z"
