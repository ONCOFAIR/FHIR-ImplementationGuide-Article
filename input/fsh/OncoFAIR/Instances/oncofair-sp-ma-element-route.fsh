Instance : oncofair-sp-ma-element-route
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPElementRoute"
* description = "Search for the route of administration element"
* code = #element-route
* base = #MedicationAdministration
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationAdministration.dosage.route"
* processingMode = #normal