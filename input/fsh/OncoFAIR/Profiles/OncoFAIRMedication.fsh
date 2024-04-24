Profile: OncoFAIRMedication
Parent: Medication
Id: oncofair-medication
Title: "OncoFAIR Medication"
Description : "Medication used in oncology."

* code 1..1 MS

* extension contains
    OncoFAIRMedicationType named oncofair-medication-type 1..1


Mapping:  mapping_OncoFAIRMedication
Source:   OncoFAIRMedication
Id:       mapping-oncofair-medication
Title:    "Mapping du profil OncoFAIR Medication"
* -> "COMPOSANT"

* code -> "Code composant"
