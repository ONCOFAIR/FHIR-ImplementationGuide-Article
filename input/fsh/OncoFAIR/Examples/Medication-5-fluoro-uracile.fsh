Instance: OncoFAIRMedication-fluoro-uracile
InstanceOf: OncoFAIRMedication
Title: "Example OncoFAIR Medication"
Description: "An example instance of an OncoFAIR Medication with required fields populated."
Usage: #example

* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #387172005
* code.coding[0].display = "5-fluorouracil"

* extension[oncofair-medication-type].valueCodeableConcept.coding.system[0] = "http://ltsi.univ-rennes.fr/CodeSystem/siph-typecomposant-oncofair-codesystem"
* extension[oncofair-medication-type].valueCodeableConcept.coding.code[0] = #PRAC 
* extension[oncofair-medication-type].valueCodeableConcept.coding.display[0] = "principe actif"
