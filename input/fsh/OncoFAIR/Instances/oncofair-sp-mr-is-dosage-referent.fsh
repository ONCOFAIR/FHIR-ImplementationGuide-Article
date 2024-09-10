Instance : oncofair-sp-mr-is-dosage-referent
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRIsDosageReferent"
* description = "Search to find out if the component prescribed is the component that refers to the quantity or flow rate expressed in the dosage element when these are gravimetric (for example, mg or mg/h)."
* code = #mr-is-dosage-referent
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-is-dosage-referent').value"
* processingMode = #normal