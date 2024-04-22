Extension: OncoFAIRElementForm
Id: oncofair-element-form
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestElement"
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationAdministrationElement"
* value[x] only CodeableConcept


Mapping:  mapping_OncoFAIRElementForm
Source:   OncoFAIRElementForm
Id:       mapping-oncofair-element-form
Title:    "Mapping de l'extension OncoFAIR Element Form"
* value[x] -> "Forme"