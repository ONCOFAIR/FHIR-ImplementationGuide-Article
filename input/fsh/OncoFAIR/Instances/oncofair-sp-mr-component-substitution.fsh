Instance : oncofair-sp-mr-component-substitution
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRComponentSubstitution"
* description = "Search to find out if the component prescribed is declared non-substitutable in the prescription element "
* code = #mr-component-substitution
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.substitution.allowed.as(boolean)"
* processingMode = #normal