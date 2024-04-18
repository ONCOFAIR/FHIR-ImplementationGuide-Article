Profile: OncoFAIRMedicationAdministrationReport
Parent: MedicationAdministration
Id: oncofair-medicationadministration-report
Title: "OncoFAIR MedicationAdministration Report"
Description: "OncoFAIR MedicationAdministration Report" //TODO

* encounter 1..1 MS
* encounter only Reference(OncoFAIREncounter)
* encounter ^short = "The encounter linked to the administration report"

* performer 1..1 MS
* performer.actor only CodeableReference(Practitioner)
