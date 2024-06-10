Extension: OncoFAIRMAElementUrgent
Id: oncofair-ma-element-urgent
Description: "Extension created as part of OncoFAIR containing the notion of emergency. \r\n
Extension créée dans le cadre d'OncoFAIR contenant la notion d'urgence." 
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"

* value[x] only boolean
* . ^short = "Boolean attribute indicating the notion of urgency in creating the administration element"


Mapping:  mapping_OncoFAIRMAElementUrgent
Source:   OncoFAIRMAElementUrgent
Id:       mapping-oncofair-ma-element-urgent
Title:    "Mapping de l'extension OncoFAIR MA Element Urgent"
* value[x] -> "urgent"