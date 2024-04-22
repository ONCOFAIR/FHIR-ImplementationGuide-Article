Profile: OncoFAIRCarePlan
Parent: CarePlan
Id: oncofair-careplan
Title: "OncoFAIR CarePlan" 
Description : "OncoFAIR CarePlan" //TODO

* identifier 1..1 MS
* identifier ^short = "The protocol identifier"
* title 1..1 MS
* title ^short = "The protocol label"
* status MS

* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "id"
* note ^slicing.rules = #open
* note contains
    indication 0..1 and
    comment 0..1
* note[indication].id = "indication"
* note[comment].id = "comment"

* extension contains
    OncoFAIRCPTreatment named oncofair-cp-treatment 1..1 MS and
    OncoFAIRCPPharmacist named oncofair-cp-pharmacist 0..1 MS


Mapping:  mapping_OncoFAIRCarePlan
Source:   OncoFAIRCarePlan
Id:       mapping-oncofair-carePlan
Title:    "Mapping du profil OncoFAIR CarePlan"
* -> "PROTOCOLE PRESCRIT"

* identifier -> "Id. protocole prescrit"
* title -> "Libellé protocole prescrit"
* status -> "Création/Arrêt/Modification/Validation"

* note[indication] -> "Indication"
* note[comment] -> "Commentaires"