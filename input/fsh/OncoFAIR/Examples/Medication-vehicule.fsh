Instance: OncoFAIRMedication-vehicule
InstanceOf: OncoFAIRMedication
Title: "Example OncoFAIR Medication"
Description: "An example instance of an OncoFAIR Medication with required fields populated."
Usage: #example

* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #5000411000001105
* code.coding[0].display = "Sodium chloride 0.9% solution for injection 2litre bags"

* extension[oncofair-medication-type].valueCodeableConcept.coding.system[0] = "http://ltsi.univ-rennes.fr/CodeSystem/siph-typecomposant-oncofair-codesystem"
* extension[oncofair-medication-type].valueCodeableConcept.coding.code[0] = #PRAC 
* extension[oncofair-medication-type].valueCodeableConcept.coding.display[0] = "principe actif"
