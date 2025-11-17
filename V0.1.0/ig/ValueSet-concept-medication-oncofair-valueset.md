# Concepts Medication Value Set - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Concepts Medication Value Set**

## ValueSet: Concepts Medication Value Set (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/ValueSet/concept-medication-oncofair-valueset | *Version*:0.1.0 |
| Draft as of 2025-11-17 | *Computable Name*:ConceptMedicationOncoFAIRValueSet |

 
Value Set pour différiencier les niveaux de MR/MA 

 **References** 

* [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md)
* [OncoFAIR MedicationAdministration Element](StructureDefinition-oncofair-medicationadministration-element.md)
* [OncoFAIR MedicationAdministration Report](StructureDefinition-oncofair-medicationadministration-report.md)
* [OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md)
* [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md)
* [OncoFAIR MedicationRequest Prescription](StructureDefinition-oncofair-medicationrequest-prescription.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://oncofair-ig.kereval.cloud/CodeSystem/concept-medication-oncofair-codesystem`](CodeSystem-concept-medication-oncofair-codesystem.md)version 📦0.1.0

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "concept-medication-oncofair-valueset",
  "url" : "http://oncofair-ig.kereval.cloud/ValueSet/concept-medication-oncofair-valueset",
  "version" : "0.1.0",
  "name" : "ConceptMedicationOncoFAIRValueSet",
  "title" : "Concepts Medication Value Set",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-11-17T09:12:37+00:00",
  "publisher" : "KEREVAL and DOMASIA team of the Signal and Image Processing Laboratory (LTSI)",
  "contact" : [
    {
      "name" : "KEREVAL and DOMASIA team of the Signal and Image Processing Laboratory (LTSI)",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/ONCOFAIR"
        }
      ]
    }
  ],
  "description" : "Value Set pour différiencier les niveaux de MR/MA",
  "compose" : {
    "include" : [
      {
        "system" : "http://oncofair-ig.kereval.cloud/CodeSystem/concept-medication-oncofair-codesystem"
      }
    ]
  }
}

```
