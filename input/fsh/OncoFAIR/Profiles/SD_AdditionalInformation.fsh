Profile: AdditionalInformation
Parent: Observation
Id: additional-information
Title: "Additional Information"
Description: "Additional information, such as height or weight."
* ^url = "http://ltsi.univ-rennes.fr/StructureDefinition/AdditionalInformation"
* subject 1..1 MS
* subject ^short = "The subject of the additional information"
* code 1..1 MS 
* code ^short = "LOINC code representing the additional information"
* effectiveDateTime MS
* effectiveDateTime ^short = "Date and time of recording of the additional information"
* issued MS 
* issued ^short = "Date and time this version was made available"
* value[x] 1..1 MS
* valueQuantity.value 1..1
* valueQuantity.value ^short = "Value of the the additional information"
* valueQuantity.unit 1..1 
* valueQuantity.unit ^short = "Unit of the the additional information"