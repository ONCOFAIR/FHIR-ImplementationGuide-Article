Extension: OncoFAIRMAElementExpirationDate
Id: oncofair-ma-element-expirationdate
Description: "Extension créée dans le cadre d'OncoFAIR" //TODO
* ^context[+].type = #element
* ^context[=].expression = "OncoFAIRMedicationAdministrationElement"
* value[x] only dateTime


Mapping:  mapping_OncoFAIRMAElementExpirationDate
Source:   OncoFAIRMAElementExpirationDate
Id:       mapping-oncofair-ma-element-expirationdate
Title:    "Mapping de l'extension OncoFAIR MA Element ExpirationDate"
* -> "ELEMENT D'ADMINISTRATION"
* value[x] -> "Date péremption"
