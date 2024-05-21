Profile: OncoFAIRObservation
Parent: Observation
Id: oncofair-observation
Title: "OncoFAIR Observation"
Description: "Allows you to enter information about the patient in addition to that described in the prescription elements."

* code MS
* code ^short = "Nature of additional information representing by LOINC code"
* effectiveDateTime MS
* effectiveDateTime ^short = "Date and time of registration of the additional information" 
* issued 1..1 MS
* issued ^short = "Date and time associated with the additional information"
* value[x] 1..1 MS
* value[x] ^short = "Contains the value of the additional information"



Mapping:  mapping_OncoFAIRObservation
Source:   OncoFAIRObservation
Id:       mapping-oncofair-observation
Title:    "Mapping du profil OncoFAIR Observation"
* -> "RENSEIGNEMENT COMPLEMENTAIRE"

* code -> "codeRenseignementComplementaire"
* effectiveDateTime -> "dateHeureRenseignementComplementaire"
* issued -> "dateHeureEnregistrementRenseignementComplementaire"
* value[x] -> "valeurRenseignementComplementaire"