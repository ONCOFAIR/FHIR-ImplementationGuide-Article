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
* encounter 1..1 MS
* encounter only Reference(Stay)
* encounter ^short = "The encounter linked to the administration report"
* occurencePeriod MS
* occurencePeriod ^short = "Specific date/time or interval of time during which the administration took place (or did not take place)"
* request only Reference(PrescriptionItem)
* request ^short = "The prescription item at the origin of the administration report"
* note MS
* note ^short = "Note"
* medication MS
* medication only CodeableReference(OncologyMedication)
* medication ^short = "The administred medication"
* dosage MS
* dosage ^short = "The intended dosage of the administered medication"