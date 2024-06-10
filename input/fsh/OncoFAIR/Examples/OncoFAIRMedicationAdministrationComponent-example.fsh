Instance: ExampleOncoFAIRMedicationAdministrationComponent
InstanceOf: OncoFAIRMedicationAdministrationComponent
Title: "Example OncoFAIR MedicationAdministration Component"
Description: "An example instance of an OncoFAIR MedicationAdministration Component with required fields populated."

* partOf = Reference(ExampleOncoFAIRMedicationAdministrationElement)

* medication.concept = #component
* medication.reference = Reference(ExampleOncoFAIRMedication)
* subject = Reference (ExampleOncoFAIRPatient)

/* Il n'y a pas cet attribut dans PN13 mais obligatoire dans la ressource FHIR*/
* occurenceDateTime = "2024-06-04T12:00:00Z"

* status = #in-progress

* dosage.dose.value = 250
* dosage.dose.unit = "mg"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.rateQuantity.value = 50
* dosage.rateQuantity.unit = "mg/h"
* dosage.rateQuantity.system = "http://unitsofmeasure.org"

* note[comments].text = "Patient experienced mild nausea."
* note[wording].text = "Paracetamol 500mg Tablet"

* extension[oncofair-ma-element-traceability].extension[batchNumber].valueString = "BATCH12345"
* extension[oncofair-ma-element-traceability].extension[serialNumber].valueString = "SN67890"

* extension[oncofair-ma-element-expirationdate].valueDateTime = "2024-12-31T23:59:59Z"

/*C'est défini comme un code dans PN13 mais pas de nomenclature associée : */
* extension[oncofair-ma-component-origin].valueCodeableConcept.text = "XXXX"

* extension[oncofair-ma-component-administration-status].valueCodeableConcept.coding[0].system = "http://ltsi.univ-rennes.fr/CodeSystem/siph-statutcomposantadm-oncofair-codesystem"
* extension[oncofair-ma-component-administration-status].valueCodeableConcept.coding[0].code = #SU 
* extension[oncofair-ma-component-administration-status].valueCodeableConcept.coding[0].display = "suivi"