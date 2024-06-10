Extension: OncoFAIRMRElementRank
Id: oncofair-mr-element-rank
Description: "Extension created as part of OncoFAIR containing the prescription element rank. \r\n
Extension créée dans le cadre d'OncoFAIR contenant le rangd d'élement de la prescription." 
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] only integer

* . ^short = "Gives the rank of the prescription element in the prescription according to a total order of prescription elements on the prescription object to which they are attached."

Mapping:  mapping_OncoFAIRMRElementRank
Source:   OncoFAIRMRElementRank
Id:       mapping-oncofair-mr-element-rank
Title:    "Mapping de l'extension OncoFAIR MR Element Rank"
* value[x] -> "rangElementPrescription"