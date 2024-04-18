Profile: OncoFAIRMedicationRequestPrescription
Parent: MedicationRequest
Id: oncofaire-medicationrequest-prescription
Title: "OncoFAIR MedicationRequest Prescription"
Description : "OncoFAIR MedicationRequest Prescription" //TODO

* encounter 1..1 MS
* encounter only Reference(OncoFAIREncounter)
* encounter ^short = "The encounter linked to the prescription"

* reason MS
* reason only CodeableReference(OncoFAIRObservation)

* basedOn MS
* basedOn only Reference(OncoFAIRCarePlan)

* supportingInformation MS
* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "id"
* supportingInformation ^slicing.rules = #open
* supportingInformation contains
    accomodationUnit 0..1 and
    medicalLiabiltyUnit 0..1
* supportingInformation[accomodationUnit].id = "accomodationUnit"
* supportingInformation[accomodationUnit] only Reference(HealthcareService)
* supportingInformation[medicalLiabiltyUnit].id = "medicalLiabiltyUnit"
* supportingInformation[medicalLiabiltyUnit] only Reference(HealthcareService)

/*
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
*/