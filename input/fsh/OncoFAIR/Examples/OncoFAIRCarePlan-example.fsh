Instance: ExampleOncoFAIRCarePlan
InstanceOf: OncoFAIRCarePlan
Title: "Example OncoFAIR CarePlan"
Description: "An example instance of an OncoFAIR CarePlan with required fields populated."
Usage: #example


// OSIRIS

* subject = Reference(ExampleOncoFAIRPatient)
* category.coding[0].system = "http://terminology.hl7.org/CodeSystem/umls"
* category.coding[0].code = #C3665472
* category.coding[0].display = "Chemoterapy"

//* activity.plannedActivityReference = Reference(ExampleTumorPathologyEvent)

* supportingInfo[clinical-trial] = Reference (fhir-osiris-example-researchstudy)
* supportingInfo[tumor-pathology-event] = Reference (fhir-osiris-example-TumorPathologyEvent-instance-1)

* extension[treatment-line].valueInteger = 3

* period.start = "2023-01-01"
* period.end = "2023-01-02"


//OncoFAIR

* id = "protocol"
* identifier.value = "CP-123456"
* title = "Example Prescribed Protocol"
* status = #active
* intent = #order
* basedOn = Reference(ExampleOncoFAIRCarePlan)
* subject = Reference(ExampleOncoFAIRPatient)

* note[indication].text = "Patient diagnosed with condition X requiring protocol Y."
* note[comments].text = "Patient responded well to previous treatments."
* note[idFatherProtocol].text = "Parent Protocol ID: CP-654321"

* extension[oncofair-cp-treatment].extension[treatmentRank].valueInteger = 1
* extension[oncofair-cp-treatment].extension[dayRank].valueInteger = 1
* extension[oncofair-cp-treatment].extension[dateTimeReference].valueDateTime = "2024-05-29T10:00:00Z"

* extension[oncofair-pharmacist-advice].extension[pharmacistValidation].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-statutvalidpharm-oncofair-codesystem"
* extension[oncofair-pharmacist-advice].extension[pharmacistValidation].valueCodeableConcept.coding[0].code = #VAL
* extension[oncofair-pharmacist-advice].extension[pharmacistValidation].valueCodeableConcept.coding[0].display = "validée"

* extension[oncofair-pharmacist-advice].extension[pharmacistProposal].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-natureproppharm-oncofair-codesystem"
* extension[oncofair-pharmacist-advice].extension[pharmacistProposal].valueCodeableConcept.coding[0].code = #SUG
* extension[oncofair-pharmacist-advice].extension[pharmacistProposal].valueCodeableConcept.coding[0].display = "Suggestion"