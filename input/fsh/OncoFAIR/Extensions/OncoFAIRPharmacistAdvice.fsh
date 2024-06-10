Extension: OncoFAIRPharmacistAdvice
Id: oncofair-pharmacist-advice
Description: "Extension created as part of OncoFAIR containing the validation and pharmaceutical proposal. \r\n
Extension créée dans le cadre d'OncoFAIR contenant la validation et proposition pharmaceutique." 
* ^context[+].type = #element
* ^context[=].expression = "CarePlan"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* extension contains
    pharmacistValidation 0..1 and
    pharmacistProposal 0..1
* extension[pharmacistValidation].value[x] only CodeableConcept
* extension[pharmacistProposal].value[x] only CodeableConcept

* extension[pharmacistValidation].value[x] ^short = "Indicates the pharmacist's opinion on a prescription/prescribed protocol sent to him/her"
* extension[pharmacistProposal].value[x] ^short = "Characterises a prescription/prescribed protocol added by the pharmacist, either as a proposed replacement or as a suggestion."

* extension[pharmacistValidation].valueCodeableConcept from SIPhStatutValidPharmOncoFAIRValueSet (required)
* extension[pharmacistProposal].valueCodeableConcept from SIPhNaturePropPharmOncoFAIRValueSet (required)

Mapping:  mapping_OncoFAIRPharmacistAdvice
Source:   OncoFAIRPharmacistAdvice
Id:       mapping-oncofair-pharmacist-advice
Title:    "Mapping de l'extension OncoFAIR Pharmacist Advice"
* extension[pharmacistValidation] -> "validationPharmaceutique"
* extension[pharmacistProposal] -> "propositionPharmaceutique"
