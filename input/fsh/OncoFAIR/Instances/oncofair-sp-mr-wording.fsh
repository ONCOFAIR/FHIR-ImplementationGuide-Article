Instance : oncofair-sp-mr-wording
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRWording"
* description = "Search parameter to retrieve the wording"
* code = #mr-wording
* base = #MedicationRequest
* type = #string
// Testée sur fhirpath : 
* expression = "MedicationRequest.note.where(id='wording').text"
* processingMode = #normal