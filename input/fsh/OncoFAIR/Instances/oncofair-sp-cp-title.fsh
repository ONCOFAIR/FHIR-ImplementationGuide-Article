Instance : oncofair-sp-cp-title
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPCPTitle"
* description = "Search for the title of the prescribed protocol"
* code = #cp-title
* base = #CarePlan
* type = #string
// Testée sur fhirpath : 
* expression = "CarePlan.title"
* processingMode = #normal