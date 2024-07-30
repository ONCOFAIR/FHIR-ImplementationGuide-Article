Instance: ExampleOncoFAIRMedicationRequestElement2
InstanceOf: OncoFAIRMedicationRequestElement
Title: "Example OncoFAIR MedicationRequest Element"
Description: "Example instance of OncoFAIRMedicationRequestElement"
Usage: #example

* basedOn[+] = Reference(ExampleOncoFAIRMedicationRequestPrescription)
* basedOn[+] = Reference(ExampleOncoFAIRMedicationRequestElement)
* basedOn[=].extension[oncofair-mr-element-link-type].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-type-liaison-oncofair-codesystem"
* basedOn[=].extension[oncofair-mr-element-link-type].valueCodeableConcept.coding[0].code = #COMP 
* basedOn[=].extension[oncofair-mr-element-link-type].valueCodeableConcept.coding[0].display = "Complément"
* basedOn[+] = Reference(ExampleOncoFAIRCarePlan)

* device = Reference(ExampleOncoFAIRDeviceDefinition)

* requester = Reference(ExampleOncoFAIRPractitioner)

* subject = Reference(ExampleOncoFAIRPatient)

* intent = #proposal

* identifier.value = "654321"

* groupIdentifier.value = "121212"

* medication.concept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/concept-medication-oncofair-codesystem"
* medication.concept.coding[0].display = "element"
* medication.concept.coding[0].code = #element

* medication.reference = Reference(ExampleOncoFAIRMedication)

* status = #active

* priority = #urgent

* dosageInstruction[element].additionalInstruction.coding[0].system = "http://snomed.info/sct"
* dosageInstruction[element].additionalInstruction.coding[0].code = #311501008
* dosageInstruction[element].additionalInstruction.coding[0].display = "Half to one hour before food"

* dosageInstruction[posology].timing.repeat.duration = 1.0
* dosageInstruction[posology].timing.repeat.durationUnit = #s

* dosageInstruction[posology].doseAndRate.rateQuantity.value = 50
* dosageInstruction[posology].doseAndRate.rateQuantity.unit = "mg/h"
* dosageInstruction[posology].doseAndRate.rateQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[posology].doseAndRate.doseQuantity.value = 250
* dosageInstruction[posology].doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction[posology].doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[posology].timing.repeat.frequency = 2

* dosageInstruction[element].method.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-typeeltpla-oncofair-codesystem"
* dosageInstruction[element].method.coding[0].code = #MED
* dosageInstruction[element].method.coding[0].display = "Médicament"

* dosageInstruction[element].route.coding[0].system = "http://snomed.info/sct"
* dosageInstruction[element].route.coding[0].code = #26643006
* dosageInstruction[element].route.coding[0].display = "Oral route"

* dosageInstruction[element].site.coding[0].system = "http://snomed.info/sct" 
* dosageInstruction[element].site.coding[0].code = #49928004
* dosageInstruction[element].site.coding[0].display = "Throat"

* dosageInstruction[element].text = "Description of the dosage"

* dosageInstruction[element].timing.repeat.boundsPeriod.start = "2024-06-01T08:00:00Z"
* dosageInstruction[element].timing.repeat.boundsPeriod.end = "2024-06-01T09:00:00Z"

* dosageInstruction[element].timing.repeat.offset = 10

* effectiveDosePeriod.start = "2024-06-01T08:00:00Z"
* effectiveDosePeriod.end = "2024-06-01T09:00:00Z"

/*Pas présent en PN13, mais comme on utilise l'offset on dessus, obligatoire : */
* dosageInstruction[element].timing.repeat.when = #ACM

* note[wording].text = "Paracetamol 500mg Tablet"
* note[indication].text = "Prescribed for headaches"
* note[comments].text = "Administered after meals"

* extension[oncofair-element-form].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* extension[oncofair-element-form].valueCodeableConcept.coding[0].code = #385055001
* extension[oncofair-element-form].valueCodeableConcept.coding[0].display = "Tablet"

* extension[oncofair-mr-element-supply].valueBoolean = true
* extension[oncofair-mr-element-rank].valueInteger = 3
* extension[oncofair-mr-element-go-nogo].extension[GoNogoStatus].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-gonogo-oncofair-codesystem"
* extension[oncofair-mr-element-go-nogo].extension[GoNogoStatus].valueCodeableConcept.coding[0].code = #ATT
* extension[oncofair-mr-element-go-nogo].extension[GoNogoStatus].valueCodeableConcept.coding[0].display = "En attente"

* extension[oncofair-mr-element-go-nogo].extension[GoNogoReasonWaiting].valueCodeableConcept.text = "XXX"

* extension[oncofair-pharmacist-advice].extension[pharmacistValidation].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-statutvalidpharm-oncofair-codesystem"
* extension[oncofair-pharmacist-advice].extension[pharmacistValidation].valueCodeableConcept.coding[0].code = #VAL
* extension[oncofair-pharmacist-advice].extension[pharmacistValidation].valueCodeableConcept.coding[0].display = "validée"

* extension[oncofair-pharmacist-advice].extension[pharmacistProposal].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-natureproppharm-oncofair-codesystem"
* extension[oncofair-pharmacist-advice].extension[pharmacistProposal].valueCodeableConcept.coding[0].code = #SUG
* extension[oncofair-pharmacist-advice].extension[pharmacistProposal].valueCodeableConcept.coding[0].display = "Suggestion"
