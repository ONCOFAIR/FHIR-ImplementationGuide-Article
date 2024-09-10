Profile:        TumorPathologyEvent
Parent:         Condition
Id:             tumor-pathology-event
Title:          "Tumor Pathology Event"
Description:    "Tumor Pathology Event (TPE) Condition describing a tumoral event: reference to the parent TPE, laterality, morphology."

* subject MS
* subject only Reference (OncoFAIRPatient)

* code 1..1 MS
// A mon avis, ce VS ne fonctionne pas, CS non reconnu lors de la génération de l'IG :
* code from TumorPathologyEventType (required)
* code ^short = "Type of tumor event"
* code ^definition = "Allows to establish the initial diagnosis of cancer (neoplasm) and to follow the evolution of the disease (primary cancer, locoregional or metastatic recurrence)."

* onsetDateTime 1..1 MS
* onset[x] only dateTime
* onsetDateTime ^short = "Start date"
* onsetDateTime ^definition = "Date of cancer onset or subsequent tumor event."

* abatementDateTime 0..1 MS
* abatement[x] only dateTime
* abatementDateTime ^short = "End date"
* abatementDateTime ^definition = "Date of end of cancer or subsequent tumor event."

* recordedDate 1..1 MS
* recordedDate ^short = "Date of diagnosis"
* recordedDate ^definition = "Date of diagnosis of the tumor event."

* bodySite  1..1 MS
* bodySite from Topography (extensible)
* bodySite ^short = "Topographic code"
* bodySite ^definition = "Allows you to describe the point of origin of the cancer."

// Others
* stage ^slicing.discriminator.type = #pattern
* stage ^slicing.discriminator.path = "type.coding.code"
* stage ^slicing.rules = #open
* stage ^slicing.description = "Slice based on stage pattern"

* stage contains morphology 1..1 MS
* stage[morphology] ^short = "International code of lesion / histological type / morphology of the tumoral event"
* stage[morphology].type.coding.code = UMLS#116676008
* stage[morphology].summary 1..1
* stage[morphology].summary from Morphology (extensible)
* stage[morphology].summary ^short = "Histological/ morphological code"
* stage[morphology].summary ^definition = "Used to describe the cell type and biological activity of the tumor."

// Extensions
* extension contains dueTo-tumor-pathology-event named due-to 0..1
* extension[due-to] MS
* extension[due-to] ^short = "The parent tumoral event"
* extension[due-to] ^definition = "The parent tumoral event"

* extension contains Laterality named laterality 0..1
* extension[laterality] MS
* extension[laterality] ^short = "Laterality of location"
* extension[laterality] ^definition = "Laterality of location"

* extension contains Histology_Grade named histologygrade 0..1
* extension[histologygrade] MS
* extension[histologygrade] ^short = "Histology of the tumor"
* extension[histologygrade] ^definition = "Histology of the tumor"


Extension:      DueToTumorPathologyEvent
Parent:         http://hl7.org/fhir/StructureDefinition/condition-dueTo
Id:             dueTo-tumor-pathology-event
Title:          "Tumor Pathology Event Parent"
Description:    "Reference the Tumor Pathology Event from which the metastasis comes from."
* value[x] only Reference (tumor-pathology-event)

Extension:  Laterality
Id: laterality
Title: "Laterality"
Description: "Laterality of location (if it exists)"
* value[x] only CodeableConcept
// A mon avis, ce VS ne fonctionne pas, CS non reconnu lors de la génération de l'IG :
* valueCodeableConcept from Laterality (required)
* valueCodeableConcept ^short = "Laterality of location"
* valueCodeableConcept ^definition = "Laterality of location"

Extension:  Histology_Grade
Id: histologygrade
Title: "Histology"
Description: "Grade of Histology"

* extension contains
    histologyGradeType 0..1 MS and
    histologyGradeValue 0..1 MS

* extension[histologyGradeType].value[x] only string
* extension[histologyGradeType] ^short = "Histological Type. Obligatory if Histological Grade exists."
* extension[histologyGradeType] ^definition = "The classification system used to define the grade of the tumor (breast, prostate are given here as examples)."

* extension[histologyGradeValue].value[x] only string
* extension[histologyGradeValue] ^short = "Histological Grade. Obligatory if Histological Type exists."
* extension[histologyGradeValue] ^definition = "The value of the histological grade according to the classification system used."

