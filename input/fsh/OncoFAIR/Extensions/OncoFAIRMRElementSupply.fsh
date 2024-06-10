Extension: OncoFAIRMRElementSupply
Id: oncofair-mr-element-supply
Description: "Extension created as part of OncoFAIR containing the concept of supply. \r\n
Extension créée dans le cadre d'OncoFAIR contenant la notion de fourniture." 
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] only boolean
* . ^short = "Specifies whether the prescription item must be supplied by the pharmacy or not"

Mapping:  mapping_OncoFAIRMRElementSupply
Source:   OncoFAIRMRElementSupply
Id:       mapping-oncofair-mr-element-supply
Title:    "Mapping de l'extension OncoFAIR MR Element Supply"
* value[x] -> "fourniture"