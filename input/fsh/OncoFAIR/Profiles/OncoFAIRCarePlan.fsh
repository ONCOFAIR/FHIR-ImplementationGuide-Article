Profile: OncoFAIRCarePlan
Parent: CarePlan
Id: oncofair-careplan
Title: "OncoFAIR CarePlan" 
Description : "This object describes the chaining of prescription elements attached to the prescribed protocol. Its structure enables the chaining of nested sub-protocols. \r\n
Cet objet décrit le chaînage des éléments de prescription rattachés au protocole prescrit. Sa structure permet le chaînage de sous-protocoles imbriqués." 


/*// OSIRIS

* subject MS
* subject only Reference (OncoFAIRPatient)

// Mise en supportingInformation la reference au profil Tumor PathologyEvent

* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains
    clinical-trial 0..1 and
    tumor-pathology-event 0..*

* supportingInfo[clinical-trial] only Reference (clinical-trial)
* supportingInfo[clinical-trial] ^short = "Objective of the treatment"
* supportingInfo[clinical-trial] ^definition = "Is the treatment part of a clinical trial?"
* supportingInfo[tumor-pathology-event] only Reference (tumor-pathology-event)


// Reste à savoir comment on mappe de R4 à R5 ça :

* activity ^slicing.discriminator.type = #pattern
* activity ^slicing.discriminator.path = "detail.code.coding.system"
* activity ^slicing.rules = #open
* activity ^slicing.description = "Slice based on the activity code pattern"
* activity contains activity-code 0..1
* activity[activity-code].detail 1..1
* activity[activity-code].detail.code 1..1
* activity[activity-code].detail.code.coding.system = "https://www.atih.sante.fr/les-versions-de-la-ccam"
* activity[activity-code] ^short = "Classification Commune des Actes Médicaux (CCAM) code of the medical act"
* activity[activity-code] ^definition = "Health insurance code used to describe the location and type of medical procedure performed."
* activity[activity-code].detail.code ^short = "CCAM code of the medical act"
* activity[activity-code].detail.code ^definition = "Health insurance code used to describe the location and type of medical procedure performed."

* extension contains treatment-line named treatment-line 0..1 MS

* category 1..1 MS
// A mon avis, ce VS ne fonctionne pas, CS non reconnu lors de la génération de l'IG :
* category from TreatmentType (required)
* category ^short = "Type of treatment"
* category ^definition = "Type of treatment"

* period.start 1..1 MS
* period.start ^short = "Start date"
* period.start ^definition = "Start date of the treatment."

* period.end 1..1 MS
* period.end ^short = "End date"
* period.end ^definition = "End date of the treatment" 
*/

//OncoFAIR


* partOf ^short = "Describes the reference protocol from which the prescribed protocol is derived"
* partOf only Reference(OncoFAIRCarePlan)
/*Extension Element Type*/


* identifier 1..1 MS
* identifier.value ^short = "Prescribed protocol identifier"
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

/*
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
* note[comments] -> "commentaires"*/