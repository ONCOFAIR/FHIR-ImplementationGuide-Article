Profile:        ClinicalTrial
Parent:         ResearchStudy
Id:             clinical-trial
Title:          "Oncology Clinical Trial"
Description:    "Oncology clinical trial used to associate a Onco Patient to a Clinical Trial"

* title 1..1 MS
* title ^short = "Clinical trial name"
* title ^definition = "If the treatment is part of a clinical trial, its name is indicated."


* identifier 1..1
* identifier ^short = "EudraCT number of the clinical trial"
* identifier ^definition = "The number in the EudraCT clinical trials database."
