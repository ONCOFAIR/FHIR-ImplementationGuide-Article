Extension: OncoFAIRMAComponentAdministrationStatus
Id: oncofair-ma-component-administration-status
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO

* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationAdministrationComponent"

* value[x] only code

Mapping:  mapping_OncoFAIRMAOncoFAIRMAComponentAdministrationStatus
Source:   OncoFAIRMAComponentAdministrationStatus
Id:       mapping-oncofair-oncofair-ma-component-administration-status
Title:    "Mapping de l'extension OncoFAIR MA Component Administration Status"
* value[x] -> "statut"
