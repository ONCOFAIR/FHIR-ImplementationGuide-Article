Profile: Protocol
Parent: PlanDefinition
Id: protocol
Title: "Protocol"
Description : "Protocol."
* ^url = "http://ltsi.univ-rennes.fr/StructureDefinition/Protocol"
* identifier 1..1 MS 
* identifier.value 1..1 
* identifier ^short = "The protocol's identifier"
* name 1..1 MS
* name ^short = "The protocol's name"
* title 1..1 MS
* title ^short = "The protocol's label"
* date 1..1 MS
* date ^short = "The date on which the protocol starts"
* extension contains TreatmentCycleNumber named treatmentCycleNumber 1..1 and TreatmentDayNumber named treatmentDayNumber 1..1 
* extension[treatmentCycleNumber] MS
* extension[treatmentDayNumber] MS
* extension[treatmentCycleNumber] ^short = "The cycle number of the chemotherapy treatment"
* extension[treatmentDayNumber] ^short = "The day number of the chemotherapy treatment"