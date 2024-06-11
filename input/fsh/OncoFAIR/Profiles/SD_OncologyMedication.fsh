Profile: OncologyMedication
Parent: Medication
Id: oncology-medication
Title: "Oncology Medication"
Description : "Medication used in oncology."
* identifier 1..* MS
* identifier.value 1..1 
* identifier.value ^short = "The medication's label"
* code 1..1 MS
* code.coding 1..1 
* code.coding ^short = "The medication's code and label"
* extension contains MedicationType named medicationType 0..1 MS
and MedicationIsVehicle named medicationIsVehicle 0..1 MS

// PN13 extensions not required for the OncoFAIR project
/*
and MedicationStatus named medicationStatus 0..1 MS
and MedicationComment named medicationComment 0..1 MS
and MedicationLTIExemption named medicationLTIExemption 0..1 MS
*/
