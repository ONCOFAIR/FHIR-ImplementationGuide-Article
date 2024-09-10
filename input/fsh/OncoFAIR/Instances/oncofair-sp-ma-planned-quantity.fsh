Instance : oncofair-sp-ma-planned-quantity
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMAPlannedQuantity"
* description = "Search for the expected quantity of the administration element"
* code = #ma-planned-quantity
* base = #MedicationAdministration
* type = #quantity
// Testée sur fhirpath : 
* expression = "MedicationAdministration.dosage.rate.as(Quantity)"
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