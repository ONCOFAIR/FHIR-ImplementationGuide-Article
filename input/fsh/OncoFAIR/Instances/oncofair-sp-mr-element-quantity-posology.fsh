Instance : oncofair-sp-mr-element-quantity-posology
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRQuantityPosology"
* description = "Search for quantity of the prescription element in the dosage"
* code = #mr-quantity-posology
* base = #MedicationRequest
* type = #quantity
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.doseAndRate.dose.as(Quantity)"
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
