Profile: OncoFAIRMedicationAdministrationReport
Parent: MedicationAdministration
Id: oncofair-medicationadministration-report
Title: "OncoFAIR MedicationAdministration Report"
Description: "OncoFAIR MedicationAdministration Report" //TODO

* encounter 1..1 MS
* encounter only Reference(OncoFAIREncounter)
* encounter ^short = "The encounter linked to the administration report"

* performer 1..1 MS

* identifier MS

Mapping:  mapping_OncoFAIRMedicationAdministrationReport
Source:   OncoFAIRMedicationAdministrationReport
Id:       mapping-oncofair-medicationadministration-report
Title:    "Mapping du profil OncoFAIR MedicationAdministration Report"
* -> "COMPTE RENDU ADMINSITRATION"

* encounter -> "SEJOUR"
* performer.actor -> "IdP. administrateur"

* identifier -> "Id. compte rendu d'adminsitration"
