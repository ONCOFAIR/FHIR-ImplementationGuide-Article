Extension: OncoFAIRMRElementRank
Id: oncofair-mr-element-rank
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestElement"
* value[x] only integer

Mapping:  mapping_OncoFAIRMRElementRank
Source:   OncoFAIRMRElementRank
Id:       mapping-oncofair-mr-element-rank
Title:    "Mapping de l'extension OncoFAIR MR Element Rank"
* -> "ELEMENT DE PRESCRIPTION"
* value[x] -> "Rang élément prescription"