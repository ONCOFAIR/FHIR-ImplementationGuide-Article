# Medication LTI Exemption - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication LTI Exemption**

## ValueSet: Medication LTI Exemption (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/ValueSet/vsMedicationLTIExemption | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:VSMedicationLTIExemption |

 
ValueSet for medication LTI exemption. 

 **References** 

* [Medication LTI exemption](StructureDefinition-medication-lti-exemption.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://oncofair-ig.kereval.cloud/CodeSystem/medication-lti-exemption`](CodeSystem-medication-lti-exemption.md)version 📦0.1.0

 

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
  "id" : "vsMedicationLTIExemption",
  "url" : "http://oncofair-ig.kereval.cloud/ValueSet/vsMedicationLTIExemption",
  "version" : "0.1.0",
  "name" : "VSMedicationLTIExemption",
  "title" : "Medication LTI Exemption",
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
  "description" : "ValueSet for medication LTI exemption.",
  "compose" : {
    "include" : [
      {
        "system" : "http://oncofair-ig.kereval.cloud/CodeSystem/medication-lti-exemption"
      }
    ]
  }
}

```
