Profile: OncoFAIRCarePlan
Parent: CarePlan
Id: oncofair-careplan
Title: "OncoFAIR CarePlan" 
Description : "This object describes the chaining of prescription elements attached to the prescribed protocol. Its structure enables the chaining of nested sub-protocols. \r\n
Cet objet décrit le chaînage des éléments de prescription rattachés au protocole prescrit. Sa structure permet le chaînage de sous-protocoles imbriqués." 


* basedOn ^short = "Describes the reference protocol from which the prescribed protocol is derived"
* basedOn only Reference(OncoFAIRCarePlan)

* identifier 1..1 MS
* identifier ^short = "Prescribed protocol identifier"
* title 1..1 MS
* title ^short = "Wording of the prescribed protocol"
* status MS
* status ^short = "Indicates the status of the protocol from the prescriber's point of view"

* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "id"
* note ^slicing.rules = #open
* note contains
    indication 0..1 and
    comments 0..1 and
    idFatherProtocol 0..1

* note[indication].id = "indication"
* note[indication] ^short = "Explains the reasons that led the prescriber to prescribe this protocol (or this sub-protocol if Id. parent protocol is defined)"
* note[comments].id = "comments"
* note[comments] ^short = "Comments associated with the prescribed protocol"
* note[idFatherProtocol].id = "idFatherProtocol"
* note[idFatherProtocol] ^short = "Identifier of the prescribed protocol to which this prescribed protocol belongs"

* extension contains
    OncoFAIRCPTreatment named oncofair-cp-treatment 1..1 MS and
    OncoFAIRPharmacistAdvice named oncofair-pharmacist-advice 0..1 MS


Mapping:  mapping_OncoFAIRCarePlan
Source:   OncoFAIRCarePlan
Id:       mapping-oncofair-careplan
Title:    "Mapping du profil OncoFAIR CarePlan"
* -> "ProtocolePrescrit"

* basedOn -> "ProtocolePrescrit"
* identifier -> "idProtocolePrescrit"
* title -> "libelleProtocolePrescrit"
* status -> "CreationArretModificationValidation"

* note[indication] -> "indication"
* note[comments] -> "commentaires"