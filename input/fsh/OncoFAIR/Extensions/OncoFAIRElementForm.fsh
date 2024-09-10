Extension: OncoFAIRElementForm
Id: oncofair-element-form
Title: "OncoFAIRElementForm"
Description: "Extension created as part of OncoFair containing the drug form. \r\n
Extension créée dans le cadre d'OncoFair contenant la forme du médicament." 
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* value[x] only CodeableConcept
* . ^short = "Pharmaceutical form of the prescription/administration item"

Mapping:  mapping_OncoFAIRElementForm
Source:   OncoFAIRElementForm
Id:       mapping-oncofair-element-form
Title:    "Mapping de l'extension OncoFAIR Element Form"
* value[x] -> "forme"