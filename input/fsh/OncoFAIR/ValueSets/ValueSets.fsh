ValueSet: VSMedicalUnits
Id: vsMedicalUnits
Title: "Medical units"
Description: "ValueSet for medical units (accommodation, medical liability unit)."
* ^experimental = true
* codes from system CSMedicalUnits

ValueSet: VSPrescriptionCategory
Id: vsPrescriptionCategory
Title: "Prescription status"
Description: "ValueSet for PlanDefinition types, extended to include creation, stop, modification and validation."
* ^experimental = true
* include codes from system http://hl7.org/fhir/ValueSet/plan-definition-type
* codes from system CSPrescriptionCategory

ValueSet: VSCommunicationModes
Id: vsCommunicationModes
Title: "Communication modes"
Description: "ValueSet for communication modes (incremental, summary)."
* ^experimental = true
* codes from system CSCommunicationModes

ValueSet: VSLOINC
Id: vsLOINC
Title: "LOINC codes"
Description: "ValueSet of LOINC codes."
* ^experimental = true
* codes from system CSLOINC

ValueSet: VSMedicationTypes
Id: vsMedicationTypes
Title: "Medication types"
Description: "ValueSet for medication types."
* ^experimental = true
* codes from system CSMedicationTypes

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
