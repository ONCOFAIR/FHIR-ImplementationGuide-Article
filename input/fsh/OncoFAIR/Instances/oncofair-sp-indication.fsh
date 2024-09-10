Instance : oncofair-sp-indication
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPIndication"
* description = "Search for indications concerning the prescription item and the component prescribed or prescribed protocol"
* code = #indication
* base[0] = #MedicationRequest
* base[1] = #CarePlan
* type = #string
// Testée sur fhirpath : 
* expression = "note.where(id='indication').text"
* processingMode = #normal