Profile: OncoFAIRMedicationAdministrationElement
Parent: MedicationAdministration
Id: oncofair-medicationadministration-element
Title: "OncoFAIR MedicationAdministration Element"
Description: "Corresponds to the activity induced by a prescription item and its dosage (structured or unstructured), and carried out at a given moment." 

* partOf 1..1 MS
* partOf only Reference(OncoFAIRMedicationAdministrationReport)

* device MS
* request MS

* identifier MS
* identifier.value ^short = "Identifier of the administration report"

* dosage MS
* occurencePeriod MS
* occurencePeriod.start 1..1
* occurencePeriod ^short = "Specific date/time or interval of time during which the administration took place (or did not take place)"

* category MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "system"
* category ^slicing.rules = #open
* category contains
    code 0..1 and
    form 0..1 and
    nature 0..1

* note MS
* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "id"
* note ^slicing.rules = #open
* note contains
    description 1..1 and
    comment 0..1
* note[description].id = "description"
* note[comment].id = "comment"

* extension contains
        OncoFAIRMAElementUrgent named oncofair-ma-element-urgent 0..1 MS and
        OncoFAIRMAElementExpirationDate named oncofair-ma-element-expirationdate 0..1 and
        OncoFAIRMAElementTraceability named oncofair-ma-element-traceability 0..1 and
        OncoFAIRMAElementPlannedPeriod named oncofair-ma-plannedperiod 1..1


Mapping:  mapping_OncoFAIRMedicationAdministrationElement
Source:   OncoFAIRMedicationAdministrationElement
Id:       mapping-oncofair-medicationradministration-element
Title:    "Mapping du profil OncoFAIR MedicationAdministration Element"
* -> "ELEMENT ADMINISTRATION"

* partOf -> "COMPTE RENDU D'ADMINISTRATION"
* device -> "Dispositifs associés"
* request -> "ELEMENT PRESCRIPTION"

* identifier -> "Id. élément administration"

* category -> "Code élément administration"

* dosage.method -> "Type élément administration"
* dosage.route -> "Voie administration"
* dosage.site -> "Lieu administration"

* occurencePeriod.start -> "D/H début effective"
* occurencePeriod.end -> "D/H fin effective"

* category[code] -> "Code élément administration"
* category[form] -> "Forme"
* category[nature] -> "Présentation"

* note[description] -> "Libellé élément administration"
* note[comment] -> "Commentaires"
