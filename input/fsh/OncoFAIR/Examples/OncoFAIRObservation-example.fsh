Instance: ExampleOncoFAIRObservation
InstanceOf: OncoFAIRObservation
Title: "Example OncoFAIR Observation"
Description: "An example instance of OncoFAIR Observation."
Usage: #example

* status = #final
* code.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-renscomplement-oncofair-codesystem"
* code.coding[0].code = #POIDS
* code.coding[0].display = "Poids"
* effectiveDateTime = "2024-06-06T10:00:00Z"
* issued = "2024-06-06T10:15:00Z"
* valueQuantity.value = 70.0
* valueQuantity.unit = "kg"
* subject = Reference(ExampleOncoFAIRPatient)
