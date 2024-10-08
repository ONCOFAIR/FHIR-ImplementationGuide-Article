Profile: OncoFAIRObservation
Parent: Observation
Id: oncofair-observation
Title: "OncoFAIR Observation"
Description: "Allows you to enter information about the patient in addition to that described in the prescription elements. \r\n
Permet d’indiquer les informations relatives au patient qui complètent celles décrites par les éléments de prescription"

* code MS
* code ^short = "Nature of additional information representing by LOINC code"
* code from SIPhRensComplementOncoFAIRValueSet (required)
* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Date and time of registration of the additional information" 
* issued MS
* issued ^short = "Date and time associated with the additional information"
* value[x] 1..1 MS
* value[x] ^short = "Contains the value of the additional information"



Mapping:  mapping_OncoFAIRObservation
Source:   OncoFAIRObservation
Id:       mapping-oncofair-observation
Title:    "Mapping du profil OncoFAIR Observation"
* -> "RenseignementComplementaire"

* code -> "codeRenseignementComplementaire"
* effectiveDateTime -> "dateHeureEnregistrementRenseignementComplementaire"
* issued -> "dateHeureRenseignementComplementaire"
* value[x] -> "valeurRenseignementComplementaire"