Extension: OncoFAIRMAElementUrgent
Id: oncofair-ma-element-urgent
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationAdministrationElement"
* value[x] only boolean


Mapping:  mapping_OncoFAIRMAElementUrgent
Source:   OncoFAIRMAElementUrgent
Id:       mapping-oncofair-ma-element-urgent
Title:    "Mapping de l'extension OncoFAIR MA Element Urgent"
* -> "ELEMENT D'ADMINISTRATION"
* value[x] -> "Urgent"