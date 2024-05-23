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
    comments 0..1 and
    wording 0..1

* note[comments].id = "comments"
* note[comments] ^short = "Comment relating to the administration of the administered component"
* note[wording].id = "wording"
* note[wording] ^short = "Name of administered component"

* extension contains
    OncoFAIRMAElementTraceability named oncofair-ma-element-traceability 0..1 and 
    OncoFAIRMAElementExpirationDate named oncofair-ma-element-expirationdate 0..1 and
    OncoFAIRMAComponentOrigin named  oncofair-ma-component-origin 0..1 and
    OncoFAIRMAComponentAdministrationStatus named oncofair-ma-component-administration-status 1..1

Mapping:  mapping_OncoFAIRMedicationAdministrationComponent
Source:   OncoFAIRMedicationAdministrationComponent
Id:       mapping-oncofair-medicationadministration-component
Title:    "Mapping du profil OncoFAIR MedicationAdministration Component"
* -> "COMPOSANT ADMINISTRE"

* partOf -> "ELEMENT ADMINISTRATION"
* medication -> "COMPOSANT"

/** category -> "typeComposant"*/
* dosage.dose -> "quantitePrevue"
* dosage.rateQuantity -> "quantiteAdministree"

* note[comments] -> "commentaires"
* note[wording] -> "libelleComposant"
