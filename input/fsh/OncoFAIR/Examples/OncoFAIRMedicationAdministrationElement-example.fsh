Instance: ExampleOncoFAIRMedicationAdministrationElement
InstanceOf: OncoFAIRMedicationAdministrationElement
Title: "Example OncoFAIR MedicationAdministration Element"
Description: "An example instance of an OncoFAIR MedicationAdministration Element with required fields populated."

* partOf = Reference(ExampleOncoFAIRMedicationAdministrationReport)

* medication.concept = #element
* medication.reference = Reference(ExampleOncoFAIRMedication)

* subject = Reference(ExampleOncoFAIRPatient)
* status = #in-progress
* device = Reference(ExampleOncoFAIRDevice)

* request.identifier.value = "RX-123456"

* identifier.value = "ADM-123456"

* occurencePeriod.start = "2024-06-01T08:00:00Z"
* occurencePeriod.end = "2024-06-01T09:00:00Z"

* dosage.method.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-typeeltpla-oncofair-codesystem"
* dosage.method.coding[0].code = #MED
* dosage.method.coding[0].display = "Médicament"

* dosage.route.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/snomedct"
* dosage.route.coding[0].code = #26643006
* dosage.route.coding[0].display = "Oral route"

* dosage.site.coding[0].system = "http://snomed.info/sct"
* dosage.site.coding[0].code = #49928004
* dosage.site.coding[0].display = "Throat"

/* Element obligatoire car l'attribut dosage est présent :*/

* dosage.text = "XXX"


* note[wording].text = "Paracetamol 500mg Tablet"
* note[comments].text = "Administered after meals"

* extension[oncofair-ma-element-urgent].valueBoolean = true

* extension[oncofair-ma-element-expirationdate].valueDateTime = "2024-12-31T23:59:59Z"

* extension[oncofair-ma-element-traceability].extension[batchNumber].valueString = "BATCH12345"
* extension[oncofair-ma-element-traceability].extension[serialNumber].valueString = "SN67890"

* extension[oncofair-ma-plannedperiod].valuePeriod.start = "2024-06-01T07:00:00Z"
* extension[oncofair-ma-plannedperiod].valuePeriod.end = "2024-06-01T08:00:00Z"

* extension[oncofair-element-form].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/snomedct"
* extension[oncofair-element-form].valueCodeableConcept.coding[0].code = #385055001
* extension[oncofair-element-form].valueCodeableConcept.coding[0].display = "Tablet"
