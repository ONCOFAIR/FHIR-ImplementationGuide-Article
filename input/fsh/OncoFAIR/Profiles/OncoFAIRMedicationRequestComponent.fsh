Profile: OncoFAIRMedicationRequestComponent
Parent: MedicationRequest
Id: oncofair-medicationrequest-component
Title: "OncoFAIR MedicationRequest Component"
Description : "Is a product that belongs to the nomenclature of medicines used. It may, for example, be a speciality, a product defined by its common name or a pharmacopoeial product. \r\n
Est un produit qui appartient à la nomenclature de médicaments utilisée. Il peut s’agir par exemple d’une spécialité, d’un produit défini par sa DC ou d’un produit de la pharmacopée." 

* basedOn 1..1 MS
* basedOn ^short = "The element linked to the component prescribed"
* basedOn only Reference(OncoFAIRMedicationRequestElement)

* medication MS
* medication ^short = "The medication linked to the component prescribed"
* medication only CodeableReference(OncoFAIRMedication)

* dosageInstruction 0..1 MS
* dosageInstruction.doseAndRate 0..1
* dosageInstruction.doseAndRate.doseQuantity 1..1 
* dosageInstruction.doseAndRate.doseQuantity ^short = "Quantity of the component prescribed in the prescription element"
* substitution MS
* substitution.allowedBoolean ^short = "True if the component prescribed is declared non-substitutable in the prescription element"

* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "id"
* note ^slicing.rules = #open
* note contains
    wording 1..1 and
    comments 0..1 and
    indication 0..1
* note[wording].id = "wording"
* note[wording] ^short = "Wording of the prescribed component"
* note[comments].id = "comments"
* note[comments] ^short = "Comments associated with the prescribed component"
* note[indication].id = "indication"
* note[indication] ^short = "Specifies the reasons that led the prescriber to prescribe this component in the prescription element"

* extension contains
    OncoFAIRMRExemptLTC named oncofair-mr-exempt-ltc 0..1 and
    OncoFAIRMRComponentSolute named oncofair-mr-component-solute 0..1 and
    OncoFAIRMRIsDosageReferent named oncofair-mr-is-dosage-referent 0..1

Mapping:  mapping_OncoFAIRMedicationRequestComponent
Source:   OncoFAIRMedicationRequestComponent
Id:       mapping-oncofair-medicationrequest-component
Title:    "Mapping du profil OncoFAIR MedicationRequest Component"
* -> "ComposantPrescrit"

* basedOn -> "ElementPrescription"
* medication -> "Composant"

* dosageInstruction.doseAndRate.doseQuantity -> "quantiteComposantPrescrit"
* substitution.allowedBoolean -> "nonSubstituable"

* note[wording] -> "libelleComposant"
* note[comments] -> "commentaires"
* note[indication] -> "indication"
