Profile: OncoFAIRMedicationAdministrationComponent
Parent: MedicationAdministration
Id: oncofair-medicationadministration-component
Title: "OncoFAIR MedicationAdministration Component"
Description: "OncoFAIR MedicationAdministration Component" //TODO

* partOf 1..1 MS
* partOf only Reference(OncoFAIRMedicationAdministrationElement)

* medication MS
* medication only CodeableReference(OncoFAIRMedication)

* category 1..1 MS
* dosage 1..1 MS
* dosage.dose 1..1

* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "id"
* note ^slicing.rules = #open
* note contains
    description 0..1 and
    comment 0..1 and
    indication 0..1
* note[description].id = "description"
* note[comment].id = "comment"
* note[indication].id = "indication"

Mapping:  mapping_OncoFAIRMedicationAdministrationComponent
Source:   OncoFAIRMedicationAdministrationComponent
Id:       mapping-oncofair-medicationadministration-component
Title:    "Mapping du profil OncoFAIR MedicationAdministration Component"
* -> "COMPOSANT ADMINISTRE"

* partOf -> "Lien classe ELEMENT D'ADMINISTRATION"

* category -> "Type composant"
* dosage.dose -> "Quantité prévue"

* note[description] -> "Libellé composant"
* note[comment] -> "Commentaires"
