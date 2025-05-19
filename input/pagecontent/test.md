### FHIR server

A [FHIR server](https://oncofair.kereval.cloud/cqf-ruler/fhir/) is available to store example and test data flow.
This server also support [CQL operations](https://cql.hl7.org/).

### Test cases
A list of test cases available for this ig is avalaible on [Gazelle](https://interop.esante.gouv.fr/gazelle/testing/testsDefinition/testsList.seam?testStatus=1) with the "Test Type" set to "preparatory".

### FHIR Validator

Here is the list of available FHIR validator available on [EVSClient](https://interop.esante.gouv.fr/evs/fhir/validator.seam?standard=58) :

<html lang="en">
<body>

<table>
    <thead>
        <tr>
            <th>Resource</th>
            <th>Profile</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/careplan.html">CarePlan</a></td>
            <td><a href="StructureDefinition-oncofair-careplan.html">OncoFAIRCarePlan</a></td>
            <td>This object describes the chaining of prescription elements attached to the prescribed protocol. Its structure enables the chaining of nested sub-protocols.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/encounter.html">Encounter</a></td>
            <td><a href="StructureDefinition-oncofair-encounter.html">OncoFAIREncounter</a></td>
            <td>Must be taken in the generic sense, i.e. it goes beyond hospital admissions, outpatient consultations, dialysis sessions, day hospitals, etc.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/medication.html">Medication</a></td>
            <td><a href="StructureDefinition-oncofair-medication.html">OncoFAIRMedication</a></td>
            <td>This object corresponds to the prescribed medication</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/medicationadministration.html">MedicationAdministration</a></td>
            <td><a href="StructureDefinition-oncofair-medicationadministration-component.html">OncoFAIRMedicationAdministrationComponent</a></td>
            <td>This object corresponds to a product that belongs to the nomenclature of medicines used in the hospital.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/medicationadministration.html">MedicationAdministration</a></td>
            <td><a href="StructureDefinition-oncofair-medicationadministration-element.html">OncoFAIRMedicationAdministrationElement</a></td>
            <td>Corresponds to the activity induced by a prescription item and its dosage (structured or unstructured), and carried out at a given moment.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/medicationadministration.html">MedicationAdministration</a></td>
            <td><a href="StructureDefinition-oncofair-medicationadministration-report.html">OncoFAIRMedicationAdministrationReport</a></td>
            <td>Regroups all the prescription elements received on which the pharmacist expresses his validation. It also includes items suggested or resulting from a replacement proposed by the pharmacist.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/medicationrequest.html">MedicationRequest</a></td>
            <td><a href="StructureDefinition-oncofair-medicationrequest-component.html">OncoFAIRMedicationRequestComponent</a></td>
            <td>Is a product that belongs to the nomenclature of medicines used. It may, for example, be a speciality, a product defined by its common name or a pharmacopoeial product.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/medicationrequest.html">MedicationRequest</a></td>
            <td><a href="StructureDefinition-oncofair-medicationrequest-element.html">OncoFAIRMedicationRequestElement</a></td>
            <td>Corresponds to a prescription line on a prescription. Each item contains one or more components (in the case of a magistral preparation or an infusion).</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/medicationrequest.html">MedicationRequest</a></td>
            <td><a href="StructureDefinition-oncofair-medicationrequest-prescription.html">OncoFAIRMedicationRequestPrescription</a></td>
            <td>Groups together all the prescription elements validated simultaneously by the same prescriber.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/observation.html">Observation</a></td>
            <td><a href="StructureDefinition-oncofair-observation.html">OncoFAIRObservation</a></td>
            <td>Allows you to enter information about the patient in addition to that described in the prescription elements.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/patient.html">Patient</a></td>
            <td><a href="StructureDefinition-oncofair-patient.html">OncoFAIRPatient</a></td>
            <td>Contains the patient’s identity details needed to ensure that the prescription is properly taken into account.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/condition.html">Condition</a></td>
            <td><a href="StructureDefinition-dueTo-tumor-pathology-event.html">Tumor Pathology Event</a></td>
            <td>Tumor Pathology Event (TPE) Condition describing a tumoral event: reference to the parent TPE, laterality, morphology.</td>
        </tr>
         <tr>
            <td><a href="http://hl7.org/fhir/R5/researchstudy.html">Clinical Trial</a></td>
            <td><a href="StructureDefinition-clinical-trial.html">Oncology Clinical Trial</a></td>
            <td>Oncology clinical trial used to associate a Onco Patient to a Clinical Trial.</td>
        </tr>
        <tr>
            <td><a href="https://hl7.org/fhir/R5/condition.html">Condition</a></td>
            <td><a href="StructureDefinition-dueTo-tumor-pathology-event.html">Tumor Pathology Event</a></td>
            <td>Tumor Pathology Event (TPE) Condition describing a tumoral event: reference to the parent TPE, laterality, morphology.</td>
        </tr>
        <tr>
            <td><a href="http://hl7.org/fhir/R5/healthcareservice.html">Healthcare Service</a></td>
            <td><a href="StructureDefinition-oncology-healthcare-service.html">Oncology Healthcare Service</a></td>
            <td>Contains the Healthcare Service information.</td>
        </tr>
    </tbody>
</table>
</body>
</html>