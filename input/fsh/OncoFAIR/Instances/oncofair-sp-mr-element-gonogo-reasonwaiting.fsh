Instance : oncofair-sp-mr-element-gonogo-reasonwaiting
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRElementGonogoReasonWaiting"
* description = "Search for the element goNogo reason waiting"
* code = #mr-element-gonogo-reasonwaiting
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-element-go-nogo').extension.where(url='GoNogoReasonWaiting').value"
* processingMode = #normal