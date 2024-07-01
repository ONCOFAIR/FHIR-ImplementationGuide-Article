Instance : oncofair-sp-mr-prescribed-component-quantity
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRPrescribedComponentQuantity"
* description = "Search parameter to retrieve the prescribed component quantity"
* code = #mr-prescribed-component-quantity
* base = #MedicationRequest
* type = #quantity
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.doseAndRate.dose.as(Quantity)"
* processingMode = #normal