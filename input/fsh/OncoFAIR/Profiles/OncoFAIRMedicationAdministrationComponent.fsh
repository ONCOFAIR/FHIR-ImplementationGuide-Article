Profile: OncoFAIRMedicationAdministrationComponent
Parent: MedicationAdministration
Id: oncofair-medicationadministration-component
Title: "OncoFAIR MedicationAdministration Component"
Description: "This object corresponds to a product that belongs to the nomenclature of medicines used in the hospital." 

* partOf 1..1 MS
* partOf only Reference(OncoFAIRMedicationAdministrationElement)
* partOf ^short = "The element of administration part of the administered component"
* medication MS
* medication only CodeableReference(OncoFAIRMedication)
* medication ^short = "The medication linked to the administered component"


/*Si on suit la logique du composant prescrit, il n'y a pas le type et le code du composant dans ce profil. Ils sont dans le profil medication.*/
/** category 1..1 MS
* category ^short = "Specifies whether the component administered is a speciality, a DC or any other product (pharmacopoeia)"*/
* dosage 1..1 MS
* dosage.dose 1..1
* dosage.dose ^short = "Quantity of the component administered in the administration element that was intended to be administered to the patient"
* dosage.rateQuantity 1..1 MS
* dosage.rateQuantity ^short = "Quantity actually administered to the patient or planned to be administered"

* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "id"
* note ^slicing.rules = #open
* note contains
    description 0..1 and
    comment 0..1 and
    indication 0..1
* note[wording].id = "wording"
* note[comment].id = "comment"
* note[indication].id = "indication"

Mapping:  mapping_OncoFAIRMedicationAdministrationComponent
Source:   OncoFAIRMedicationAdministrationComponent
Id:       mapping-oncofair-medicationadministration-component
Title:    "Mapping du profil OncoFAIR MedicationAdministration Component"
* -> "COMPOSANT ADMINISTRE"

* partOf -> "ELEMENT ADMINISTRATION"
* medication -> "COMPOSANT"

* category -> "Type composant"
* dosage.dose -> "Quantité prévue"

* note[wording] -> "Libellé composant"
* note[comment] -> "Commentaires"
