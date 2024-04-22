Profile: OncoFAIRMedicationRequestPrescription
Parent: MedicationRequest
Id: oncofair-medicationrequest-prescription
Title: "OncoFAIR MedicationRequest Prescription"
Description : "OncoFAIR MedicationRequest Prescription" //TODO

* encounter 1..1 MS
* encounter only Reference(OncoFAIREncounter)
* encounter ^short = "The encounter linked to the prescription"

* reason MS
* reason only CodeableReference(OncoFAIRObservation)

* basedOn MS
* basedOn only Reference(OncoFAIRCarePlan)
* basedOn ^short = "The protocol linked to the prescription"

* supportingInformation MS
* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "id"
* supportingInformation ^slicing.rules = #open
* supportingInformation contains
    accomodationUnit 0..1 and
    medicalLiabiltyUnit 0..1
* supportingInformation[accomodationUnit].id = "accomodationUnit"
* supportingInformation[accomodationUnit] only Reference(HealthcareService)
* supportingInformation[medicalLiabiltyUnit].id = "medicalLiabiltyUnit"
* supportingInformation[medicalLiabiltyUnit] only Reference(HealthcareService)

* identifier 1..1 MS
* identifier.value 1..1
* identifier ^short = "The prescription's identifier"

* note MS

* extension contains
    OncoFAIRMRPrescriptionDateTime named oncofair-mr-prescription-datetime 1..1 MS


Mapping:  mapping_OncoFAIRMedicationRequestPrescription
Source:   OncoFAIRMedicationRequestPrescription
Id:       mapping-oncofair-medicationrequest-prescription
Title:    "Mapping du profil OncoFAIR MedicationRequest Prescription"
* -> "PRESCRIPTION"

* encounter -> "Lien classe SEJOUR"
* reason -> "Lien classe RENSEIGNEMENT COMPLEMENTAIRE"
* basedOn -> "Lien classe PROTOCOLE"

* supportingInformation[accomodationUnit] -> "Unité hébergement"
* supportingInformation[medicalLiabiltyUnit] ->  "Unité responsabilité médicale"

* identifier -> "Id. prescription"

* note -> "Commentaires"
