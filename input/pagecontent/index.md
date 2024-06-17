### Introduction

The OncoFAIR project is designed to improve the interoperability and reuse of healthcare data in oncology, focusing on chemotherapy. This guide details the use of FHIR standards to optimize prescribing and medication administration for oncology patients.

#### Objectives

* Facilitate access to and exchange of healthcare data in oncology.
* Improve the accuracy and efficiency of patient treatment.
* Contribute to the advancement of clinical research in oncology.

#### Background 

Supported by the Brittany Region and Biotech Santé Bretagne, this project benefits from the healthcare data interoperability expertise of the Domasia team at LTSI (Rennes University Hospital) and the Kereval test engineering laboratory.

### Target audience

This guide is intended for developers, healthcare professionals and researchers involved in managing and modeling healthcare data in oncology. It is assumed that the reader is familiar with the FHIR standard.

<!--### UML diagram

This UML diagram provides an overview of the data structures, and is essential for understanding the relationships between the various FHIR resources used in the project.

<div align="center;"> 
<img src="uml_oncofair_english.svg" alt="UML class diagram representing the FHIR R5 medication prescription and administration use case" width="100%"/>-->

</div>

### Profiled FHIR resources

Each FHIR resource has been tailored to meet the specific requirements of the OncoFAIR project, with constraints on cardinalities and extensions to capture critical oncology data :

#### Profiles 

La liste ci-dessous expose la liste des profils génériques profilés.

| Resource | Profile | Description |
| ----- | ----- | ----- |
| <a href="https://hl7.org/fhir/R5/careplan.html">CarePlan</a> | [OncoFAIRCarePlan](StructureDefinition-oncofair-careplan.html) | This object describes the chaining of prescription elements attached to the prescribed protocol. Its structure enables the chaining of nested sub-protocols. |
| <a href="https://hl7.org/fhir/R5/encounter.html">Encounter</a> | [OncoFAIREncounter](StructureDefinition-oncofair-encounter.html) | Must be taken in the generic sense, i.e. it goes beyond hospital admissions, outpatient consultations, dialysis sessions, day hospitals, etc. |
| <a href="https://hl7.org/fhir/R5/medication.html">Mediaction</a> | [OncoFAIRMedication](StructureDefinition-oncofair-medication.html) | TO DO |
| <a href="https://hl7.org/fhir/R5/medicationadministration.html">MedicationAdministration</a> | [OncoFAIRMedicationAdministrationComponent](StructureDefinition-oncofair-medicationadministration-component.html) | This object corresponds to a product that belongs to the nomenclature of medicines used in the hospital. |
| <a href="https://hl7.org/fhir/R5/medicationadministration.html">MedicationAdministration</a> | [OncoFAIRMedicationAdministrationComponent](StructureDefinition-oncofair-medicationadministration-component.html) | This object corresponds to a product that belongs to the nomenclature of medicines used in the hospital. |
| <a href="https://hl7.org/fhir/R5/medicationadministration.html">MedicationAdministration</a> | [OncoFAIRMedicationAdministrationElement](StructureDefinition-oncofair-medicationadministration-element.html) | Corresponds to the activity induced by a prescription item and its dosage (structured or unstructured), and carried out at a given moment. |
| <a href="https://hl7.org/fhir/R5/medicationadministration.html">MedicationAdministration</a> | [OncoFAIRMedicationAdministrationReport](StructureDefinition-oncofair-medicationadministration-report.html) | Regroups all the prescription elements received on which the pharmacist expresses his validation. It also includes items suggested or resulting from a replacement proposed by the pharmacist. |



#### Extensions 

<!--FHIR extensions such as `TreatmentCycleNumber` and `TreatmentDayNumber` are used for oncology treatment-specific information.-->

### FHIR interaction

The following interactions can be applied:

* *Search* to search for one or more resources via search parameters. Uses the `HTTP GET` method.
* *Read* to access the current state of the resource. Uses the `HTTP GET` method.
* *Create* method to add a new resource to the server. Uses the `HTTP POST` method.
* *Update* to update an existing resource. Use the `HTTP PUT` method.

Finally, the body of HTTP requests is a FHIR resource that can be formatted in XML, JSON or RDF.

---

<!-- [Return to contents](file:///D:/Home/bguilbert/Documents/fhir/oncofair/output/toc.html "Return to contents") -->
