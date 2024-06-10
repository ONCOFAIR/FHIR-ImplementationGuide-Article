Extension: OncoFAIRCPTreatment
Id: oncofair-cp-treatment
Description: "Extension created as part of OncoFAIR grouping together the treatment number, the day number and the reference date and time of the prescribed protocol. \r\n 
Extension créée dans le cadre d'OncoFAIR regroupant le numéro de cure, le numéro de jour ainsi que la date et heure de référence du protocole prescrit." 
* ^context[+].type = #element
* ^context[=].expression = "CarePlan"

* extension contains
    treatmentRank 0..1 and
    dayRank 0..1 and
    dateTimeReference 1..1
* extension[treatmentRank].value[x] only integer
* extension[treatmentRank] ^short = "Rank of the treatment in which this prescribed protocol is included within the reference protocol in which this prescription is included"
* extension[dayRank].value[x] only integer
* extension[dayRank] ^short = "Ranking of the day in which this prescribed protocol falls within the reference protocol in which this prescription falls"
* extension[dateTimeReference].value[x] only dateTime
* extension[dateTimeReference] ^short = "Reference date and time of this prescribed protocol"


Mapping:  mapping_OncoFAIRCPTreatment
Source:   OncoFAIRCPTreatment
Id:       mapping-oncofair-cp-treatment
Title:    "Mapping de l'extension OncoFAIR CP Treatment"
* extension[treatmentRank] -> "numeroCure"
* extension[dayRank] -> "numeroJour"
* extension[dateTimeReference] -> "dateHeureReference"
