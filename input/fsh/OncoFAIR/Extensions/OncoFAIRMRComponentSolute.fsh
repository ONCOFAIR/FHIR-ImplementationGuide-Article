Extension: OncoFAIRMRComponentSolute
Id: oncofair-mr-component-solute
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestComponent"
* value[x] only boolean


Mapping:  mapping_OncoFAIRMRComponentSolute
Source:   OncoFAIRMRComponentSolute
Id:       mapping-oncofair-mr-component-solute
Title:    "Mapping de l'extension OncoFAIR MR Component Solute"
* value[x] -> "est Véhiculé"