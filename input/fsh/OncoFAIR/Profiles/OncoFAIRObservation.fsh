Profile: OncoFAIRObservation
Parent: Observation
Id: oncofair-observation
Title: "OncoFAIR Observation"
Description: "Additional information, such as height or weight."

* code MS
* code ^short = "LOINC code representing the additional information"
* effectiveDateTime MS 
* issued 1..1 MS
* issued ^short = "Date and time of registration of additional information"
* value[x] 1..1 MS


Mapping:  mapping_OncoFAIRObservation
Source:   OncoFAIRObservation
Id:       mapping-oncofair-observation
Title:    "Mapping du profil OncoFAIR Observation"
* -> "RENSEIGNEMENT COMPLEMENTAIRE"

* code -> "Code renseignement complémentaire"
* effectiveDateTime -> "D/H renseignement complémentaire"
* issued -> "D/H enregistrement renseignement complémenaire"
* value[x] -> "Valeur renseignement complémentaire"