Profile: OncoFAIREncounter
Parent: Encounter
Id: oncofair-encounter
Title: "ONCOFair Encounter"
Description : "ONCOFair Encounter" //TODO

* subject 1..1 MS
* subject only Reference(OncoFAIRPatient)
* subject ^short = "The patient involved in the encounter"

* identifier 1..* MS
* identifier.value ^short = "The encounter identifier"

/*
* identifier.value 1..1 
* status MS
* status ^short = "The stay's status"
*/

Mapping:  mapping_OncoFAIREncounter
Source:   OncoFAIREncounter
Id:       mapping-oncofair-encounter
Title:    "Mapping du profil OncoFAIR Encounter"
* -> "SEJOUR"

* subject -> "PATIENT"