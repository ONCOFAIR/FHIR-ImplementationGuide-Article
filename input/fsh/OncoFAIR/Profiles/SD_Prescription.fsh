Profile: Prescription
Parent: CarePlan
Id: prescription
Title: "Prescription"
Description : "Medication prescription."
* identifier MS 
* identifier ^short = "The prescription's identifier"
* subject MS
* subject only Reference(OncologyPatient)
* subject ^short = "The patient covered by the prescription"
* encounter 1..1 MS
* encounter only Reference(Stay)
* encounter ^short = "The encounter linked to the prescription"
* period 1..1 MS
* period ^short = "Time period the prescription covers"
* period.start 1..1
* period.start ^short = "Date and time of prescription start"
* period.end 1..1
* period.end ^short = "Date and time of prescription end"
* supportingInfo 1..* MS
* supportingInfo ^short = "The additional information(s) related to the prescription"
* activity 1..* MS
* activity.plannedActivityReference 1..1
* activity.plannedActivityReference only Reference(PrescriptionItem)
* activity.plannedActivityReference ^short = "The prescription element(s) contained in the prescription"
* instantiatesCanonical 1..1 MS
* instantiatesCanonical ^short = "The protocol linked to the prescription"
* extension contains DateTime named dateTimePrescription 1..1
