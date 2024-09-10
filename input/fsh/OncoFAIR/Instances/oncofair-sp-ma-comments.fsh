Instance : oncofair-sp-ma-comments
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMAComments"
* description = "Search for comments on the administration element"
* code = #ma-comments
* base = #MedicationAdministration
* type = #string
// Testée sur fhirpath : 
* expression = "MedicationAdministration.note.where(id='comments').text"
* processingMode = #normal