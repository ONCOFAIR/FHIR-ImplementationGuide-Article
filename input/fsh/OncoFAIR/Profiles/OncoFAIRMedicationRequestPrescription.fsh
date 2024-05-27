Profile: OncoFAIRMedicationRequestPrescription
Parent: MedicationRequest
Id: oncofair-medicationrequest-prescription
Title: "OncoFAIR MedicationRequest Prescription"
Description : "Groups together all the prescription elements validated simultaneously by the same prescriber. \r\n
Regroupe l’ensemble des éléments de prescription validés simultanément par un même prescripteur." 

* encounter 1..1 MS
* encounter only Reference(OncoFAIREncounter)
* encounter ^short = "The encounter linked to the prescription"

* reason MS
* reason only CodeableReference(OncoFAIRObservation)
* reason ^short = "The observation linked to the prescription"

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
* supportingInformation[accomodationUnit] ^short = "This is the unit that houses the patient"
* supportingInformation[medicalLiabiltyUnit].id = "medicalLiabiltyUnit"
* supportingInformation[medicalLiabiltyUnit] ^short = "This is the unit which assumes medical responsibility for the patient's care"
* supportingInformation[medicalLiabiltyUnit] only Reference(HealthcareService)

* identifier 1..1 MS
* identifier.value 1..1
* identifier ^short = "Unique prescription identifier"

* medication MS
* medication.concept.coding.code = #prescription

* note 0..1 MS
* note ^short = "Default comment on the prescription by the prescribing doctor"

* extension contains
    OncoFAIRMRPrescriptionValidationDate named oncofair-mr-prescription-validation-date 1..1 MS


Mapping:  mapping_OncoFAIRMedicationRequestPrescription
Source:   OncoFAIRMedicationRequestPrescription
Id:       mapping-oncofair-medicationrequest-prescription
Title:    "Mapping du profil OncoFAIR MedicationRequest Prescription"
* -> "Prescription"

* encounter -> "Sejour"
* reason -> "RenseignementComplementaire"
* basedOn -> "ProtocolePrescrit"

* supportingInformation[accomodationUnit] -> "uniteHebergement"
* supportingInformation[medicalLiabiltyUnit] ->  "uniteResponsabiliteMedicale"
* extension[oncofair-mr-prescription-validation-date] -> "dateHeurePrescription"

* identifier -> "idPrescription"

* note -> "commentaires"
