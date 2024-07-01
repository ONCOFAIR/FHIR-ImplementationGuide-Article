/*Instance : oncofair-sp-mr-component-substitution
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRComponentSubstitution"
* description = "Search parameter to retrieve the component substitution"
* code = #mr-component-substitution
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.substitution.allowed.as(boolean)"
* processingMode = #normal*/