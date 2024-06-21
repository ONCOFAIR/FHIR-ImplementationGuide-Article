Instance : oncofair-sp-mr-type-elementprescrption
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRMRSPTypeElementPrescription"
* description = "Search parameter to retrieve the type of element prescription"
* code = #mr-type-elementprescrption
* base = #MedicationRequest
* type = #token
* expression = "MedicationRequest.dosageInstruction.method"
* processingMode = #normal