Profile:        OncoPatient
Parent:         Patient
Id:             onco-patient
Title:          "Oncology Patient"
Description:    "Oncology patient defined by Osiris."


* id 1..1 MS
* id ^short = "Local patient identifier"
* id ^definition = "Anonymized local identifier of the patient in the hospital."

* managingOrganization 0..1 MS
* managingOrganization only Reference(OncoOrganization)
* managingOrganization ^short = "Identifier of the center providing the data"
* managingOrganization ^definition = "The FINESS identifier of the center providing the clinical data for the OSIRIS project."

* gender MS
* gender 1..1
* gender ^short = "Sex of the patient"
* gender ^definition = "Biological sex of the patient."

* deceasedDateTime MS
* deceasedDateTime ^short = "Death date. Obligatory if vitalstatus is C1546956 (died)."
* deceasedDateTime ^definition = "Date of patient's death. Date (indicating the 15th day of the month of death for anonymization). Obligatory if vitalstatus is C1546956 (died)."

* birthDate 1..1 MS
* birthDate ^short = "Birthdate"
* birthDate ^definition = "The patient's date of birth as recorded on the birth certificate. Date (indicating the 15th day of the month of birth for anonymization)."

// Extensions

* extension contains origin-center named origin-center 0..1
* extension[origin-center] MS
* extension[origin-center] ^short = "Identifier of the patient's origin center"
* extension[origin-center] ^definition = "The identifier according to the Fichier National des Etablissements Sanitaires et Sociaux (FINESS) of the health center that took care of the patient."

// Other

Extension:  OriginCenter
Id: origin-center
Title: "Patient Origin Center"
Description: "The origin center organization of an Oncology Patient."
* value[x] only Reference
* valueReference only Reference (OncoOrganization)
* valueReference 1..1