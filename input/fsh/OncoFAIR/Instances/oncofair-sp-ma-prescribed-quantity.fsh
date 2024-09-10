Instance : oncofair-sp-ma-prescribed-quantity
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMAPrescribedQuantity"
* description = "Search for the prescribed quantity of the administration element"
* code = #ma-prescribed-quantity
* base = #MedicationAdministration
* type = #quantity
// Testée sur fhirpath : 
* expression = "MedicationAdministration.dosage.dose"
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