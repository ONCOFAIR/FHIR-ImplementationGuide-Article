Instance : oncofair-sp-mr-element-duration-posology
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRDurationPosology"
* description = "Search for duration of administration "
* code = #mr-duration-posology
* base = #MedicationRequest
* type = #number
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.timing.repeat.duration"
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
