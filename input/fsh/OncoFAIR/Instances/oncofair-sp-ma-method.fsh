Instance : oncofair-sp-ma-method
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMAMethod"
* description = "Search for type of administration element"
* code = #ma-method
* base = #MedicationAdministration
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationAdministration.dosage.method"
* processingMode = #normal