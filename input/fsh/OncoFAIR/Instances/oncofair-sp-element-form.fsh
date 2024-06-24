Instance : oncofair-sp-element-form
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPElementForm"
* description = "Search parameter to retrieve the element form"
* code = #element-form
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.where(id='element').route"
* processingMode = #normal