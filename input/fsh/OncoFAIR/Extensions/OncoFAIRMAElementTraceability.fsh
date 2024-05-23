Extension: OncoFAIRMAElementTraceability
Id: oncofair-ma-element-traceability
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationAdministrationElement"

* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationAdministrationComponent"


* extension contains
    batchNumber 0..1 and
    serialNumber 0..1
* extension[batchNumber].value[x] only string
* extension[serialNumber].value[x] only string


Mapping:  mapping_OncoFAIRMAElementTraceability
Source:   OncoFAIRMAElementTraceability
Id:       mapping-oncofair-ma-element-traceability
Title:    "Mapping de l'extension OncoFAIR MA Element Traceability"
* extension[batchNumber] -> "Lot"
* extension[serialNumber] -> "Série"

