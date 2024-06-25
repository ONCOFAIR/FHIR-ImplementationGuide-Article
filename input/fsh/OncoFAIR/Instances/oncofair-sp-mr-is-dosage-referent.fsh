Instance : oncofair-sp-mr-is-dosage-referent
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRIsDosageReferent"
* description = "Search parameter to XXX"
* code = #mr-is-dosage-referent
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-is-dosage-referent').value"
* processingMode = #normal