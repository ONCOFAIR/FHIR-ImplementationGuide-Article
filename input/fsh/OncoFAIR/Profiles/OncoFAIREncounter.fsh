Profile: OncoFAIREncounter
Parent: Encounter
Id: oncofair-encounter
Title: "ONCOFair Encounter"
Description : "ONCOFair Encounter" //TODO

* subject 1..1 MS
* subject only Reference(OncoFAIRPatient)
* subject ^short = "The patient involved in the encounter"

/*
* identifier 1..* MS
* identifier.value 1..1 
* identifier.value ^short = "The stay's identifier"
* status MS
* status ^short = "The stay's status"
* status ^definition = "The stay's status. Could be: planned | in-progress | on-hold | discharged | completed | cancelled | discontinued | entered-in-error | unknown"
* location 1..* MS
* location.location only Reference(AccomodationUnit)
* location.location ^short = "The medical liability unit of the stay"
*/