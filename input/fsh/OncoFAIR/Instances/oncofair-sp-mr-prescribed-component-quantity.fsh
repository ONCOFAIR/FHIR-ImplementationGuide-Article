Instance : oncofair-sp-mr-prescribed-component-quantity
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRPrescribedComponentQuantity"
* description = "Search for the prescribed component quantity"
* code = #mr-prescribed-component-quantity
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
