Instance: PrescriptionFolfox
InstanceOf: OncoFAIRMedicationRequestPrescription
Title: "Folfox Vehicle OncoFAIR MedicationRequest Prescription"
Description: "An example instance of OncoFAIR MedicationRequest Prescription for folfox protocol at hospitals."
Usage: #example

* groupIdentifier.value = "folfox-example"
* identifier.value = "prescription-folfox-hospitals"

* status = #active
* intent = #order

* medication.concept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem"
* medication.concept.coding[0].display = "prescription"
* medication.concept.coding[0].code = #prescription

* subject = Reference (ExampleOncoFAIRPatient)
* encounter = Reference (ExampleOncoFAIREncounter)

* reason = Reference (ExampleOncoFAIRObservation)
* basedOn = Reference (OncoFAIRCarePlan-folfox)

* supportingInformation[accomodationUnit] = Reference (ExampleHealthcareServiceAccomodation)
* supportingInformation[medicalLiabiltyUnit] = Reference (ExampleHealthcareServiceMedicalLiability) 
* note.text = "This is a default comment on the prescription by the prescribing doctor."

* extension[oncofair-mr-prescription-validation-date].valueDateTime = "2024-06-01T08:00:00Z"