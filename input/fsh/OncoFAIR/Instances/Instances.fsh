// Patient
Instance: exampleOncologyPatient
InstanceOf: OncologyPatient
Usage: #example
Description: "Patient of IPP 99999."
* identifier[IPP].system = "http://ltsi.univ-rennes.fr/fhir/identifier/ipp"
* identifier[IPP].use = #usual
* identifier[IPP].type.text = "Permanent Patient Identifier (IPP)"
* identifier[IPP].value = "99999" 
* name.use = #official
* name.family = "DOE"
* name.given[0] = "John"
* gender = #male
* birthDate = "1911-11-11"

// Stay
Instance: exampleStay
InstanceOf: Stay
Usage: #example 
Description: "Stay of ID 111111."
* identifier.value = "111111"
* status = #completed
* subject = Reference(exampleOncologyPatient)
* location.location = Reference(exampleAccomodationUnit)

// Accomodation Unit
Instance: exampleAccomodationUnit
InstanceOf: AccomodationUnit
Usage: #example 
Description: "SAB accomodation unit."
* name = "SAB"
* managingOrganization = Reference(exampleMedicalLiabilityUnit)

// Medical Liability Unit
Instance: exampleMedicalLiabilityUnit
InstanceOf: MedicalLiabilityUnit
Usage: #example 
Description: "HCMED Medical liability unit."
* name = "HCMED"


// Prescription
Instance: examplePrescription
InstanceOf: Prescription
Usage: #example
Description: "Medication prescription."
* status = #completed 
* intent = #order
* subject = Reference(exampleOncologyPatient)
* encounter = Reference(exampleStay)
* created = "2023-01-01T00:00:00.0000Z"
* category.coding = $CommunicationModes#I "Incremental"
* supportingInfo[0] = Reference(exampleAdditionalInformationHeight)
* supportingInfo[0].display = "Add. info. - Height"
* supportingInfo[1] = Reference(exampleAdditionalInformationWeight)
* supportingInfo[1].display = "Add. info. - Weight"
* activity[0].plannedActivityReference = Reference(examplePrescriptionItemOXALIPLATINE200mg)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemOXYCODONELP10MGVIATRIS)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemPROFENID50MG)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemDOLIPRANE)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemVITB12)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemBACTRIMFORTE)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemPENTACARINAT300MG)
* instantiatesCanonical = "http://ltsi.univ-rennes.fr/PlanDefinition/exampleProtocol"

//Additional Informations
Instance: exampleAdditionalInformationWeight
InstanceOf: AdditionalInformation
Usage: #example
Description: "Additional information about weight."
* status = #registered
* subject = Reference(exampleOncologyPatient)
* code = $LOINC#29463-7 "Weight"
* valueQuantity.value = 80
* valueQuantity.unit = "kg"
* effectiveDateTime = "2023-01-01T00:00:00.0000Z"

Instance: exampleAdditionalInformationHeight
InstanceOf: AdditionalInformation
Usage: #example
Description: "Additional information about height."
* status = #registered
* subject = Reference(exampleOncologyPatient)
* code = $LOINC#8302-2 "Height"
* valueQuantity.value = 185
* valueQuantity.unit = "cm"
* effectiveDateTime = "2023-01-01T00:00:00.0000Z"


//Protocol 
Instance: exampleProtocol
InstanceOf: Protocol
Usage: #example
Description: "Prescribed protocol."
* status = #active 
* identifier.value = "5"
* name = "FOLFOX 4"
* title = "Protocol - FOLFOX 4"
* date = "2023-01-01T09:00:00.0000Z"
* extension[numeroCure].valueInteger = 1
* extension[numeroJour].valueInteger = 1


//Prescription Items 
Instance: examplePrescriptionItemOXALIPLATINE200mg
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication OXALIPLATINE 200 mg."
* status = #completed 
* intent = #order
* groupIdentifier.value = "12345"
* identifier.value = "589127"
* category.coding = $PrescriptionStatus#C "Creation"
* subject = Reference(exampleOncologyPatient)
* dispenseRequest.initialFill.quantity.value = 1 
* requester.identifier.value = "6789"
* effectiveDosePeriod.start = "2023-01-01T09:00:00.0000Z" //égale à DH début administration 1ère dose
* effectiveDosePeriod.end = "2023-01-01T11:35:00.0000Z" //égale à DH fin administration dernière dose
* dosageInstruction.route.coding = $SCT#47625008 "Intravenous route"
* medication.reference = Reference(exampleOncologyMedicationOXALIPLATINE200mg) 
//* dispenseRequest.quantity.value = 142.5
//* dispenseRequest.quantity.unit = "mg"
* dosageInstruction[0].text = "Administer 1 dose of 142.5 mg OXALIPLATINE 200 mg in 0 min."
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2023-01-15T11:35:00+00:00"
* dosageInstruction[0].timing.repeat.boundsPeriod.end = "2023-01-15T11:35:00+00:00"
* dosageInstruction[0].timing.repeat.frequency = 1
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d 
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 142.5
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "mg"
* dosageInstruction[0].doseAndRate[0].rateRatio.numerator.value = 1
* dosageInstruction[0].doseAndRate[0].rateRatio.numerator.unit = "dose(s)"
* dosageInstruction[0].doseAndRate[0].rateRatio.denominator.value = 0
* dosageInstruction[0].doseAndRate[0].rateRatio.denominator.unit = "min" 

Instance: examplePrescriptionItemOXYCODONELP10MGVIATRIS
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication OXYCODONE LP 10 MG VIATRIS."
* status = #completed 
* intent = #order
* groupIdentifier.value = "12345"
* identifier.value = "9403863"
* category.coding = $PrescriptionStatus#S "Stop"
* subject = Reference(exampleOncologyPatient)
* dispenseRequest.initialFill.quantity.value = 1 
* requester.identifier.value = "MG0177"
* effectiveDosePeriod.start = "2023-10-16T20:00:00.0000Z" 
* effectiveDosePeriod.end = "2023-10-19T14:32:00.0000Z" 
* dosageInstruction.route.coding = $SCT#26643006 "Oral route"
* medication.reference = Reference(exampleOncologyMedicationOXYCODONELP10MGVIATRIS) 
* dosageInstruction[0].text = "Administer 1 OXYCODONE LP 10 MG VIATRIS extended-release tablet, 2 times daily at 8am and 8pm."
* dosageInstruction[0].timing.repeat.frequency = 2
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d 
* dosageInstruction[0].timing.repeat.timeOfDay[0] = "08:00:00" 
* dosageInstruction[0].timing.repeat.timeOfDay[1] = "20:00:00" 
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "tablet(s)"

Instance: examplePrescriptionItemPROFENID50MG
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication PROFENID 50 MG."
* status = #completed 
* intent = #order
* groupIdentifier.value = "12345"
* identifier.value = "33939465"
* category.coding = $PrescriptionStatus#S "Stop"
* subject = Reference(exampleOncologyPatient)
* dispenseRequest.initialFill.quantity.value = 1 
* requester.identifier.value = "CR0328"
* effectiveDosePeriod.start = "2023-10-17T09:00:00.0000Z"  
* effectiveDosePeriod.end = "2023-10-19T14:32:00.0000Z" 
* note.time = "2023-10-17T09:33:00.0000Z"
* note.text = "If pain insufficiently relieved"
* note.authorString = "[CR0328]"
* dosageInstruction.route.coding = $SCT#26643006 "Oral route"
* medication.reference = Reference(exampleOncologyMedicationPROFENID50MG)
* dosageInstruction[0].text = "Administer 1 capsule of PROFENID 50 MG, 4 times a day maximum at minimum 6h intervals."
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2023-10-17T00:00:00+00:00" 
* dosageInstruction[0].timing.repeat.boundsPeriod.end = "2023-10-20T00:00:00+00:00" 
* dosageInstruction[0].timing.repeat.frequency = 4
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d 
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "capsule(s)"
* dosageInstruction[0].maxDosePerPeriod.numerator.value = 4
* dosageInstruction[0].maxDosePerPeriod.numerator.unit = "capsule(s)"
* dosageInstruction[0].maxDosePerPeriod.denominator.value = 1
* dosageInstruction[0].maxDosePerPeriod.denominator.unit = "day(s)"
* dosageInstruction[0].maxDosePerAdministration.value = 1
* dosageInstruction[0].maxDosePerAdministration.unit = "capsule(s)"

Instance: examplePrescriptionItemDOLIPRANE
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication DOLIPRANE 2.4% BUV SS SUGAR FL 100ML."
* status = #completed 
* intent = #order
* groupIdentifier.value = "12345"
* identifier.value = "6546546465456"
* category.coding = $PrescriptionStatus#S "Stop"
* subject = Reference(exampleOncologyPatient)
* dispenseRequest.initialFill.quantity.value = 1 
* requester.identifier.value = "0444497"
* effectiveDosePeriod.start = "2020-06-13T07:00:00+00:00"
* note.text = "If EDIN score > 3"
* dosageInstruction.route.coding = $SCT#26643006 "Oral route"
* medication.reference = Reference(exampleOncologyMedicationDOLIPRANE)
* dosageInstruction[0].text = "Administer 2,356 doses of 1 mL DOLIPRANE 2.4% BUV SS SUGAR, 4 times a day, every 6 hours."
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2020-06-13T07:00:00+00:00"
* dosageInstruction[0].timing.repeat.frequency = 4 
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d 
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "mL"
* dosageInstruction[0].doseAndRate[0].rateRatio.numerator.value = 2.356
* dosageInstruction[0].doseAndRate[0].rateRatio.numerator.unit =  "dose(s)"
* dosageInstruction[0].doseAndRate[0].rateRatio.denominator.value = 6
* dosageInstruction[0].doseAndRate[0].rateRatio.denominator.unit = "h"

Instance: examplePrescriptionItemVITB12
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication VIT B12 DEL 1MG/2ML INJ BUV AMP."
* status = #completed 
* intent = #order
* groupIdentifier.value = "12345"
* identifier.value = "22327328"
* category.coding = $PrescriptionStatus#S "Stop"
* subject = Reference(exampleOncologyPatient)
* dispenseRequest.initialFill.quantity.value = 1 
* requester.identifier.value = "PP0045"
* effectiveDosePeriod.start = "2020-07-01T08:00:00+00:00"
* effectiveDosePeriod.end = "2020-07-17T14:34:00+00:00"
* note.text = "If EDIN score > 3"
* dosageInstruction.route.coding = $SCT#26643006 "Oral route"
* medication.reference = Reference(exampleOncologyMedicationVITB12)
* dosageInstruction[0].text = "Administer 1 ampoule of VIT B12 DEL 1MG/2ML, 1 time a day on Mondays, Wednesdays and Fridays."
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2020-07-01T08:00:00+00:00"
* dosageInstruction[0].timing.repeat.frequency = 1
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d 
* dosageInstruction[0].timing.repeat.dayOfWeek[0] = #mon //les lundis 
* dosageInstruction[0].timing.repeat.dayOfWeek[1] = #wed //les mercredis
* dosageInstruction[0].timing.repeat.dayOfWeek[2] = #fri //les vendredis

* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "ampoule(s)"

Instance: examplePrescriptionItemBACTRIMFORTE
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication BACTRIM FORTE 800MG/160MG CPR."
* status = #completed 
* intent = #order
* groupIdentifier.value = "12345"
* identifier.value = "22327328"
* category.coding = $PrescriptionStatus#S "Stop"
* subject = Reference(exampleOncologyPatient)
* dispenseRequest.initialFill.quantity.value = 1 
* requester.identifier.value = "MU0003"
* effectiveDosePeriod.start = "2020-07-18T08:00:00+00:00"
* effectiveDosePeriod.end = "2020-07-18T08:34:00+00:00"
* note.time = "2020-07-18T03:13:00.0000Z"
* note.text = "2 cpr at 8am orally, for 2 days, 1 day / 2, Monday / Wednesday / Friday"
* note.authorString = "[MU0003]"
* dosageInstruction.route.coding = $SCT#26643006 "Oral route"
* medication.reference = Reference(exampleOncologyMedicationBACTRIMFORTE)
* dosageInstruction[0].text = "Administer 2 tablets of BACTRIM FORTE 800MG/160MG, 1 time daily on Mondays, Wednesdays and Fridays."
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2020-07-01T08:00:00+00:00"
* dosageInstruction[0].timing.repeat.boundsPeriod.end = "2020-07-20T08:00:00+00:00" //pendant 2 jours
* dosageInstruction[0].timing.repeat.frequency = 1
* dosageInstruction[0].timing.repeat.period = 2
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].timing.repeat.dayOfWeek[0] = #mon //les lundis 
* dosageInstruction[0].timing.repeat.dayOfWeek[1] = #wed //les mercredis
* dosageInstruction[0].timing.repeat.dayOfWeek[2] = #fri //les vendredis
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 2
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "tablet(s)"

Instance: examplePrescriptionItemPENTACARINAT300MG
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication PENTACARINAT 300MG PDR INJ."
* status = #completed 
* intent = #order
* groupIdentifier.value = "12345"
* identifier.value = "22434229"
* category.coding = $PrescriptionStatus#S "Stop"
* subject = Reference(exampleOncologyPatient)
* device.reference = Reference(exampleAssociatedDeviceNEBUL)
* dispenseRequest.initialFill.quantity.value = 1 
* requester.identifier.value = "CCCCCCC"
* effectiveDosePeriod.start = "2020-06-18T07:00:00+00:00"
* effectiveDosePeriod.end = "2020-06-18T07:00:00+00:00"
* note.time = "2020-07-17T14:58:00.0000Z"
* note.text = "ok feu vert pour admin."
* note.authorString = "[CCCCCCC]"
* dosageInstruction.route.coding = $SCT#46713006 "Nasal route"
* medication.reference = Reference(exampleOncologyMedicationPENTACARINAT300MG)
* dosageInstruction[0].text = "Administer 300mg of PENTACARINAT in 6 mL of EAU PPI PROAMP SOL INJ AMP 10ML for 20min at a flow rate of 8L/min every 30 days."
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2020-06-10T07:00:00+00:00"
* dosageInstruction[0].timing.repeat.frequency = 1 
* dosageInstruction[0].timing.repeat.period = 30 
* dosageInstruction[0].timing.repeat.periodUnit = #d 
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 300
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "mg"
* dosageInstruction[0].doseAndRate[0].rateRatio.numerator.value = 8 
* dosageInstruction[0].doseAndRate[0].rateRatio.numerator.unit = "L"
* dosageInstruction[0].doseAndRate[0].rateRatio.denominator.value = 1 
* dosageInstruction[0].doseAndRate[0].rateRatio.denominator.unit = "min"
* dosageInstruction[0].timing.repeat.duration = 20 
* dosageInstruction[0].timing.repeat.durationUnit = #min 


//Prescribed medications
Instance: exampleOncologyMedicationOXALIPLATINE200mg
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: OXALIPLATINE 200 mg."
* identifier.value = "OXALIPLATINE 200 mg"
* code.coding = $Medications#9365536 "OXALIPLATINE 200 mg"

Instance: exampleOncologyMedicationOXYCODONELP10MGVIATRIS
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: OXYCODONE LP 10 MG VIATRIS, CPR À LIBÉRATION PROLONGÉE."
* identifier.value = "OXYCODONE LP 10 MG VIATRIS, CPR À LIBÉRATION PROLONGÉE"
* code.coding = $Medications#9403863 "OXYCODONE LP 10 MG VIATRIS, CPR À LIBÉRATION PROLONGÉE"

Instance: exampleOncologyMedicationPROFENID50MG
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: PROFENID 50 MG, GÉLULE."
* identifier.value = "PROFENID 50 MG, GÉLULE"
* code.coding = $Medications#9075933 "PROFENID 50 MG, GÉLULE"

Instance: exampleOncologyMedicationDOLIPRANE
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: DOLIPRANE 2,4% BUV SS SUCRE FL 100ML."
* identifier.value = "DOLIPRANE 2,4% BUV SS SUCRE FL 100ML"
* code.coding = $Medications#3400892028057 "DOLIPRANE 2,4% BUV SS SUCRE FL 100ML"

Instance: exampleOncologyMedicationVITB12
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: VIT B12 DEL 1MG/2ML INJ BUV AMP."
* identifier.value = "VIT B12 DEL 1MG/2ML INJ BUV AMP"
* code.coding = $Medications#9100298 "VIT B12 DEL 1MG/2ML INJ BUV AMP"

Instance: exampleOncologyMedicationBACTRIMFORTE
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: BACTRIM FORTE 800MG/160MG CPR."
* identifier.value = "BACTRIM FORTE 800MG/160MG CPR"
* code.coding = $Medications#9009043 "BACTRIM FORTE 800MG/160MG CPR"

Instance: exampleOncologyMedicationPENTACARINAT300MG
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: PENTACARINAT 300MG PDR INJ."
* identifier.value = "PENTACARINAT 300MG PDR INJ"
* code.coding = $Medications#9137249 "PENTACARINAT 300MG PDR INJ"


//Associated Device
Instance: exampleAssociatedDeviceNEBUL
InstanceOf: AssociatedDevice
Usage: #example
Description: "Associated device: NEBUL."
* deviceName.name = "NEBUL"
* deviceName.type = #registered-name

//OncologyPractitioner
Instance: exampleOncologyPractitioner
InstanceOf: OncologyPractitioner 
Usage: #example
Description: "Administration report prescriber." 
* identifier.value = "AZRE4587"

//Administration Report
Instance: exampleAdministrationReportBACTRIMFORTE
InstanceOf: AdministrationReport
Usage: #example
Description: "BACTRIMFORTE medication administration report."
* status = #completed 
* basedOn = Reference(examplePrescription)
* subject = Reference(exampleOncologyPatient)
* encounter = Reference(exampleStay)
* performer.actor.reference = Reference(exampleOncologyPractitioner)
* occurencePeriod.start = "2020-06-18T08:00:00+00:00"
* occurencePeriod.end = "2020-06-18T08:34:00+00:00"
* request = Reference(examplePrescriptionItemBACTRIMFORTE)
* note.text = "PO"
* medication.reference = Reference(exampleOncologyMedicationBACTRIMFORTE)
* dosage.text = "Planned quantity: 2 tablet(s)"
* dosage.dose.value = 2
* dosage.dose.unit = "tablet(s)"
