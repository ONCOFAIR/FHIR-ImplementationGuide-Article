Extension: OncoFAIRMRComponentSolute
Id: oncofair-mr-component-solute
Description: "Extension created as part of OncoFAIR containing the notion of solute. \r\n
Extension créée dans le cadre d'OncoFAIR contenant la notion de soluté." 
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestComponent"
* value[x] only boolean

* . ^short = "True if the component prescribed is solute in the prescription element"

Mapping:  mapping_OncoFAIRMRComponentSolute
Source:   OncoFAIRMRComponentSolute
Id:       mapping-oncofair-mr-component-solute
Title:    "Mapping de l'extension OncoFAIR MR Component Solute"
* value[x] -> "estVehicule"