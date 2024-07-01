/*Instance : oncofair-sp-element-indication
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPElementIndication"
* description = "Search parameter to retrieve the element indication"
* code = #element-indication
* base = #MedicationRequest
* type = #string
// Testée sur fhirpath : 
* expression = "MedicationRequest.note.where(id='indication').text"
* processingMode = #normal*/