Extension: OncoFAIRMRPrescriptionDateTime
Id: oncofair-mr-prescription-datetime
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestPrescription"
* value[x] only dateTime