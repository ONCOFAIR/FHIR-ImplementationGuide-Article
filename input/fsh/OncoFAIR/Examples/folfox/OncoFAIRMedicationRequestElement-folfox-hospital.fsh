Instance: Element-folfox
InstanceOf: OncoFAIRMedicationRequestElement
Title: "Folfox OncoFAIR MedicationRequest Element"
Description: "Example instance of OncoFAIRMedicationRequestElement for folfox protocol"
Usage: #example

* basedOn[+] = Reference(PrescriptionFolfox-vehicule)
* basedOn[+] = Reference(PrescriptionFolfox-uracile)
* basedOn[+] = Reference(PrescriptionFolfox-oxaliplatine)

* basedOn[+] = Reference(OncoFAIRMedicationRequestComponent-Folfox-oxaliplatine)
* basedOn[+] = Reference(OncoFAIRMedicationRequestComponent-Folfox-fluoro)
* basedOn[+] = Reference(OncoFAIRMedicationRequestComponent-Folfox-vehicule)


* basedOn[=].extension[oncofair-mr-element-link-type].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-type-liaison-oncofair-codesystem"
* basedOn[=].extension[oncofair-mr-element-link-type].valueCodeableConcept.coding[0].code = #COMP 
* basedOn[=].extension[oncofair-mr-element-link-type].valueCodeableConcept.coding[0].display = "Complément"

* basedOn[+] = Reference(ExampleOncoFAIRCarePlan-folfox)

* device.reference = Reference(ExampleOncoFAIRDeviceDefinition-Perfusion)

* requester = Reference(ExampleOncoFAIRPractitioner)

* subject = Reference(ExampleOncoFAIRPatient)

* intent = #proposal

* identifier.value = "123456-folfox-1"

* groupIdentifier.value = "folfox-example"

* medication.concept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem"
* medication.concept.coding[0].display = "element"
* medication.concept.coding[0].code = #element

* medication.reference = Reference(OncoFAIRMedication-fluoro-uracile)

* status = #active

* dosageInstruction[element].patientInstruction = "Boire beaucoup d'eau"

* dosageInstruction[element].timing.repeat.boundsPeriod.start = "2024-11-01T08:00:00Z"
* dosageInstruction[element].timing.repeat.boundsPeriod.end = "2024-11-30T11:00:00Z"

* dosageInstruction[element].method.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-typeeltpla-oncofair-codesystem"
* dosageInstruction[element].method.coding[0].code = #PERF
* dosageInstruction[element].method.coding[0].display = "Perfusion"

* dosageInstruction[element].route.coding[0].system = "http://snomed.info/sct"
* dosageInstruction[element].route.coding[0].code = #47625008
* dosageInstruction[element].route.coding[0].display = "Intravenous route"

* dosageInstruction[posology].doseAndRate.doseQuantity.value = 1
* dosageInstruction[posology].doseAndRate.doseQuantity.unit = "dose"

* dosageInstruction[posology].doseAndRate.rateRatio.numerator.value = 1
* dosageInstruction[posology].doseAndRate.rateRatio.denominator.value = 3
* dosageInstruction[posology].doseAndRate.rateRatio.denominator.unit = "heure"

* dosageInstruction[posology].timing.repeat.count = 2
* dosageInstruction[posology].timing.repeat.duration = 3
* dosageInstruction[posology].timing.repeat.durationUnit = #h
* dosageInstruction[posology].timing.repeat.frequency = 2 
* dosageInstruction[posology].timing.repeat.period = 30
* dosageInstruction[posology].timing.repeat.periodUnit = #d

* effectiveDosePeriod.start = "2024-11-01T08:00:00Z"
* effectiveDosePeriod.end = "2024-11-30T09:00:00Z"


* note[wording].text = "5-fluoro-uracile"
* note[indication].text = "protocol folfox"
