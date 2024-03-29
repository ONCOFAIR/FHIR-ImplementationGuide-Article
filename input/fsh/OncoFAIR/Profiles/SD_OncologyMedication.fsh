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