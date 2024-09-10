Extension: OncoFAIRMAElementPlannedPeriod
Id: oncofair-ma-element-plannedperiod
Title: "OncoFAIRMAElementPlannedPeriod"
Description: "Extension created as part of OncoFAIR containing the planned start and end date of administration. \r\n
Extension créée dans le cadre d'OncoFAIR contenant la date de début et de fin prévue de l'administration." 
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* value[x] only Period
* value[x].start 1..1
* value[x].start ^short = "Date and time scheduled for the start of administration of the administration element"
* value[x].end ^short = "Date and time scheduled for the end of administration of the administration element"

Mapping:  mapping_OncoFAIRMAElementPlannedPeriod
Source:   OncoFAIRMAElementPlannedPeriod
Id:       mapping-oncofair-ma-element-plannedperiod
Title:    "Mapping de l'extension OncoFAIR MA Element Planned DateTime"
* value[x].start -> "dateHeureDebutPrevue"
* value[x].end -> "dateHeureFinPrevue"
