Profile: OncoFAIRMedicationAdministrationElement
Parent: MedicationAdministration
Id: oncofair-medicationadministration-element
Title: "OncoFAIR MedicationAdministration Element"
Description: "Corresponds to the activity induced by a prescription item and its dosage (structured or unstructured), and carried out at a given moment. \r\n
Correspond à l’activité induite par un élément de prescription et sa posologie (structurée ou non), et réalisée à un instant donné." 

* partOf 1..1 MS
* partOf only Reference(OncoFAIRMedicationAdministrationReport)
* partOf ^short = "The medication administration report linked to the element of administration"

* medication from ConceptMedicationOncoFAIRValueSet (required)
* medication.concept.coding = #element

* device MS
* device ^short = "Specifies, where applicable, the medical devices or equipment to be used to administer the product. By default, the associated devices are those listed in the prescription element associated with the administration element"
* request MS
* request.identifier ^short = "Unique identifier of the prescription element to which this administration element responds"

* identifier 1..1 MS
* identifier ^short = "Unique identifier of the administration element in the HIS."

* occurencePeriod MS
* occurencePeriod.start 1..1
* occurencePeriod.start ^short = "Actual start date and time of administration of the administration element"
* occurencePeriod.end ^short = "Effective date and time for ending administration of the administration element"

* dosage MS
* dosage.method ^short = "Type of administration element. Must be used to differentiate between management processes adapted to different types of drug treatment."
* dosage.method from SIPhTypeEltPLAOncoFAIRValueSet (required)

* dosage.route ^short = "Specifies the route of administration of the product. By default, it is the one shown in the prescription element associated with the administration element."
//* dosage.route from VoieAdministrationValueSet (required)

* dosage.site ^short = "Specifies, where applicable, the exact point on the body where the product is to be applied to the patient. By default, the place of administration is that shown in the prescription element associated with the administration element"


* category MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "system"
* category ^slicing.rules = #open
* category contains
    code 0..1 and 
    nature 0..1


* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "id"
* note ^slicing.rules = #open
* note contains
    wording 1..1 and
    comments 0..1

* note[wording].id = "wording"
* note[wording] ^short = "Wording of the administration element"
* note[comments].id = "comments"
* note[comments] ^short = "Comment attached to the administration element"

* extension contains
        OncoFAIRMAElementUrgent named oncofair-ma-element-urgent 0..1 MS and
        OncoFAIRMAElementExpirationDate named oncofair-ma-element-expirationdate 0..1 and
        OncoFAIRMAElementTraceability named oncofair-ma-element-traceability 0..1 and
        OncoFAIRMAElementPlannedPeriod named oncofair-ma-plannedperiod 1..1 and
        OncoFAIRElementForm named oncofair-element-form 0..1


/*category[code] ^short = "Code identifying the nature of the administration element"
category[nature] ^short = "Nature of the primary packaging of the delivery element"*/


Mapping:  mapping_OncoFAIRMedicationAdministrationElement
Source:   OncoFAIRMedicationAdministrationElement
Id:       mapping-oncofair-medicationradministration-element
Title:    "Mapping du profil OncoFAIR MedicationAdministration Element"
* -> "ElementAdministration"

* partOf -> "CompteRenduAdministration"
* device -> "dispositifsAssocies"
* request -> "ElementPrescription"

* identifier -> "idElementAdministration"

* category -> "codeElementAdministration"

* dosage.method -> "typeElementAdministration"
* dosage.route -> "voieAdministration"
* dosage.site -> "lieuAdministration"

* occurencePeriod.start -> "dateHeureDebutEffective"
* occurencePeriod.end -> "dateHeureFinEffective"

* category[code] -> "codeElementAdministration"
* category[nature] -> "presentation"

* note[wording] -> "libelleElementAdministration"
* note[comments] -> "commentaires"
