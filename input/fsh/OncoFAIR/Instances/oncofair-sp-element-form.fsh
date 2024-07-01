Instance : oncofair-sp-element-form
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPElementForm"
* description = "Search for the form of the administrative element"
* code = #element-form
* base = #MedicationAdministration
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationAdministration.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-element-form').value"
* processingMode = #normal