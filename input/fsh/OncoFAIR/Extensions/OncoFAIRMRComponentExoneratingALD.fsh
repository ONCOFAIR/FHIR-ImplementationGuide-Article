Extension: OncoFAIRMRComponentExoneratingALD
Id: oncofair-mr-component-exoneratingald
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestComponent"
* value[x] only CodeableConcept


Mapping:  mapping_OncoFAIRMRComponentExoneratingALD
Source:   OncoFAIRMRComponentExoneratingALD
Id:       mapping-oncofair-mr-component-exoneratingald
Title:    "Mapping de l'extension OncoFAIR MR Component Exonerating ALD"
* value[x] -> "ALD éxonérante"