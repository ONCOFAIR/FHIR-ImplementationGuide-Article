Extension: OncoFAIRMRIdLinkedItem
Id: oncofair-mr-id-linked-item
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationRequestElement"
*value[x] only CodeableConcept

Mapping:  mapping_OncoFAIRMRIdLinkedItem
Source:   OncoFAIRMRIdLinkedItem
Id:       mappingoncofair-mr-id-linked-item
Title:    "Mapping de l'extension OncoFAIR MR Id Linked Item"
* value[x] -> "idElementLie"
