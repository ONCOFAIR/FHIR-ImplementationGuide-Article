Extension: OncoFAIRCPTreatment
Id: oncofair-cp-treatment
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRCarePlan"

* extension contains
    treatmentRank 0..1 and
    dayRank 0..1 and
    dateTimeReference 1..1
* extension[treatmentRank].value[x] only integer
* extension[treatmentRank] ^short = "Treatment cycle rank."
* extension[dayRank].value[x] only integer
* extension[dayRank] ^short = "Treatment day rank."
* extension[dateTimeReference].value[x] only dateTime


Mapping:  mapping_OncoFAIRCPTreatment
Source:   OncoFAIRCPTreatment
Id:       mapping-oncofair-cp-treatment
Title:    "Mapping de l'extension OncoFAIR CP Treatment"
* -> "PROTOCOLE PRESCRIT"
* extension[treatmentRank] -> "Numéro cure"
* extension[dayRank] -> "Numéro jour"
* extension[dateTimeReference] -> "D/H référence"
