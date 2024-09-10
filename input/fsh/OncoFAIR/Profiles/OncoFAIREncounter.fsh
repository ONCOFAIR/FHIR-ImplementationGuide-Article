Profile: OncoFAIREncounter
Parent: Encounter
Id: oncofair-encounter
Title: "OncoFAIR Encounter"
Description : "Must be taken in the generic sense, i.e. it goes beyond hospital admissions, outpatient consultations, dialysis sessions, day hospitals, etc. \r\n
Doit être pris au sens générique, c’est-à-dire que cela dépasse les hospitalisations, consultations externes, séances de dialyse, hôpitaux de jour, etc …" 

* subject 1..1 MS
* subject only Reference(OncoFAIRPatient)
* subject ^short = "The patient involved in the encounter"

* identifier 1..1 MS
* identifier.value 1..1
* identifier ^short = "Identifier for the patient's stay"


Mapping:  mapping_OncoFAIREncounter
Source:   OncoFAIREncounter
Id:       mapping-oncofair-encounter
Title:    "Mapping du profil OncoFAIR Encounter"
* -> "Sejour"

* subject -> "Patient"

* identifier -> "idSejour"