Profile: Prescription
Parent: CarePlan
Id: prescription
Title: "Prescription"
Description : "Medication prescription."
* identifier MS 
* identifier ^short = "The prescription's identifier"
* category 1..1 MS
* category ^short = "The communication mode"
* category ^definition = "The communication mode (incremental or summary)"
* subject MS
* subject only Reference(OncologyPatient)
* subject ^short = "The patient covered by the prescription"
* encounter 1..1 MS
* encounter only Reference(Stay)
* encounter ^short = "The encounter linked to the prescription"
* created 1..1 MS 
* created ^short = "The date on which the registration was first made"
* supportingInfo 1..* MS // = rens. compl.
* supportingInfo ^short = "The additional information(s) related to the prescription"
* activity 1..* MS
* activity.plannedActivityReference 1..1
* activity.plannedActivityReference only Reference(PrescriptionItem)
* activity.plannedActivityReference ^short = "The prescription element(s) contained in the prescription"
* instantiatesCanonical 1..1 MS
* instantiatesCanonical ^short = "The protocol linked to the prescription"
