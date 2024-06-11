ValueSet: VSMedicalUnits
Id: vsMedicalUnits
Title: "Medical units"
Description: "ValueSet for medical units (accommodation, medical liability unit)."
* ^experimental = true
* codes from system CSMedicalUnits

ValueSet: VSPrescriptionCategory
Id: vsPrescriptionCategory
Title: "Prescription status"
Description: "ValueSet for PlanDefinition types, extended to include Création, Arrêt, Modification and Validation."
* ^experimental = true
* include codes from system http://hl7.org/fhir/ValueSet/plan-definition-type
* codes from system CSPrescriptionCategory

ValueSet: VSCommunicationModes
Id: vsCommunicationModes
Title: "Communication modes"
Description: "ValueSet for communication modes (Incrémental, Récapitulatif)."
* ^experimental = true
* codes from system CSCommunicationModes

ValueSet: VSLOINC
Id: vsLOINC
Title: "LOINC codes"
Description: "ValueSet of LOINC codes."
* ^experimental = true
* codes from system CSLOINC

ValueSet: VSMedications
Id: vsMedications
Title: "Medications"
Description: "ValueSet for medications."
* ^experimental = true
* codes from system CSMedications

ValueSet: VSSCT
Id: vsSCT
Title: "SNOMED CT codes"
Description: "ValueSet of SNOMED CT codes."
* ^experimental = true
* codes from system CSSCT

ValueSet: VSMedicationTypes
Id: vsMedicationTypes
Title: "Medication types"
Description: "ValueSet for medication types."
* ^experimental = true
* codes from system CSMedicationTypes

ValueSet: VSMedicationStatus
Id: vsMedicationStatus
Title: "Medication status"
Description: "ValueSet for medication status."
* ^experimental = true
* codes from system CSMedicationStatus

ValueSet: VSMedicationItemProvenance
Id: vsMedicationItemProvenance
Title: "Medication item provenance"
Description: "ValueSet for medication item provenance."
* ^experimental = true
* codes from system CSMedicationItemProvenance

ValueSet: VSMedicationLTIExemption
Id: vsMedicationLTIExemption
Title: "Medication LTI Exemption"
Description: "ValueSet for medication LTI exemption."
* ^experimental = true
* codes from system CSMedicationLTIExemption

ValueSet: VSEventTypeData
Id: VSEventTypeData
Title: "Event Types Data"
Description: "ValueSet for various event types used in French healthcare systems."
* ^experimental = true
* codes from system CSEventTypeData
