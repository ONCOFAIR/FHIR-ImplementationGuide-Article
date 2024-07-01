Instance : oncofair-sp-indication
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPIndication"
* description = "Search for indications concerning the prescription item and the component prescribed or prescribed protocol"
* code = #indication
* base = #MedicationRequest
* base = #CarePlan
* type = #string
// Testée sur fhirpath : 
* expression = "MedicationRequest.note.where(id='indication').text | CarePlan.note.where(id='indication').text"
* processingMode = #normal