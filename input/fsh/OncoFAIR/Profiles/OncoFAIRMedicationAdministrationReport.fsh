Profile: OncoFAIRMedicationAdministrationReport
Parent: MedicationAdministration
Id: oncofair-medicationadministration-report
Title: "OncoFAIR MedicationAdministration Report"
Description: "Regroups all the prescription elements received on which the pharmacist expresses his validation. It also includes items suggested or resulting from a replacement proposed by the pharmacist." 
* encounter 1..1 MS
* encounter only Reference(OncoFAIREncounter)
* encounter ^short = "The encounter linked to the administration report"

* performer 1..1 MS
* performer.actor ^short = "Identification of the person who planned, administered or monitored the administration of the medicines represented by the administration elements"

* identifier 1..1 MS
* identifier ^short = "External identifier of the administration report"

Mapping:  mapping_OncoFAIRMedicationAdministrationReport
Source:   OncoFAIRMedicationAdministrationReport
Id:       mapping-oncofair-medicationadministration-report
Title:    "Mapping du profil OncoFAIR MedicationAdministration Report"
* -> "COMPTE RENDU ADMINISTRATION"

* encounter -> "SEJOUR"
* performer.actor -> "idpAdministrateur"
* identifier -> "idCompteRenduAdministration"
