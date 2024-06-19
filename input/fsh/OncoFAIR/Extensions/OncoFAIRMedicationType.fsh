Extension: OncoFAIRMedicationType
Id: oncofair-medication-type
Title: "OncoFAIRMedicationType"
Description: "Extension created as part of OncoFAIR containing the type of component. \r\n
Extension créée dans le cadre d'OncoFAIR contenant le type de composant."
* ^context[+].type = #element
* ^context[=].expression = "Medication"

* value[x] only CodeableConcept
* . ^short = "Specifies whether the component prescribed is a speciality, a common name or any other product (pharmacopoeia)."

* valueCodeableConcept from SIPhTypeComposantOncoFAIRValueSet (required)

Mapping:  mapping_OncoFAIRMedicationType
Source:   OncoFAIRMedicationType
Id:       mapping-oncofair-medication-type
Title:    "Mapping de l'extension OncoFAIR Medication Type"
* value[x] -> "typeComposant"