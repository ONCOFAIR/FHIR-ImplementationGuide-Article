Instance : oncofair-sp-element-site
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPElementSite"
* description = "Search on the administration site of the element"
* code = #element-site
* base = #MedicationAdministration
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationAdministration.dosage.site | MedicationRequest.dosageInstruction.where(id='element').site"
* processingMode = #normal