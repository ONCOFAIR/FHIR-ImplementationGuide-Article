Instance: OncoFAIRMedication-folfox
InstanceOf: OncoFAIRMedication
Title: "Example OncoFAIR Medication"
Description: "An example instance of an OncoFAIR Medication with required fields populated."
Usage: #example

* code.coding[0].system = "http://snomed.info/sct" //Voir pour un JDV interne
* code.coding[0].code = #Folfox
* code.coding[0].display = "Folfox"


* totalVolume.value = 200
* totalVolume.unit = "ml"
* totalVolume.system = "http://unitsofmeasure.org"

* doseForm = #1208958005 "Solution for infusion and/or injection"

* ingredient[+].item = Reference(OncoFAIRMedication-fluoro-uracile)
* ingredient[=].isActive = true
* ingredient[=].strengthRatio.numerator.value = 5
* ingredient[=].strengthRatio.numerator.unit = "mg"
* ingredient[=].strengthRatio.numerator.code = #mg
* ingredient[=].strengthRatio.numerator.system = "http://unitsofmeasure.org"

* ingredient[=].strengthRatio.denominator.value = 3
* ingredient[=].strengthRatio.denominator.unit = "hours"
* ingredient[=].strengthRatio.denominator.code = #h
* ingredient[=].strengthRatio.denominator.system = "http://unitsofmeasure.org"


* ingredient[+].item = Reference(OncoFAIRMedication-oxaliplatine)
* ingredient[=].isActive = true
* ingredient[=].strengthRatio.numerator.value = 20
* ingredient[=].strengthRatio.numerator.unit = "mg"
* ingredient[=].strengthRatio.numerator.code = #mg
* ingredient[=].strengthRatio.numerator.system = "http://unitsofmeasure.org"

* ingredient[=].strengthRatio.denominator.value = 3
* ingredient[=].strengthRatio.denominator.unit = "hours"
* ingredient[=].strengthRatio.denominator.code = #h
* ingredient[=].strengthRatio.denominator.system = "http://unitsofmeasure.org"

* ingredient[+].item = Reference(OncoFAIRMedication-NACL)
* ingredient[=].strengthQuantity.value = 200
* ingredient[=].strengthQuantity.unit = "ml"
* ingredient[=].strengthQuantity.system = "http://unitsofmeasure.org"


* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #395814003
* code.coding[0].display = "Oxaliplatin"

* extension[oncofair-medication-type].valueCodeableConcept.coding.system[0] = "http://ltsi.univ-rennes.fr/CodeSystem/siph-typecomposant-oncofair-codesystem"
* extension[oncofair-medication-type].valueCodeableConcept.coding.code[0] = #PRAC 
* extension[oncofair-medication-type].valueCodeableConcept.coding.display[0] = "principe actif"
