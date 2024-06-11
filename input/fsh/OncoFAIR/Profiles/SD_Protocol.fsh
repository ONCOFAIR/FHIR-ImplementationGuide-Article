Profile: Protocol
Parent: PlanDefinition
Id: protocol
Title: "Protocol"
Description : "Protocol."
* identifier 1..1 MS 
* identifier.value 1..1 
* identifier ^short = "The protocol's identifier"
* name 1..1 MS
* name ^short = "The protocol's name"
* title 1..1 MS
* title ^short = "The protocol's label"
* effectivePeriod.start 1..1 MS
* effectivePeriod.start ^short = "The date on which the protocol starts"
* extension contains TreatmentCycleNumber named treatmentCycleNumber 1..1 and TreatmentDayNumber named treatmentDayNumber 1..1 
* extension[treatmentCycleNumber] MS
* extension[treatmentDayNumber] MS
