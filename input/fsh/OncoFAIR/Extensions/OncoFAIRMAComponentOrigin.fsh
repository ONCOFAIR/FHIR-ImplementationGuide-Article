Extension: OncoFAIRMAComponentOrigin
Id: oncofair-ma-component-origin
Description: "Extension created as part of OncoFAIR containing the origin of the administered component. \r\n
Extension créée dans le cadre d'OncoFAIR contenant la provenance du composant administré." 
Context : OncoFAIRMedicationAdministrationComponent

* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* value[x] only CodeableConcept
* . ^short = "Specifies the origin of the component administered"

Mapping:  mapping_OncoFAIRMAComponentOrigin
Source:   OncoFAIRMAComponentOrigin
Id:       mapping-oncofair-ma-component-origin
Title:    "Mapping de l'extension OncoFAIR MA Component Origin"
* value[x] -> "provenance"
