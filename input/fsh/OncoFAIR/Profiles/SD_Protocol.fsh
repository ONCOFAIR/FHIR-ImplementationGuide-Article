Profile: Protocol
Parent: PlanDefinition
Id: protocol
Title: "Protocol"
Description : "Protocol."
* ^url = "http://ltsi.univ-rennes.fr/StructureDefinition/Protocol"
* identifier 1..1 MS 
* name 1..1 MS
* title 1..1 MS
* type MS 
* type from VSPrescriptionStatus 
* date 1..1 MS
* extension contains CureCycleNumber named numeroCure 1..1 and DayNumber named numeroJour 1..1 
* extension[numeroCure] MS
* extension[numeroJour] MS
