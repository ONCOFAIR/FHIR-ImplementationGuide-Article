Extension: OncoFAIRCPPharmacist
Id: oncofair-cp-Pharmacist
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRCarePlan"

* extension contains
    pharmacistValidation 0..1 and
    pharmacistProposal 0..1
* extension[pharmacistValidation].value[x] only CodeableConcept
* extension[pharmacistProposal].value[x] only CodeableConcept


Mapping:  mapping_OncoFAIRCPPharmacist
Source:   OncoFAIRCPPharmacist
Id:       mapping-oncofair-cp-Pharmacist
Title:    "Mapping de l'extension OncoFAIR CP Pharmacist"
* -> "PROTOCOLE PRESCRIT"
* extension[pharmacistValidation] -> "Validation pharmaceutique"
* extension[pharmacistProposal] -> "Proposition pharmaceutique"
