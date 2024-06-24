Instance : oncofair-sp-mr-prescription-validation-date
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRMRSPPrescriptionValidationDate"
* description = "Search parameter to retrieve the prescription validation date"
* code = #mr-prescription-validation-date
* base = #MedicationRequest
* type = #date
// Testée sur fhirpath : 
* expression = "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-prescription-validation-date').value"
* processingMode = #normal
