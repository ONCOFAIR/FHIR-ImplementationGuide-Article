### Validateurs FHIR

Here is the list of available FHIR validator available on [EVSClient](https://oncofair.kereval.cloud/evs) :

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tableau HL7</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
            text-align: left;
        }
    </style>
</head>
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
            <td>TO DO</td>
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
    </tbody>
</table>

</body>
</html>


### Serveur FHIR

Un [serveur FHIR](https://oncofair.kereval.cloud/cqf-ruler/fhir/) est disponible pour stocker les ressources FHIR échangées.
Ce même serveur prend en compte les opérations issues de [CQL](https://cql.hl7.org/)

### Cas de test
Une liste des cas de test associés à la mise en place de cet IG est disponible sur la [plateforme Gazelle](https://oncofair.kereval.cloud/)