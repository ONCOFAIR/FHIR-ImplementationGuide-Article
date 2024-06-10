Extension: OncoFAIRMAElementExpirationDate
Id: oncofair-ma-element-expirationdate
Description: "Extension created as part of OncoFAIR containing the expiry date of the component administered. \r\n
Extension créée dans le cadre d'OncoFAIR contenant la date de péremption du composant administré." 
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"

* value[x] only dateTime

* . ^short = "Expiry date of administered component"


Mapping:  mapping_OncoFAIRMAElementExpirationDate
Source:   OncoFAIRMAElementExpirationDate
Id:       mapping-oncofair-ma-element-expirationdate
Title:    "Mapping de l'extension OncoFAIR MA Element ExpirationDate"
* value[x] -> "datePeremption"
