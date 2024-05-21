Extension: OncoFAIRMRElementGoNogo
Id: oncofair-mr-element-go-nogo
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestElement"

* extension contains
    GoNogoStatus 0..1 and
    GoNogoReasonWaiting 0..1
* extension[GoNogoStatus].value[x] only CodeableConcept
* extension[GoNogoReasonWaiting].value[x] only CodeableConcept

Mapping:  mapping_OncoFAIRMRElementGoNogo
Source:   OncoFAIRMRElementGoNogo
Id:       mapping-oncofair-mr-element-go-nogo
Title:    "Mapping de l'extension OncoFAIR MR Element GoNogo"
* extension[GoNogoStatus] -> "GoNogo"
* extension[GoNogoReasonWaiting] -> "Motif attente"
