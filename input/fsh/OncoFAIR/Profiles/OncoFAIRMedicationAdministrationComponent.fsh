Profile: OncoFAIRMedicationAdministrationComponent
Parent: MedicationAdministration
Id: oncofair-medicationadministration-component
Title: "OncoFAIR MedicationAdministration Component"
Description: "OncoFAIR MedicationAdministration Component" //TODO

* partOf 1..1 MS
* partOf only Reference(OncoFAIRMedicationAdministrationElement)

* medication MS
* medication only CodeableReference(OncoFAIRMedication)
