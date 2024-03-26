Profile: AdministrationReport
Parent: MedicationAdministration
Id: administration-report
Title: "Administration Report"
Description: "Prescribed medication administration report."
* identifier.value MS 
* identifier.value ^short = "Identifier of the administration report"
* basedOn 1..1 MS 
* basedOn ^short = "The prescription linked to the administration report"
* basedOn only Reference(Prescription)
* subject MS
* performer 1..* MS
* performer.actor 1..1
* performer.actor ^short = "Person who administered the medication"
* encounter 1..1 MS
* encounter only Reference(Stay)
* encounter ^short = "The encounter linked to the administration report"
* occurencePeriod 1..1 MS
* occurencePeriod ^short = "Specific date/time or interval of time during which the administration took place (or did not take place)"
* request 1..1 MS
* request only Reference(PrescriptionItem)
* request ^short = "The prescription item at the origin of the administration report"
* note MS
* note ^short = "Note"
* medication MS
* medication only CodeableReference(OncologyMedication)
* medication ^short = "The administred medication"
* dosage 1..1 MS
* dosage ^short = "The intended dosage of the administered medication"
* dosage.text 1..1 
* dosage.text ^short = "Textual dosage instructions"
* dosage.dose.value 1..1
* dosage.dose.value ^short = "Value of the dose quantity"
* dosage.dose.unit 1..1
* dosage.dose.unit ^short = "Unit of the dose quantity"

