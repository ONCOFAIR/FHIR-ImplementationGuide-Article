Extension: MedicationType
Id: medication-type
Title: "Medication type"
Description: "Adds a type to a Medication resource"
* value[x] only CodeableConcept 
* valueCodeableConcept from VSMedicationTypes (required)
* valueCodeableConcept ^short = "Medication type. Binds with VSMedicationTypes."

Extension: MedicationStatus
Id: medication-status
Title: "Medication status"
Description: "Adds a status to a Medication resource"
* value[x] only CodeableConcept 
* valueCodeableConcept from VSMedicationStatus (required)
* valueCodeableConcept ^short = "Medication status. Binds with VSMedicationStatus."

Extension: MedicationItemProvenance
Id: medication-item-provenance
Title: "Medication item provenance"
Description: "Adds a provenance to a MedicationItem resource"
* value[x] only CodeableConcept
* valueCodeableConcept from VSMedicationItemProvenance (required)
* valueCodeableConcept ^short = "Medication item provenance. Binds with VSMedicationItemProvenance."

Extension: MedicationComment
Id: medication-comment
Title: "Medication comment"
Description: "Adds a comment to a Medication resource."
* value[x] only string

Extension: MedicationLTIExemption
Id: medication-lti-exemption
Title: "Medication LTI exemption"
Description: "Long-term illness (LTI) for which the patient can benefit from an exemption."
* value[x] only CodeableConcept
* valueCodeableConcept from VSMedicationLTIExemption (required)
* valueCodeableConcept ^short = "Medication LTI exemption. Binds with VSMedicationLTIExemption."

Extension: MedicationIsVehicle
Id: medication-is-vehicle
Title: "Medication Is Vehicle"
Description: "Indicates whether the medication is a vehicle."
* value[x] only boolean

Extension: MedicationPlannedQuantity
Id: medication-administered-planned-quantity
Title: "Planned quantity of medication"
Description: "The planned quantity of medication administered."
* value[x] only string 

Extension: MedicationAdministeredQuantity
Id: medication-administered-quantity
Title: "Administered quantity of medication"
Description: "The administered quantity of medication."
* value[x] only string 
