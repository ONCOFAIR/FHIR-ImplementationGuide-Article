Profile: Stay
Parent: Encounter
Id: Stay
Title: "Stay"
Description : "Stay."
* ^url = "http://ltsi.univ-rennes.fr/StructureDefinition/Stay"
* identifier 1..* MS
* identifier.value 1..1 
* identifier.value ^short = "The stay's identifier"
* status MS
* status ^short = "The stay's status"
* status ^definition = "The stay's status. Could be: planned | in-progress | on-hold | discharged | completed | cancelled | discontinued | entered-in-error | unknown"
* subject 1..1 MS
* subject only Reference(OncologyPatient)
* subject ^short = "The patient involved in the stay"
* location 1..* MS
* location.location only Reference(AccomodationUnit)
* location.location ^short = "The medical liability unit of the stay"
