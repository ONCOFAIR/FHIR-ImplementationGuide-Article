Extension: OncoFAIRMRIsDosageReferent
Id: oncofair-mr-is-dosage-referent
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestComponent"
* value[x] only boolean


Mapping:  mapping_OncoFAIRMRIsDosageReferent
Source:   OncoFAIRMRIsDosageReferent
Id:       mapping-oncofair-mr-is-dosage-referent
Title:    "Mapping de l'extension OncoFAIR MR Is Dosage Referent"
* value[x] -> "estReferentPoso"