/*Instance: ExampleOncoFAIRCarePlan
InstanceOf: OncoFAIRCarePlan
Title: "Example OncoFAIR CarePlan"
Description: "An example instance of an OncoFAIR CarePlan with required fields populated."

* identifier.value = "CP-123456"
* title = "Example Prescribed Protocol"
* status = #active
* intent = #order
* subject = Reference(ExampleOncoFAIRPatient)

* note[indication].text = "Patient diagnosed with condition X requiring protocol Y."
* note[comments].text = "Patient responded well to previous treatments."
* note[idFatherProtocol].text = "Parent Protocol ID: CP-654321"

* extension[oncofair-cp-treatment].extension[treatmentRank].valueInteger = 1
* extension[oncofair-cp-treatment].extension[dayRank].valueInteger = 1
* extension[oncofair-cp-treatment].extension[dateTimeReference].valueDateTime = "2024-05-29T10:00:00Z"

* extension[oncofair-pharmacist-advice].extension[pharmacistValidation].valueCodeableConcept.text = "Validated"
* extension[oncofair-pharmacist-advice].extension[pharmacistProposal].valueCodeableConcept.text = "Consider adding supplementary medication Z."*/