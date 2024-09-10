Instance : oncofair-sp-medication-type
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMedicationType"
* description = "Search for type of medication"
* code = #medication-type
* base = #Medication
* type = #token
// Testée sur fhirpath : 
* expression = "Medication.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-medication-type').value"
* processingMode = #normal
