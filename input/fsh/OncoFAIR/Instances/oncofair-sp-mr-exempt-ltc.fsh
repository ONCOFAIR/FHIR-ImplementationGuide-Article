Instance : oncofair-sp-mr-exempt-ltc
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRExemptLTC"
* description = "Search parameter to XXX"
* code = #mr-exempt-ltc
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-exempt-ltc').value"
* processingMode = #normal