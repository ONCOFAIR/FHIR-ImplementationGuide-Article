Instance : oncofair-sp-element-form
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPElementForm"
* description = "Search for the pharmaceutical form of the prescription/administration item"
* code = #element-form
* base[0] = #MedicationAdministration
* base[1] = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationAdministration.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-element-form').value | MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-element-form').value"
* processingMode = #normal