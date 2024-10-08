Instance : oncofair-sp-element-route
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPElementRoute"
* description = "Search for the route of administration element"
* code = #element-route
* base[0] = #MedicationAdministration 
* base[1] = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationAdministration.dosage.route | MedicationRequest.dosageInstruction.where(id='element').route"
* processingMode = #normal