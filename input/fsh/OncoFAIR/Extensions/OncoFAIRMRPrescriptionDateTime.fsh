Extension: OncoFAIRMRPrescriptionDateTime
Id: oncofair-mr-prescription-datetime
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestPrescription"
* value[x] only dateTime

Mapping:  mapping_OncoFAIRMRPrescriptionDateTime
Source:   OncoFAIRMRPrescriptionDateTime
Id:       mapping-oncofair-mr-prescription-datetime
Title:    "Mapping de l'extension OncoFAIR MR Element Rank"
* value[x] -> "D/H prescription"