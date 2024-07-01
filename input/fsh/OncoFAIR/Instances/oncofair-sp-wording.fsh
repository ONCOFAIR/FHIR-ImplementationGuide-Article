Instance : oncofair-sp-wording
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPWording"
* description = "Search for wording on the administration/prescribed element"
* code = #wording
* base = #MedicationAdministration
* base = #MedicationRequest
* type = #string
// Testée sur fhirpath : 
* expression = "MedicationAdministration.note.where(id='wording').text | MedicationRequest.note.where(id='wording').text"
* processingMode = #normal