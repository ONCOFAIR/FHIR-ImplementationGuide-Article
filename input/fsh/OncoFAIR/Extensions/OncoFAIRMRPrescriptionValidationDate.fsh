Extension: OncoFAIRMRPrescriptionValidationDate
Id: oncofair-mr-prescription-validationdate
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestPrescription"
* value[x] only dateTime

Mapping:  mapping_OncoFAIRMRPrescriptionValidationDate
Source:   OncoFAIRMRPrescriptionValidationDate
Id:       mapping-oncofair-mr-prescription-validationdate
Title:    "Mapping de l'extension OncoFAIR MR Prescription Date"
* value[x] -> "D/H prescription"