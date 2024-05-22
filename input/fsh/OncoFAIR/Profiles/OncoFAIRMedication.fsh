Profile: OncoFAIRMedication
Parent: Medication
Id: oncofair-medication
Title: "OncoFAIR Medication"
Description : ""

* code 1..1 MS
* code ^short = "Identifies the prescribed component according to a nomenclature depending on the type"

* extension contains
    OncoFAIRMedicationType named oncofair-medication-type 1..1


Mapping:  mapping_OncoFAIRMedication
Source:   OncoFAIRMedication
Id:       mapping-oncofair-medication
Title:    "Mapping du profil OncoFAIR Medication"
* -> "COMPOSANT"

* code -> "codeComposant"
