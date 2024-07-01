/*Instance : oncofair-sp-mr-element-gonogo-status
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRElementGonogoStatus"
* description = "Search parameter to retrieve the element goNogo status"
* code = #mr-element-gonogo-status
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-element-go-nogo').extension.where(url='GoNogoStatus').value"
* processingMode = #normal*/