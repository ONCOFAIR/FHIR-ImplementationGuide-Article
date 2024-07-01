Instance : oncofair-sp-wording
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPWording"
* description = "Search for wording on the administration/prescribed element"
* code = #wording
* base[0] = #MedicationAdministration
* base[1] = #MedicationRequest
* type = #string
// Testée sur fhirpath : 
* expression = "note.where(id='wording').text"
* processingMode = #normal