Instance: ExampleOncoFAIRMedicationRequestComponent
InstanceOf: OncoFAIRMedicationRequestComponent
Title: "Example OncoFAIR MedicationRequest Component"
Description: "Example instance of OncoFAIRMedicationRequestComponent"
* status = #active
* intent = #order


* medication.concept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem"
* medication.concept.coding[0].display = "component"
* medication.concept.coding[0].code = #component

* medication.reference = Reference(ExampleOncoFAIRMedication)

* subject = Reference(ExampleOncoFAIRPatient)
* basedOn = Reference (ExampleOncoFAIRMedicationRequestElement)

* dosageInstruction.doseAndRate.doseQuantity.value = 250
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"

* substitution.allowedBoolean = false

* note[wording].text = "Prescribed component wording"
* note[comments].text = "Comments associated with the prescribed component"
* note[indication].text = "Specifies the reasons for prescribing this component"

* extension[oncofair-mr-exempt-ltc].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-listeald-oncofair-codesystem"
* extension[oncofair-mr-exempt-ltc].valueCodeableConcept.coding[0].code = #ALD1
* extension[oncofair-mr-exempt-ltc].valueCodeableConcept.coding[0].display = "Accident vasculaire cérébral invalidant" 

* extension[oncofair-mr-component-solute].valueBoolean = false

* extension[oncofair-mr-is-dosage-referent].valueBoolean = true