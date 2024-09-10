Instance: fhir-osiris-example-TumorPathologyEvent-instance-1
InstanceOf: TumorPathologyEvent
Description: "Example of TPE from OSIRIS_pivot_TumorPathologyEvent.csv"
* extension[laterality].valueCodeableConcept = 	UMLS#C0238767
* code = UMLS#C0677930
* bodySite.coding.code = #C00.8
* subject = Reference(ExampleOncoFAIRPatient)
* onsetDateTime = "2005-11-17"
* recordedDate = "2005-11-17"
* stage[morphology].summary = ICDO3#8002/3
* stage[morphology].type = UMLS#116676008
//Obligatoire en R5 : 
* clinicalStatus.coding[0].code = #active
* clinicalStatus.coding[0].display = "Active"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

Instance: fhir-osiris-example-TumorPathologyEvent-instance-2
InstanceOf: TumorPathologyEvent
Description: "Example of TPE from OSIRIS_pivot_TumorPathologyEvent.csv"
* extension[due-to].valueReference = Reference(fhir-osiris-example-TumorPathologyEvent-instance-1)
* extension[laterality].valueCodeableConcept = UMLS#C0439673
* code = UMLS#C0521158
* bodySite.coding.code = #C11.1
* subject = Reference(ExampleOncoFAIRPatient)
* onsetDateTime = "2010-11-18"
* recordedDate = "2010-11-18"
* stage[morphology].summary = ICDO3#8000-1
* stage[morphology].type = UMLS#116676008
//Obligatoire en R5 : 
* clinicalStatus.coding[0].code = #active
* clinicalStatus.coding[0].display = "Active"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"