Extension: OncoFAIRMRIsDosageReferent
Id: oncofair-mr-is-dosage-referent
Description: "Extension created as part of OncoFAIR containing the notion of a posology reference. \r\n
Extension créée dans le cadre d'OncoFAIR contenant la notion de référence posologie." 
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] only boolean

* . ^short = "True if the component prescribed is the component that refers to the quantity or flow rate expressed in the dosage element when these are gravimetric (for example, mg or mg/h)."


Mapping:  mapping_OncoFAIRMRIsDosageReferent
Source:   OncoFAIRMRIsDosageReferent
Id:       mapping-oncofair-mr-is-dosage-referent
Title:    "Mapping de l'extension OncoFAIR MR Is Dosage Referent"
* value[x] -> "estReferentPoso"