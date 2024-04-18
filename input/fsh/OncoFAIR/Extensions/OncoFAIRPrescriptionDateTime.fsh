Extension: OncoFAIRPrescriptionDateTime
Id: oncofair-prescription-datetime
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] only dateTime