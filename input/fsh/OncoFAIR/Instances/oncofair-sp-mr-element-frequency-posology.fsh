Instance : oncofair-sp-mr-element-frequency-posology
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRFrequencyPosology"
* description = "Search parameter to XXX"
* code = #mr-frequency-posology
* base = #MedicationRequest
* type = #number
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.timing.repeat.frequency"
* processingMode = #normal