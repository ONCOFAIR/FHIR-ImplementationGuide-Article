Instance : oncofair-sp-cp-date-time-reference
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPCPDateTimeReference"
* description = "Search for the reference date and time of the prescribed protocol"
* code = #cp-date-time-reference
* base = #CarePlan
* type = #date
// Testée sur fhirpath : 
* expression = "CarePlan.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-cp-treatment').extension.where(url='dateTimeReference').value"
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
