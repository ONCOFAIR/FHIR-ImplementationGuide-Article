Instance : oncofair-sp-medication-type
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMedicationType"
* description = "Search parameter to retrieve the type of medication"
* code = #medication-type
* base = #Medication
* type = #token
* expression = "Medication.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-medication-type').value as CodeableConcept"
* processingMode = #normal
