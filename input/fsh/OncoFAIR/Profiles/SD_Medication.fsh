Profile: OncologyMedication
Parent: Medication
Id: oncology-medication
Title: "Oncology Medication"
Description : "Medication used in oncology."
* identifier.value 1..1 MS
* identifier.value ^short = "The medication's code identifier"
* code.coding 1..1 MS 
* code.coding ^short = "The medication's type and label"