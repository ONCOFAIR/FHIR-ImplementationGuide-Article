Instance : oncofair-sp-mr-element-quantity-posology
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRQuantityPosology"
* description = "Search parameter to XXX"
* code = #mr-quantity-posology
* base = #MedicationRequest
* type = #number
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.doseAndRate.dose.as(Quantity)"
* processingMode = #normal