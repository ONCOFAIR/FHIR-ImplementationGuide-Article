Instance : oncofair-sp-mr-date-time-prescription-end
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRDateTimePrescriptionEnd"
* description = "Search parameter to retrieve the date/time prescription end"
* code = #mr-date-time-prescription-end
* base = #MedicationRequest
* type = #date
// Testée sur fhirpath : 
* expression = "MedicationRequest.effectiveDosePeriod.end"
* processingMode = #normal