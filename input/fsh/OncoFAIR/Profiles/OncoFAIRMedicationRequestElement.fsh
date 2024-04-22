Profile: OncoFAIRMedicationRequestElement
Parent: MedicationRequest
Id: oncofaire-medicationrequest-element
Title: "OncoFAIR MedicationRequest Element"
Description : "OncoFAIR MedicationRequest Element" //TODO

* basedOn 1..1 MS
* basedOn only Reference(OncoFAIRMedicationRequestPrescription)
* basedOn ^short = "The prescription linked to the prescription elemnt"

* device MS
* device ^short = "The associated device"

* requester MS

* identifier 1..1 MS
* identifier.value 1..1
* identifier.value ^short = "The prescription item's identifier"
* groupIdentifier 1..1 MS
* groupIdentifier.value 1..1
* groupIdentifier.value ^short = "Prescription item group identifier"

* status MS
* priority MS
* substitution MS
* dosageInstruction 1..1 MS
* effectiveDosePeriod MS

* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "id"
* note ^slicing.rules = #open
* note contains
    description 0..1 and
    indication 0..1 and
    comment 0..1
* note[description].id = "description"
* note[indication].id = "indication"
* note[comment].id = "comment"

* extension contains
    OncoFAIRElementForm named oncofair-element-form 0..1 MS and
    OncoFAIRMRElementSupply named oncofair-mr-element-supply 0..1 MS and
    OncoFAIRMRElementRank named oncofair-mr-element-rank 0..1 MS and
    OncoFAIRMRElementGoNogo named oncofair-mr-element-gonogo 0..1 MS


Mapping:  mapping_OncoFAIRMedicationRequestElement
Source:   OncoFAIRMedicationRequestElement
Id:       mapping-oncofair-medicationrequest-element
Title:    "Mapping du profil OncoFAIR MedicationRequest Element"
* -> "ELEMENT DE PRESCRIPTION"

* basedOn -> "Lien classe PRESCRIPTION"

* device -> "Dispostifs associées"
* requester -> "IdP. prescripteur"

* identifier -> "Id élément prescription"
* groupIdentifier -> "Id. groupe"

* note.text -> "Libellé élément prescription"
* status -> "Création/Arrêt/Modification/Validation"
* priority -> "Urgent"
* substitution -> "Proposition pharmaceutique"

* dosageInstruction.method -> "Type élément prescription"
* dosageInstruction.route -> "Voie administration"
* dosageInstruction.site -> "Lieu administration"
* dosageInstruction.text -> "Posologie"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "D/H début prescrite"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "D/H fin prescrite"
* dosageInstruction.timing.repeat.offset -> "Delta D/H référence"
* dosageInstruction.additionalInstruction -> "Conditions d'application"

* effectiveDosePeriod.start -> "D/H début prescription"
* effectiveDosePeriod.end -> "D/H fin prescription"

* note[description] -> "Libellé élément prescription"
* note[indication] -> "Indication"
* note[comment] -> "Commentaires"