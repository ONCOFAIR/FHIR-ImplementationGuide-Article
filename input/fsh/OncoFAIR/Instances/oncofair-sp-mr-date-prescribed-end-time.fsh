Instance : oncofair-sp-mr-date-prescribed-end-time
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRDatePrescribedEndTime"
* description = "Search parameter to retrieve the date prescribed end time"
* code = #mr-date-prescribed-end-time
* base = #MedicationRequest
* type = #date
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.where(id='element').timing.repeat.boundsPeriod.end"
* processingMode = #normal