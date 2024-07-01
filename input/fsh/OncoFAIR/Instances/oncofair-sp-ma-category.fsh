Instance : oncofair-sp-ma-category
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMACategory"
* description = "Search for code identifying the nature of the administration element"
* code = #ma-category
* base = #MedicationAdministration
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationAdministration.category.where(id='code')"
* processingMode = #normal