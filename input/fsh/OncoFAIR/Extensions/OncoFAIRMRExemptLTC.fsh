Extension: OncoFAIRMRExemptLTC
Id: oncofair-mr-exempt-ltc
Description: "Extension created as part of OncoFAIR containing the notion of exemption. \r\n
Extension créée dans le cadre d'OncoFAIR contenant la notion d'exonération." 
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] only CodeableConcept

* . ^short = "Identifier of the ALD for which the component prescribed is prescribed for one of the reasons for which the patient benefits from an exemption under article L324-1 of the CSS."

* valueCodeableConcept from SIPhListeALDOncoFAIRValueSet (required)
Mapping:  mapping_OncoFAIRMRExemptLTC
Source:   OncoFAIRMRExemptLTC
Id:       mapping-oncofair-mr-exempt-ltc
Title:    "Mapping de l'extension OncoFAIR MR Exempt LTC"
* value[x] -> "ALDExonerante"