Extension: OncoFAIRMRExemptLTC
Id: oncofair-mr-exempt-ltc
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestComponent"
* value[x] only CodeableConcept


Mapping:  mapping_OncoFAIRMRExemptLTC
Source:   OncoFAIRMRExemptLTC
Id:       mapping-oncofair-mr-exempt-ltc
Title:    "Mapping de l'extension OncoFAIR MR Exempt LTC"
* value[x] -> "ALDExonerante"