Instance : oncofair-sp-mr-component-solute
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRComponentSolute"
* description = "Search to find out if the component prescribed is solute in the prescription element"
* code = #mr-component-solute
* base = #MedicationRequest
* type = #token
// Testée sur fhirpath : 
* expression = "MedicationRequest.extension.where(url='http://ltsi.univ-rennes.fr/StructureDefinition/oncofair-mr-component-solute').value"
* processingMode = #normal