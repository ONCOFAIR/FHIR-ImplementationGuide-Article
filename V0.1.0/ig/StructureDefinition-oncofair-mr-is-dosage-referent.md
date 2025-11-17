# OncoFAIRMRIsDosageReferent - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OncoFAIRMRIsDosageReferent**

## Extension: OncoFAIRMRIsDosageReferent 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-is-dosage-referent | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:OncoFAIRMRIsDosageReferent |

Extension created as part of OncoFAIR containing the notion of a posology reference.

Extension créée dans le cadre d'OncoFAIR contenant la notion de référence posologie.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md)
* Examples for this Extension: [MedicationRequest/Component](MedicationRequest-Component.md), [MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-oxaliplatine-diffuseur](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-oxaliplatine-diffuseur.md), [MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-uracile-diffuseur](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-uracile-diffuseur.md), [MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-uracile](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-uracile.md)...Show 2 more,[MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-vehicule-diffuseur](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-vehicule-diffuseur.md)and[MedicationRequest/OncoFAIRMedicationRequestComponent-Folfox-vehicule](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-vehicule.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ltsi.fhir.oncofair|current/StructureDefinition/oncofair-mr-is-dosage-referent)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oncofair-mr-is-dosage-referent.csv), [Excel](StructureDefinition-oncofair-mr-is-dosage-referent.xlsx), [Schematron](StructureDefinition-oncofair-mr-is-dosage-referent.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oncofair-mr-is-dosage-referent",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-is-dosage-referent",
  "version" : "0.1.0",
  "name" : "OncoFAIRMRIsDosageReferent",
  "title" : "OncoFAIRMRIsDosageReferent",
  "status" : "active",
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
  "description" : "Extension created as part of OncoFAIR containing the notion of a posology reference. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la notion de référence posologie.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "mapping-oncofair-mr-is-dosage-referent",
      "name" : "Mapping de l'extension OncoFAIR MR Is Dosage Referent"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "MedicationRequest"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "True if the component prescribed is the component that refers to the quantity or flow rate expressed in the dosage element when these are gravimetric (for example, mg or mg/h).",
        "definition" : "Extension created as part of OncoFAIR containing the notion of a posology reference. \r\n\nExtension créée dans le cadre d'OncoFAIR contenant la notion de référence posologie."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://oncofair-ig.kereval.cloud/StructureDefinition/oncofair-mr-is-dosage-referent"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mapping" : [
          {
            "identity" : "mapping-oncofair-mr-is-dosage-referent",
            "map" : "estReferentPoso"
          }
        ]
      }
    ]
  }
}

```
