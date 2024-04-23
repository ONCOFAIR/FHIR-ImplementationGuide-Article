Profile: OncoFAIRMedicationRequestElement
Parent: MedicationRequest
Id: oncofaire-medicationrequest-element
Title: "OncoFAIR MedicationRequest Element"
Description : "OncoFAIR MedicationRequest Element" //TODO

* basedOn MS
* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "item.resolve()"
* basedOn ^slicing.rules = #open
* basedOn contains
    prescription 1..1 and
    element 0..* and
    protocol 0..1
* basedOn[prescription] only Reference(OncoFAIRMedicationRequestPrescription)
* basedOn[element] only Reference(OncoFAIRMedicationRequestElement)
* basedOn[protocol] only Reference(OncoFAIRCarePlan)
* basedOn[element].extension contains
    OncoFAIRMRElementLinkType named oncofair-mr-element-linktype 1..1

* device MS
* device ^short = "The associated device"

* requester MS
* requester only Reference(Practitioner)

* identifier 1..1 MS
* identifier.value 1..1
* identifier.value ^short = "The prescription item's identifier"
* groupIdentifier 1..1 MS
* groupIdentifier.value 1..1
* groupIdentifier.value ^short = "Prescription item group identifier"

* medication MS
* medication.concept.coding.code = #element

* status MS
* priority MS
* substitution MS
* effectiveDosePeriod MS

* dosageInstruction MS
* dosageInstruction ^slicing.discriminator.type = #value
* dosageInstruction ^slicing.discriminator.path = "id"
* dosageInstruction ^slicing.rules = #open
* dosageInstruction contains
    element 0..1 and
    posology 0..*
* dosageInstruction[element].id = "element"
* dosageInstruction[posology].id = "posology"
* dosageInstruction[element].additionalInstruction 1..1

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
    OncoFAIRMRElementGoNogo named oncofair-mr-element-gonogo 0..1 MS and
    OncoFAIRPharmacistAdvice named oncofair-pharmacist-advice 0..1 MS


Mapping:  mapping_OncoFAIRMedicationRequestElement
Source:   OncoFAIRMedicationRequestElement
Id:       mapping-oncofair-medicationrequest-element
Title:    "Mapping du profil OncoFAIR MedicationRequest Element"
* -> "ELEMENT PRESCRIPTION"

* basedOn[prescription] -> "PRESCRIPTION" 
* basedOn[element] -> "ELEMENT LIE"
* basedOn[element].extension[oncofair-mr-element-linktype] -> "Type liason élément"
* basedOn[protocol] -> "PROTOCOLE PRESCRIT"

* device -> "Dispostifs associés"
* requester -> "IdP. prescripteur"

* identifier -> "Id élément prescription"

* status -> "Création/Arrêt/Modification/Validation"
* priority -> "Urgent"

* dosageInstruction[element].method -> "Type élément prescription"
* dosageInstruction[element].route -> "Voie administration"
* dosageInstruction[element].site -> "Lieu administration"
* dosageInstruction[element].text -> "Posologie"
* dosageInstruction[element].timing.repeat.boundsPeriod.start -> "D/H début prescrite"
* dosageInstruction[element].timing.repeat.boundsPeriod.end -> "D/H fin prescrite"
* dosageInstruction[element].timing.repeat.offset -> "Delta D/H référence"
* dosageInstruction[element].additionalInstruction -> "Conditions d'application"

* effectiveDosePeriod.start -> "D/H début prescription"
* effectiveDosePeriod.end -> "D/H fin prescription"

* note[description] -> "Libellé élément prescription"
* note[indication] -> "Indication"
* note[comment] -> "Commentaires"