Instance: OncoFAIRCarePlan-folfox
InstanceOf: OncoFAIRCarePlan
Title: "Example OncoFAIR CarePlan"
Description: "An example instance of an OncoFAIR CarePlan with required fields populated."
Usage: #example


* identifier.value = "Folfox"
* title = "Folfox"
* status = #active
* intent = #order
* subject = Reference(ExampleOncoFAIRPatient)

* note[indication].text = "Patient diagnosed with condition X requiring protocol Y."
* note[comments].text = "Patient responded well to previous treatments."

* extension[oncofair-cp-treatment].extension[treatmentRank].valueInteger = 1
* extension[oncofair-cp-treatment].extension[dayRank].valueInteger = 1
* extension[oncofair-cp-treatment].extension[dateTimeReference].valueDateTime = "2024-11-01T10:00:00Z"

* extension[oncofair-pharmacist-advice].extension[pharmacistValidation].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-statutvalidpharm-oncofair-codesystem"
* extension[oncofair-pharmacist-advice].extension[pharmacistValidation].valueCodeableConcept.coding[0].code = #VAL
* extension[oncofair-pharmacist-advice].extension[pharmacistValidation].valueCodeableConcept.coding[0].display = "validée"
