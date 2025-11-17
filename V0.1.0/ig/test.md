# Testing resources - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* **Testing resources**

## Testing resources

### FHIR server

A [FHIR server](https://oncofair.kereval.cloud/cqf-ruler/fhir/) is available to store example and test data flow. This server also support [CQL operations](https://cql.hl7.org/).

### Test cases

A list of test cases available for this ig is avalaible on [Gazelle](https://interop.esante.gouv.fr/tm/testing/testsDefinition/testsList.seam?testStatus=1) with the "Test Type" set to "preparatory".

### FHIR Validator

Here is the list of available FHIR validator available on [EVSClient](https://interop.esante.gouv.fr/evs/fhir/validator.seam?standard=58) :

| | | |
| :--- | :--- | :--- |
| [CarePlan](https://hl7.org/fhir/R5/careplan.html) | [OncoFAIRCarePlan](StructureDefinition-oncofair-careplan.md) | This object describes the chaining of prescription elements attached to the prescribed protocol. Its structure enables the chaining of nested sub-protocols. |
| [Encounter](https://hl7.org/fhir/R5/encounter.html) | [OncoFAIREncounter](StructureDefinition-oncofair-encounter.md) | Must be taken in the generic sense, i.e. it goes beyond hospital admissions, outpatient consultations, dialysis sessions, day hospitals, etc. |
| [Medication](https://hl7.org/fhir/R5/medication.html) | [OncoFAIRMedication](StructureDefinition-oncofair-medication.md) | This object corresponds to the prescribed medication |
| [MedicationAdministration](https://hl7.org/fhir/R5/medicationadministration.html) | [OncoFAIRMedicationAdministrationComponent](StructureDefinition-oncofair-medicationadministration-component.md) | This object corresponds to a product that belongs to the nomenclature of medicines used in the hospital. |
| [MedicationAdministration](https://hl7.org/fhir/R5/medicationadministration.html) | [OncoFAIRMedicationAdministrationElement](StructureDefinition-oncofair-medicationadministration-element.md) | Corresponds to the activity induced by a prescription item and its dosage (structured or unstructured), and carried out at a given moment. |
| [MedicationAdministration](https://hl7.org/fhir/R5/medicationadministration.html) | [OncoFAIRMedicationAdministrationReport](StructureDefinition-oncofair-medicationadministration-report.md) | Regroups all the prescription elements received on which the pharmacist expresses his validation. It also includes items suggested or resulting from a replacement proposed by the pharmacist. |
| [MedicationRequest](https://hl7.org/fhir/R5/medicationrequest.html) | [OncoFAIRMedicationRequestComponent](StructureDefinition-oncofair-medicationrequest-component.md) | Is a product that belongs to the nomenclature of medicines used. It may, for example, be a speciality, a product defined by its common name or a pharmacopoeial product. |
| [MedicationRequest](https://hl7.org/fhir/R5/medicationrequest.html) | [OncoFAIRMedicationRequestElement](StructureDefinition-oncofair-medicationrequest-element.md) | Corresponds to a prescription line on a prescription. Each item contains one or more components (in the case of a magistral preparation or an infusion). |
| [MedicationRequest](https://hl7.org/fhir/R5/medicationrequest.html) | [OncoFAIRMedicationRequestPrescription](StructureDefinition-oncofair-medicationrequest-prescription.md) | Groups together all the prescription elements validated simultaneously by the same prescriber. |
| [Observation](https://hl7.org/fhir/R5/observation.html) | [OncoFAIRObservation](StructureDefinition-oncofair-observation.md) | Allows you to enter information about the patient in addition to that described in the prescription elements. |
| [Patient](https://hl7.org/fhir/R5/patient.html) | [OncoFAIRPatient](StructureDefinition-oncofair-patient.md) | Contains the patient’s identity details needed to ensure that the prescription is properly taken into account. |
| [Condition](https://hl7.org/fhir/R5/condition.html) | [Tumor Pathology Event](StructureDefinition-dueTo-tumor-pathology-event.md) | Tumor Pathology Event (TPE) Condition describing a tumoral event: reference to the parent TPE, laterality, morphology. |
| [Clinical Trial](http://hl7.org/fhir/R5/researchstudy.html) | [Oncology Clinical Trial](StructureDefinition-clinical-trial.md) | Oncology clinical trial used to associate a Onco Patient to a Clinical Trial. |
| [Condition](https://hl7.org/fhir/R5/condition.html) | [Tumor Pathology Event](StructureDefinition-dueTo-tumor-pathology-event.md) | Tumor Pathology Event (TPE) Condition describing a tumoral event: reference to the parent TPE, laterality, morphology. |
| [Healthcare Service](http://hl7.org/fhir/R5/healthcareservice.html) | [Oncology Healthcare Service](StructureDefinition-oncology-healthcare-service.md) | Contains the Healthcare Service information. |

