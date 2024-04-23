Profile: OncoFAIRMedicationRequestComponent
Parent: MedicationRequest
Id: oncofaire-medicationrequest-component
Title: "OncoFAIR MedicationRequest Component"
Description : "OncoFAIR MedicationRequest Component" //TODO

* basedOn 1..1 MS
* basedOn only Reference(OncoFAIRMedicationRequestElement)

* medication MS
* medication only CodeableReference(OncoFAIRMedication)

* category 1..1 MS
* dosageInstruction 0..1 MS
* dosageInstruction.doseAndRate 0..1
* substitution MS

* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "id"
* note ^slicing.rules = #open
* note contains
    description 1..1 and
    comment 0..1
* note[description].id = "description"
* note[comment].id = "comment"


Mapping:  mapping_OncoFAIRMedicationRequestComponent
Source:   OncoFAIRMedicationRequestComponent
Id:       mapping-oncofair-medicationrequest-component
Title:    "Mapping du profil OncoFAIR MedicationRequest Component"
* -> "COMPOSANT PRESCRIT"

* basedOn -> "ELEMENT PRESCRIPTION"
* medication -> "COMPOSANT"

* category -> "Type composant"
* dosageInstruction.doseAndRate.doseQuantity -> "Quantité composant prescrit"
* substitution.allowedBoolean -> "Non Subsituable"

* note[description] -> "Libellé composant"
* note[comment] -> "Commentaires"
