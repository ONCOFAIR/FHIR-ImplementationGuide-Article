Extension: OncoFAIRMAComponentOrigin
Id: oncofair-ma-component-origin
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO

* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationAdministrationComponent"

* value[x] only code

Mapping:  mapping_OncoFAIRMAComponentOrigin
Source:   OncoFAIRMAComponentOrigin
Id:       mapping-oncofair-ma-component-origin
Title:    "Mapping de l'extension OncoFAIR MA Component Origin"
* value[x] -> "provenance"
