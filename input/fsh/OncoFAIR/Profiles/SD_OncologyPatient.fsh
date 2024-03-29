Profile: OncologyPatient
Parent: Patient
Id: oncology-patient
Title: "Oncology Patient"
Description : "Patient receiving medical treatment in oncology."
* identifier 1..* MS 
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains IPP 1..1 MS 
* identifier[IPP].system = "http://ltsi.univ-rennes.fr/fhir/identifier/ipp"
* identifier[IPP].use = #usual
* identifier[IPP].type.text = "Permanent Patient Identifier (IPP)"
* identifier[IPP].value 1..1
* identifier ^short = "The patient's identifier"
* name 1..* MS
* name ^short = "Name(s) of the patient"
* name.use 1..1 
* name.use ^short = "Information on the use of patient names"
* name.use ^definition = "Information on the use of patient names. Could be: usual | official | temp | nickname | anonymous | old | maiden"
* name.family 1..1 
* name.family ^short = "The patient's last name"
* name.given 1..* 
* name.given ^short = "The patient's first name(s)"
* birthDate 1..1 MS
* birthDate ^short = "The patient's birth date"
* gender 1..1 MS
* gender ^short = "The patient's gender"