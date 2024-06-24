Instance : oncofair-sp-element-site
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPElementSite"
* description = "Search parameter to retrieve the element site"
* code = #element-site
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.where(id='element').site"
* processingMode = #normal