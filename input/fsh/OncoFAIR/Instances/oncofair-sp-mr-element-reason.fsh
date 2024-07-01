Instance : oncofair-sp-mr-element-reason
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRElementReason"
* description = "Search parameter to retrieve the element reason"
* code = #mr-element-reason
* base = #MedicationRequest
* type = #string
// Testée sur fhirpath : 
* expression = "MedicationRequest.note.where(id='reason').text"
* processingMode = #normal