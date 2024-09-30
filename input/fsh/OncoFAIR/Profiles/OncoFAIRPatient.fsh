Profile: OncoFAIRPatient
Parent: OncoPatient
Id: oncofair-patient
Title: "OncoFAIR Patient"
Description : "Contains the patient's identity details needed to ensure that the prescription is properly taken into account. \r\n
Contient les informations d’identité du patient nécessaires à la bonne prise en compte de la prescription médicamenteuse."

* identifier 1..1 MS
* identifier.value ^short = "Permanent Patient Identifier"

/*
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open

* name contains
    usualName 0..* and
    officialName 0..*


* name [usualName] ^short = "Patient's usual name"
* name [usualName].use = #usual

* name [officialName] ^short = "Patient's birth name"
* name [officialName].use = #official
* name [officialName].given ..1
*/



/*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains IPP 1..1 MS 
* identifier[IPP].system = "http://ltsi.univ-rennes.fr/fhir/identifier/ipp"
* identifier[IPP].use = #usual
* identifier[IPP].type.text = "Permanent Patient Identifier (IPP)"
* identifier[IPP].value 1..1
* name 1..* MS
* name ^short = "Name(s) of the patient"
* name.use 1..1 
* name.use ^short = "Information on the use of patient names"
* name.family 1..1 
* name.family ^short = "The patient's last name"
* name.given 1..* 
* name.given ^short = "The patient's first name(s)"
* birthDate 1..1 MS
* birthDate ^short = "The patient's birth date"
* gender 1..1 MS
* gender ^short = "The patient's gender"
*/

Mapping:  mapping_OncoFAIRPatient
Source:   OncoFAIRPatient
Id:       mapping-oncofair-patient
Title:    "Mapping du profil OncoFAIR Patient"
* -> "Patient"

* identifier -> "IPP" 