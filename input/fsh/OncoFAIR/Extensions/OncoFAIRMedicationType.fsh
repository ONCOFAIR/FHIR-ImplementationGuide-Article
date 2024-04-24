Extension: OncoFAIRMedicationType
Id: oncofair-medication-type
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedication"
* value[x] only CodeableConcept


Mapping:  mapping_OncoFAIRMedicationType
Source:   OncoFAIRMedicationType
Id:       mapping-oncofair-medication-type
Title:    "Mapping de l'extension OncoFAIR Medication Type"
* value[x] -> "Type composant"