/*Instance : oncofair-sp-mr-date-time-prescription-start
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRDateTimePrescriptionStart"
* description = "Search parameter to retrieve the date/time prescription start"
* code = #mr-date-time-prescription-start
* base = #MedicationRequest
* type = #date
// Testée sur fhirpath : 
* expression = "MedicationRequest.effectiveDosePeriod.start"
* processingMode = #normal*/