Instance : oncofair-sp-mr-exempt-ltc
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRExemptLTC"
* description = "Search for identifier of the ALD for which the component prescribed is prescribed for one of the reasons for which the patient benefits from an exemption under article L324-1 of the CSS."
* code = #mr-exempt-ltc
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-exempt-ltc').value"
* processingMode = #normal