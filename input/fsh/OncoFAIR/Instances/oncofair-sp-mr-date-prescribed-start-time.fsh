Instance : oncofair-sp-mr-date-prescribed-start-time
InstanceOf : SearchParameter
Usage : #definition

* status = #active
* name = "OncoFAIRSPMRDatePrescribedStartTime"
* description = "Search parameter to retrieve the date prescribed start time"
* code = #mr-date-prescribed-start-time
* base = #MedicationRequest
* type = #date
// Testée sur fhirpath : 
* expression = "MedicationRequest.dosageInstruction.where(id='element').timing.repeat.boundsPeriod.start"
* processingMode = #normal