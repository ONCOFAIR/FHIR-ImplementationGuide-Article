/*Instance : oncofair-sp-mr-element-duration-posology
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRDurationPosology"
* description = "Search parameter to XXX"
* code = #mr-duration-posology
* base = #MedicationRequest
* type = #number
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.timing.repeat.duration"
* processingMode = #normal*/