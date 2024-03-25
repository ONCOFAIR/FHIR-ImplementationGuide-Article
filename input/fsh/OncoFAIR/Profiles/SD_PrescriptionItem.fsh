Profile: PrescriptionItem
Parent: MedicationRequest
Id: prescription-item
Title: "Prescription Item"
Description: "Prescription item."
* ^url = "http://ltsi.univ-rennes.fr/StructureDefinition/PrescriptionItem"
* groupIdentifier 1..1 MS
* groupIdentifier.value 1..1 
* groupIdentifier.value ^short = "Prescription item group identifier"
* identifier 1..* MS
* identifier.value 1..1 
* identifier.value ^short = "The prescription item's identifier"
* basedOn only Reference(Prescription)
* basedOn ^short = "The prescription linked to the prescription item"
* category 1..1 MS
* category.coding 1..1 
* category.coding ^short = "The prescription category"
* category.coding ^definition = "The prescription category. Could be: Creation, Stop, Modification, Validation"
* subject MS
* subject ^short = "The patient who will take the prescription item"
* dispenseRequest.initialFill.quantity.value 1..1 MS 
* dispenseRequest.initialFill.quantity.value ^short = "The first fill quantity of medication"
* requester only Reference(OncologyPractitioner)
* requester ^short = "The practitioner's identifier"
* device MS 
* device ^short = "The associated device"
* effectiveDosePeriod.start 1..1 MS // PN13 = dh_debut_prescrite
* effectiveDosePeriod.start ^short = "Beginning of the period over which the medication must be taken"
* effectiveDosePeriod.end MS // PN13 = dh_fin_prescrite 
* effectiveDosePeriod.end ^short = "End of the period over which the medication must be taken"
* dosageInstruction.route.coding 1..1 MS 
* dosageInstruction.route.coding ^short = "How the medication should enter the body"
* note MS // = for notes & vehicle ?
* note ^short = "Note"
* supportingInformation MS // = for vehicle ?
* supportingInformation ^short = "Additional information"
* medication MS
* medication only CodeableReference(OncologyMedication)
* medication ^short = "The prescribed medication"
* dosageInstruction 1..* MS
* dosageInstruction ^short = "Instructions for medication dosage"
* dosageInstruction.sequence //NB : not necessary if dosageInstruction 1..1 
* dosageInstruction.sequence ^short = "Order of the dosage instructions"
* dosageInstruction.text 1..1
* dosageInstruction.text ^short = "Textual dosage instructions"
* dosageInstruction.timing MS
* dosageInstruction.timing ^short = "Timing for the dosage"
* dosageInstruction.timing.repeat.boundsPeriod.start MS
* dosageInstruction.timing.repeat.boundsPeriod.start ^short = "Start of the dosage period"
* dosageInstruction.timing.repeat.frequency MS // = number of time
* dosageInstruction.timing.repeat.frequency ^short = "Frequency of dosage"
* dosageInstruction.timing.repeat.period MS // = per
* dosageInstruction.timing.repeat.period ^short = "Interval of time between dosages"
* dosageInstruction.timing.repeat.periodUnit // = temporal unit
* dosageInstruction.timing.repeat.periodUnit ^short = "Unit of time for the dosage interval"
* dosageInstruction.timing.repeat.timeOfDay 
* dosageInstruction.timing.repeat.timeOfDay ^short = "Time of day for action"
* dosageInstruction.doseAndRate MS 
* dosageInstruction.doseAndRate ^short = "Dosage quantity and rate of administration"
* dosageInstruction.doseAndRate.doseQuantity.value 1..1 // = number of doses
* dosageInstruction.doseAndRate.doseQuantity.value ^short = "Value of the dose quantity"
* dosageInstruction.doseAndRate.doseQuantity.unit 1..1
* dosageInstruction.doseAndRate.doseQuantity.unit ^short = "Unit of the dose quantity"
* dosageInstruction.doseAndRate.rateRatio.numerator.value // = dose rate
* dosageInstruction.doseAndRate.rateRatio.numerator.value ^short = "Value of the dose rate numerator"
* dosageInstruction.doseAndRate.rateRatio.numerator.unit
* dosageInstruction.doseAndRate.rateRatio.denominator.value // = time rate
* dosageInstruction.doseAndRate.rateRatio.denominator.value ^short = "Value of the dose rate denominator"
* dosageInstruction.doseAndRate.rateRatio.denominator.unit
* dosageInstruction.doseAndRate.rateRatio.numerator.unit ^short = "Unit of the dose rate numerator"

// ancienne version pour représenter la quantité de composant prescrite
/*
* dispenseRequest.quantity MS 
* dispenseRequest.quantity ^short = "Quantity prescribed"
* dispenseRequest.quantity.value //e.g. 142.5
* dispenseRequest.quantity.unit //e.g. mg
*/