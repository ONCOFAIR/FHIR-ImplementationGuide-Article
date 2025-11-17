# Medication status - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication status**

## ValueSet: Medication status (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/ValueSet/vsMedicationStatus | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:VSMedicationStatus |

 
ValueSet for medication status. 

 **References** 

* [Medication status](StructureDefinition-medication-status.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://oncofair-ig.kereval.cloud/CodeSystem/CSMedicationStatus`](CodeSystem-CSMedicationStatus.md)version 📦0.1.0

 

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
  "id" : "vsMedicationStatus",
  "url" : "http://oncofair-ig.kereval.cloud/ValueSet/vsMedicationStatus",
  "version" : "0.1.0",
  "name" : "VSMedicationStatus",
  "title" : "Medication status",
  "status" : "active",
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
  "description" : "ValueSet for medication status.",
  "compose" : {
    "include" : [
      {
        "system" : "http://oncofair-ig.kereval.cloud/CodeSystem/CSMedicationStatus"
      }
    ]
  }
}

```
