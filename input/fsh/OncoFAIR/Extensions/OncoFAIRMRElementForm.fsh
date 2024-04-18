Extension: OncoFAIRMRElementForm
Id: oncofair-mr-element-form
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestElement"
* value[x] only CodeableConcept