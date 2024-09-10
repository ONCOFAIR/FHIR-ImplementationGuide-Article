Instance: ExampleOncoFAIREncounter
InstanceOf: OncoFAIREncounter
Title: "Example OncoFAIR Encounter"
Description: "An example instance of an OncoFAIR Encounter with required fields populated."
Usage: #example

* subject = Reference(ExampleOncoFAIRPatient)
* identifier.value = "EN-987654"
* status = #in-progress
