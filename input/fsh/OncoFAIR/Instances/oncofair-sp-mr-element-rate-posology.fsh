Instance : oncofair-sp-mr-element-rate-posology
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRRatePosology"
* description = "Search for rate of administration in the case of injection"
* code = #mr-element-rate-posology
* base = #MedicationRequest
* type = #quantity
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.doseAndRate.rate.as(Quantity)"
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
