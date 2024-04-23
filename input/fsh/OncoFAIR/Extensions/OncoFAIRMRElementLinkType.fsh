Extension: OncoFAIRMRElementLinkType
Id: oncofair-mr-element-linktype
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestElement"
* value[x] only CodeableConcept


Mapping:  mapping_OncoFAIRMRElementLinkType
Source:   OncoFAIRMRElementLinkType
Id:       mapping-oncofair-mr-element-linktype
Title:    "Mapping de l'extension OncoFAIR MR Element Link Type"
* value[x] -> "Type liaison élément"