/*Instance : oncofair-sp-mr-element-rate-posology
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRRatePosology"
* description = "Search parameter to XXX"
* code = #mr-element-rate-posology
* base = #MedicationRequest
* type = #number
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.doseAndRate.rate.as(Quantity)"
* processingMode = #normal*/