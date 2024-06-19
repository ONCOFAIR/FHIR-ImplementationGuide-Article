Extension: OncoFAIRMAComponentAdministrationStatus
Id: oncofair-ma-component-administration-status
Title: "OncoFAIRMAComponentAdministrationStatus"
Description: "Extension created as part of OncoFAIR containing the administration status of the administered component. \r\n
Extension créée dans le cadre d'OncoFAIR contenant le statut d'administration du composant administré."

* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* value[x] only CodeableConcept
* . ^short = "Specifies whether the component administered was actually administered to the patient or not."

* valueCodeableConcept from SIPhStatutComposantAdmOncoFAIRValueSet (required)

Mapping:  mapping_OncoFAIRMAOncoFAIRMAComponentAdministrationStatus
Source:   OncoFAIRMAComponentAdministrationStatus
Id:       mapping-oncofair-oncofair-ma-component-administration-status
Title:    "Mapping de l'extension OncoFAIR MA Component Administration Status"
* value[x] -> "statut"
