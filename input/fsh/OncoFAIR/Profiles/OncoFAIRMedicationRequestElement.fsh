Profile: OncoFAIRMedicationRequestElement
Parent: MedicationRequest
Id: oncofaire-medicationrequest-element
Title: "OncoFAIR MedicationRequest Element"
Description : "Corresponds to a prescription line on a prescription. Each item contains one or more components (in the case of a magistral
preparation or an infusion)." 

* basedOn MS
* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "item.resolve()"
* basedOn ^slicing.rules = #open
* basedOn contains
    prescription 1..1 and
    element 0..* and
    protocol 0..1
* basedOn[prescription] only Reference(OncoFAIRMedicationRequestPrescription)
* basedOn[prescription] ^short = "The prescription linked to the element of prescription"
* basedOn[element] only Reference(OncoFAIRMedicationRequestElement)
* basedOn[element] ^short = "The element linked to the element of prescription"
* basedOn[protocol] only Reference(OncoFAIRCarePlan)
* basedOn[protocol] ^short = "The protocol linked to the element of prescription"
* basedOn[element].extension contains
    OncoFAIRMRElementLinkType named oncofair-mr-element-link-type 1..1 and
    OncoFAIRMRIdLinkedItem named oncofair-mr-id-linked-item 1..1

* device MS
* device ^short = "Specifies, where applicable, the medical devices or equipment to be used to administer the product"

* requester MS
* requester only Reference(Practitioner)
* requester ^short = "The requester linked to the element of prescription"

* identifier 1..1 MS
* identifier.value 1..1
* identifier.value ^short = "Unique identifier of the prescription item by the prescriber"
* groupIdentifier 1..1 MS
* groupIdentifier.value 1..1
* groupIdentifier ^short = "Identifier common to all components of the same prescription"

* medication MS
* medication.concept.coding.code = #element

* status MS
* status ^short = "Indicates the status of the protocol from the prescriber's point of view"

* priority MS
* priority ^short = "Attribute indicating the urgency with which the prescription item must be completed"

* substitution MS
* substitution ^short = "Characterises a prescription item added by the pharmacist, either as a proposed replacement or as a suggestion"

* effectiveDosePeriod MS
* effectiveDosePeriod ^short = "Effective start and end date and time of product prescription"

* dosageInstruction MS
* dosageInstruction ^slicing.discriminator.type = #value
* dosageInstruction ^slicing.discriminator.path = "id"
* dosageInstruction ^slicing.rules = #open
* dosageInstruction contains
    element 0..1 and
    posology 0..*
* dosageInstruction[element].id = "element"
* dosageInstruction[posology].id = "posology"
* dosageInstruction[element].additionalInstruction ..1

* dosageInstruction[element].method ^short = "Type of prescription element"
* dosageInstruction[element].route ^short = "Specifies the route of administration of the product"
* dosageInstruction[element].site ^short = "Specifies, where appropriate, the exact point on the body where the product is to be applied to the patient" 
* dosageInstruction[element].text ^short = "Description of the prescribed dosage, in text form."
* dosageInstruction[element].timing.repeat.boundsPeriod.start ^short = "Prescribed start date and time of product prescription"
* dosageInstruction[element].timing.repeat.boundsPeriod.end ^short = "Prescribed end date and time of product prescription"
* dosageInstruction[element].timing.repeat.offset ^short = "Decimal value, positive or negative, of the interval between the reference date/time of the prescribed protocol and that of this prescription item"
* dosageInstruction[element].additionalInstruction ^short = "Free text describing the conditions of application of this prescription element"

* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "id"
* note ^slicing.rules = #open
* note contains
    wording 0..1 and
    indication 0..1 and
    comments 0..1
* note[wording].id = "wording"
* note[wording] ^short = "Prescription element wording"
* note[indication].id = "indication"
* note[indication] ^short = "Explain the reasons that led the prescriber to prescribe this item"
* note[comments].id = "comments"
* note[comments] ^short = "Comments associated with this element, which represents the smallest entity that can be administered to the patient"

* extension contains
    OncoFAIRElementForm named oncofair-element-form 0..1 MS and
    OncoFAIRMRElementSupply named oncofair-mr-element-supply 0..1 MS and
    OncoFAIRMRElementRank named oncofair-mr-element-rank 0..1 MS and
    OncoFAIRMRElementGoNogo named oncofair-mr-element-go-nogo 0..1 MS and
    OncoFAIRPharmacistAdvice named oncofair-pharmacist-advice 0..1 MS


Mapping:  mapping_OncoFAIRMedicationRequestElement
Source:   OncoFAIRMedicationRequestElement
Id:       mapping-oncofair-medicationrequest-element
Title:    "Mapping du profil OncoFAIR MedicationRequest Element"
* -> "ELEMENT PRESCRIPTION"

* basedOn[prescription] -> "PRESCRIPTION" 
* basedOn[element] -> "ELEMENT LIE"
* basedOn[element].extension[oncofair-mr-element-link-type] -> "typeLiaisonElement"
* basedOn[element].extension[oncofair-mr-id-linked-item] -> "idElementLie"
* basedOn[protocol] -> "PROTOCOLE PRESCRIT"

* device -> "dispostifsAssocies"
* requester -> "idpPrescripteur"

* identifier -> "idElementPrescription"
* groupIdentifier -> "idGroupe"

* status -> "CreationArretModificationValidation"
* priority -> "urgent"
* substitution -> "propostionPharmaceutique"

* dosageInstruction[element].method -> "typeElementPrescription"
* dosageInstruction[element].route -> "voieAdministration"
* dosageInstruction[element].site -> "lieuAdministration"
* dosageInstruction[element].text -> "posologie"
* dosageInstruction[element].timing.repeat.boundsPeriod.start -> "dateHeureDebutPrescrite"
* dosageInstruction[element].timing.repeat.boundsPeriod.end -> "dateHeureFinPrescrite"
* dosageInstruction[element].timing.repeat.offset -> "deltaDateHeureReference"
* dosageInstruction[element].additionalInstruction -> "conditionsApplication"

* effectiveDosePeriod.start -> "dateHeureDebutPrescription"
* effectiveDosePeriod.end -> "dateHeureFinPrescription"

* note[wording] -> "libelleElementPrescription"
* note[indication] -> "indication"
* note[comments] -> "commentaires"