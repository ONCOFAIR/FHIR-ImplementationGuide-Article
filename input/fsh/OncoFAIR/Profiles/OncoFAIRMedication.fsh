Profile: OncoFAIRMedication
Parent: Medication
Id: oncofair-medication
Title: "OncoFAIR Medication"
Description : "Medication used in oncology."

* code 1..1 MS
* batch MS

/*
* identifier 1..* MS
* identifier.value 1..1 
* identifier.value ^short = "The medication's label"
* code 1..1 MS
* code.coding 1..1 
* code.coding ^short = "The medication's code and label"
*/

Mapping:  mapping_OncoFAIRMedication
Source:   OncoFAIRMedication
Id:       mapping-oncofair-medication
Title:    "Mapping du profil OncoFAIR Medication"
* -> "COMPOSANT PRESCRIT, COMPOSANT ADMINISTRE"

* code -> "Code composant"
* batch.lotNumber -> "Lot"
* batch.expirationDate -> "Date péremption"