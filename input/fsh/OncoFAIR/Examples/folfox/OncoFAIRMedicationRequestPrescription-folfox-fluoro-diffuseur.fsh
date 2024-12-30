Instance: PrescriptionFolfox-fluoro-diff
InstanceOf: OncoFAIRMedicationRequestPrescription
Title: "Prescription difuseur OncoFAIR MedicationRequest Prescription"
Description: "An example instance of OncoFAIR MedicationRequest Prescription for folfox protocol."
Usage: #example

* groupIdentifier.value = "folfox-example"
* status = #active
* intent = #order

* medication.concept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem"
* medication.concept.coding[0].display = "prescription"
* medication.concept.coding[0].code = #prescription

* medication.reference = Reference(OncoFAIRMedication-fluoro-uracile)

* subject = Reference (ExampleOncoFAIRPatient)
* encounter = Reference (ExampleOncoFAIREncounter)

* reason = Reference (ExampleOncoFAIRObservation)
* basedOn = Reference (OncoFAIRCarePlan-folfox)

* supportingInformation[accomodationUnit] = Reference (ExampleHealthcareServiceAccomodation)
* supportingInformation[medicalLiabiltyUnit] = Reference (ExampleHealthcareServiceMedicalLiability) 
* identifier.value = "prescription-folfox-oxaliplatine"
* note.text = "This is a default comment on the prescription by the prescribing doctor."

* extension[oncofair-mr-prescription-validation-date].valueDateTime = "2024-06-01T08:00:00Z"