Profile: OncoFAIRMedicationRequestComponent
Parent: MedicationRequest
Id: oncofaire-medicationrequest-component
Title: "OncoFAIR MedicationRequest Component"
Description : "OncoFAIR MedicationRequest Component" //TODO

* basedOn 1..1 MS
* basedOn only Reference(OncoFAIRMedicationRequestElement)

* medication MS
* medication only CodeableReference(OncoFAIRMedication)