Extension: OncoFAIRMRPrescriptionValidationDate
Id: oncofair-mr-prescription-validation-date
Description: "Extension créée dans le cadre d'OncoFAIR contenant la date et heure de la prescription" 
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] only dateTime

* . ^short = "Date and time at which the prescriber considered the prescription validated"

Mapping:  mapping_OncoFAIRMRPrescriptionValidationDate
Source:   OncoFAIRMRPrescriptionValidationDate
Id:       mapping-oncofair-mr-prescription-validation-date
Title:    "Mapping de l'extension OncoFAIR MR Prescription Date"
* value[x] -> "dateHeurePrescription"