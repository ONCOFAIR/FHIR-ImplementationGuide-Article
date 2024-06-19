Extension: OncoFAIRMAElementTraceability
Id: oncofair-ma-element-traceability
Title: "OncoFAIRMAElementTraceability"
Description: "Extension created as part of OncoFAIR containing the batch and serial number of the administered component/administration element. \r\n
Extension créée dans le cadre d'OncoFAIR contenant le numéro de lot et de série du composant administré/élément d'administration." 
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"

* extension contains
    batchNumber 0..1 and
    serialNumber 0..1
* extension[batchNumber].value[x] only string
* extension[serialNumber].value[x] only string

* extension[batchNumber].value[x] ^short = "Identification of the batch number of the administered component/administration element to ensure product traceability."
* extension[serialNumber].value[x] ^short = "Identification of the serial number of the administered component/administration element to ensure product traceability."

Mapping:  mapping_OncoFAIRMAElementTraceability
Source:   OncoFAIRMAElementTraceability
Id:       mapping-oncofair-ma-element-traceability
Title:    "Mapping de l'extension OncoFAIR MA Element Traceability"
* extension[batchNumber] -> "lot"
* extension[serialNumber] -> "serie"

