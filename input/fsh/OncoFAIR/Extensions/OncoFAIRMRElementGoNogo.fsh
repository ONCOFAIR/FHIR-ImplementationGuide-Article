Extension: OncoFAIRMRElementGoNogo
Id: oncofair-mr-element-go-nogo
Description: "Extension created as part of OncoFAIR containing the concept of GoNogo. \r\n
Extension créée dans le cadre d'OncoFAIR contenant la notion de GoNogo." 
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestElement"

* extension contains
    GoNogoStatus 0..1 and
    GoNogoReasonWaiting 0..1
* extension[GoNogoStatus].value[x] only CodeableConcept
* extension[GoNogoReasonWaiting].value[x] only CodeableConcept

* extension[GoNogoStatus].value[x] ^short = "Communicates the conditional state of implementation of the prescription element according to a list of coded values"
* extension[GoNogoReasonWaiting].value[x] ^short = "Describes the reason for the goNogo implementation status of the prescription element if the management option via the goNogo attribute is enabled"

Mapping:  mapping_OncoFAIRMRElementGoNogo
Source:   OncoFAIRMRElementGoNogo
Id:       mapping-oncofair-mr-element-go-nogo
Title:    "Mapping de l'extension OncoFAIR MR Element GoNogo"
* extension[GoNogoStatus] -> "GoNogo"
* extension[GoNogoReasonWaiting] -> "Motif attente"
