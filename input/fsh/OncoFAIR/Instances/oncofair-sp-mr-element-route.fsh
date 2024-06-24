Instance : oncofair-sp-element-route
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPElementRoute"
* description = "Search parameter to retrieve the element route"
* code = #element-route
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-element-form').value"
* processingMode = #normal