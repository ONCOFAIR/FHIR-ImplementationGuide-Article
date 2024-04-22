Extension: OncoFAIRMAElementPlannedPeriod
Id: oncofair-ma-element-plannedperiod
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationAdministrationElement"
* value[x] only Period
* value[x].start 1..1


Mapping:  mapping_OncoFAIRMAElementPlannedPeriod
Source:   OncoFAIRMAElementPlannedPeriod
Id:       mapping-oncofair-ma-element-plannedperiod
Title:    "Mapping de l'extension OncoFAIR MA Element Planned DateTime"
* value[x].start -> "D/H début prévue"
* value[x].end -> "D/H fin prévue"
