Profile: OncoFAIRMedication
Parent: Medication
Id: oncofair-medication
Title: "OncoFAIR Medication"
Description : "This object describes the medication. \r\n
Cet objet décrit le médicament"


/*La nomenclature pour le code dépend du type de composant, mais pas de nomenclature PN13 fournie*/
* code 1..1 MS
* code ^short = "Identifies the prescribed component according to a nomenclature depending on the type"

* extension contains
    OncoFAIRMedicationType named oncofair-medication-type 1..1


Mapping:  mapping_OncoFAIRMedication
Source:   OncoFAIRMedication
Id:       mapping-oncofair-medication
Title:    "Mapping du profil OncoFAIR Medication"
* -> "Composant"

* code -> "codeComposant"
