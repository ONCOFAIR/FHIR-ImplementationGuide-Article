Extension: OncoFAIRMRElementSupply
Id: oncofair-mr-element-supply
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestElement"
* value[x] only boolean

Mapping:  mapping_OncoFAIRMRElementSupply
Source:   OncoFAIRMRElementSupply
Id:       mapping-oncofair-mr-element-supply
Title:    "Mapping de l'extension OncoFAIR MR Element Supply"
* value[x] -> "Fourniture"