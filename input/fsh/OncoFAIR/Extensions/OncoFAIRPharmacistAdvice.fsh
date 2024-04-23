Extension: OncoFAIRPharmacistAdvice
Id: oncofair-pharmacist-advice
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRCarePlan"
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMRElement"

* extension contains
    pharmacistValidation 0..1 and
    pharmacistProposal 0..1
* extension[pharmacistValidation].value[x] only CodeableConcept
* extension[pharmacistProposal].value[x] only CodeableConcept


Mapping:  mapping_OncoFAIRPharmacistAdvice
Source:   OncoFAIRPharmacistAdvice
Id:       mapping-oncofair-pharmacist-advice
Title:    "Mapping de l'extension OncoFAIR Pharmacist Advice"
* extension[pharmacistValidation] -> "Validation pharmaceutique"
* extension[pharmacistProposal] -> "Proposition pharmaceutique"
