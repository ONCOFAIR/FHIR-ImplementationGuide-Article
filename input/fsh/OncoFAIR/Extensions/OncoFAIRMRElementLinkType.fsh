Extension: OncoFAIRMRElementLinkType
Id: oncofair-mr-element-link-type
Title: "OncoFAIRMRElementLinkType"
Description: "Extension created as part of OncoFAIR containing the element's type of link. \r\n
Extension créée dans le cadre d'OncoFAIR contenant le type de liaison de l'élément." 

* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest.basedOn"
* value[x] only CodeableConcept

* . ^short = "Type of link between the two prescription elements"

Mapping:  mapping_OncoFAIRMRElementLinkType
Source:   OncoFAIRMRElementLinkType
Id:       mapping-oncofair-mr-element-link-type
Title:    "Mapping de l'extension OncoFAIR MR Element Link Type"
* value[x] -> "typeLiaisonElement"