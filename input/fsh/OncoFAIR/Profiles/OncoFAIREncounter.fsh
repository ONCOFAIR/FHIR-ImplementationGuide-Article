Profile: OncoFAIREncounter
Parent: Encounter
Id: oncofair-encounter
Title: "OncoFAIR Encounter"
Description : "Must be taken in the generic sense, i.e. it goes beyond hospital admissions, outpatient consultations, dialysis sessions, day hospitals, etc." 

* subject 1..1 MS
* subject only Reference(OncoFAIRPatient)
* subject ^short = "The patient involved in the encounter"

* identifier 1..1 MS
* identifier.value 1..1
* identifier ^short = "Identifier for the patient's stay"

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

* identifier -> "idSejour"