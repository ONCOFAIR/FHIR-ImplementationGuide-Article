Instance: OncoFAIRMedicationRequestComponent-Folfox-oxaliplatine
InstanceOf: OncoFAIRMedicationRequestComponent
Title: "Example OncoFAIR MedicationRequest Component"
Description: "Example instance of OncoFAIRMedicationRequestComponent"
Usage: #example
* status = #active
* intent = #order


* medication.concept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem"
* medication.concept.coding[0].display = "component"
* medication.concept.coding[0].code = #component
* medication.reference = Reference(OncoFAIRMedication-oxaliplatine)

* groupIdentifier.value = "folfox-example"

* subject = Reference(ExampleOncoFAIRPatient)
* basedOn = Reference (OncoFAIRMedicationRequestElement-folfox)
* performer = Reference (ExampleOncoFAIRPractitioner)
* device.reference = Reference (ExampleOncoFAIRDeviceDefinition-perfusion)

* dosageInstruction.site = #6894000
* dosageInstruction.route = #47625008 "Intravenous route"
* dosageInstruction.method = #738990001 "Administer (administration method)"

* dosageInstruction.doseAndRate.doseQuantity.value = 20
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"

* substitution.allowedBoolean = false

* note[wording].text = "Prescribed component wording"
* note[comments].text = "Comments associated with the prescribed component"
* note[indication].text = "Specifies the reasons for prescribing this component"

* extension[oncofair-mr-component-solute].valueBoolean = true
