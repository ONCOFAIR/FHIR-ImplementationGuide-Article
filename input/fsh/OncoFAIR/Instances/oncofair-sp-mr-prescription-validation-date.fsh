Instance : oncofair-sp-mr-prescription-validation-date
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRPrescriptionValidationDate"
* description = "Search for the prescription validation date of the prescription"
* code = #mr-prescription-validation-date
* base = #MedicationRequest
* type = #date
// Testée sur fhirpath : 
* expression = "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-prescription-validation-date').value"
* processingMode = #normal

* multipleOr = true
* multipleAnd = true
* comparator[0] = #eq
* comparator[+] = #ne
* comparator[+] = #gt
* comparator[+] = #lt
* comparator[+] = #ge
* comparator[+] = #le
* comparator[+] = #sa
* comparator[+] = #eb
* comparator[+] = #ap
