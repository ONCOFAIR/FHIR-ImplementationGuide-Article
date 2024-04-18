Profile: OncoFAIRObservation
Parent: Observation
Id: oncofair-observation
Title: "OncoFAIR Observation"
Description: "Additional information, such as height or weight."

/*
* subject 1..1 MS
* subject ^short = "The subject of the additional information"
* code MS 
* code ^short = "LOINC code representing the additional information"
* issued 1..1 MS 
* issued ^short = "Date and time of registration of additional information"
* value[x] 1..1 MS
* valueQuantity.value 1..1
* valueQuantity.value ^short = "Value of the the additional information"
* valueQuantity.unit 1..1 
* valueQuantity.unit ^short = "Unit of the the additional information"
*/