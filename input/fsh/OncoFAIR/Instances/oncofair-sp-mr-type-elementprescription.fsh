/*Instance : oncofair-sp-mr-type-elementprescrption
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRTypeElementPrescription"
* description = "Search parameter to retrieve the type of element prescription"
* code = #mr-type-elementprescrption
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.where(id='element').method"
* processingMode = #normal*/