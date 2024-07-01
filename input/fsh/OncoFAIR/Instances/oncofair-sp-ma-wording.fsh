Instance : oncofair-sp-ma-wording
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMAWording"
* description = "Search for wording on the administration element"
* code = #ma-wording
* base = #MedicationAdministration
* type = #string
// Testée sur fhirpath : 
* expression = "MedicationAdministration.note.where(id='wording').text"
* processingMode = #normal