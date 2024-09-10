/*

//OncologyPatient
Instance: exampleOncologyPatient
InstanceOf: OncologyPatient
Usage: #example
Description: "Patient of IPP 6564415."
* identifier[IPP].system = "http://ltsi.univ-rennes.fr/fhir/identifier/ipp"
* identifier[IPP].use = #usual
* identifier[IPP].type.text = "Permanent Patient Identifier (IPP)"
* identifier[IPP].value = "6564415" 
* name.use = #official
* name.family = "DOE"
* name.given[0] = "John"
* gender = #male
* birthDate = "1991-11-23"


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
* issued = "2023-01-01T00:00:00.0000Z"

Instance: exampleAdditionalInformationHeight
InstanceOf: AdditionalInformation
Usage: #example
Description: "Additional information about height."
* status = #registered
* subject = Reference(exampleOncologyPatient)
* code = $LOINC#8302-2 "Height"
* valueQuantity.value = 185
* valueQuantity.unit = "cm"
* issued = "2023-01-01T00:00:00.0000Z"


//OncologyPractitioner
Instance: exampleOncologyPractitioner
InstanceOf: OncologyPractitioner 
Usage: #example
Description : "The responsible practitioner."
* identifier.value = "SR156518"


//Oncology Healthcare Services
Instance: exampleHealthcareServiceSAB
InstanceOf: OncologyHealthcareService
Usage: #example 
Description: "SAB healthcare service."
* name = "SAB"

Instance: exampleHealthcareServiceHCMED
InstanceOf: OncologyHealthcareService
Usage: #example 
Description: "HCMED healthcare service."
* name = "HCMED"

//Stays
Instance: exampleStayFOLFOX4
InstanceOf: Stay
Usage: #example 
Description: "Stay of ID 15461."
* identifier.value = "15461"
* status = #completed
* subject = Reference(exampleOncologyPatient)
* serviceType[0] = Reference(exampleHealthcareServiceSAB)
* serviceType[+] = Reference(exampleHealthcareServiceHCMED)

Instance: exampleStayMISCELLANEOUS
InstanceOf: Stay
Usage: #example 
Description: "Stay of ID 98456."
* identifier.value = "98456"
* status = #completed
* subject = Reference(exampleOncologyPatient)
* serviceType[0].reference = Reference(exampleHealthcareServiceSAB)
* serviceType[+].reference = Reference(exampleHealthcareServiceHCMED)

//Protocols
Instance: exampleProtocolInfusionFOLFOX4
InstanceOf: Protocol
Usage: #example
Description: "Prescribed protocol."
* status = #active 
* identifier.value = "6"
* name = "FOLFOX 4"
* title = "Protocol - FOLFOX 4"
* effectivePeriod.start = "2023-01-01T09:00:00.0000Z"
* extension[treatmentCycleNumber].valueInteger = 1
* extension[treatmentDayNumber].valueInteger = 1

Instance: exampleProtocolMISCELLANEOUS
InstanceOf: Protocol
Usage: #example
Description: "Prescribed protocol."
* status = #active 
* identifier.value = "5"
* name = "Miscellaneous protocol"
* title = "Protocol - Miscellaneous protocol"
* effectivePeriod.start = "2023-01-01T09:00:00.0000Z"
* extension[treatmentCycleNumber].valueInteger = 2
* extension[treatmentDayNumber].valueInteger = 3


//Prescribed medications
Instance: exampleOncologyMedicationOXALIPLATINE200mg
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: OXALIPLATINE 200 mg."
* identifier.value = "OXALIPLATINE 200 mg"
* code.coding = $Medications#9365536 "OXALIPLATINE 200 mg"
* extension[medicationType].valueCodeableConcept = $MedicationTypes#3 "principe actif"
* extension[medicationIsVehicle].valueBoolean = false

Instance: exampleOncologyMedication5FLUOROURACILE5g
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: 5-FLUOROURACILE 5 g."
* identifier.value = "5-FLUOROURACILE 5 g"
* code.coding = $Medications#9334872 "5-FLUOROURACILE 5 g"
* extension[medicationType].valueCodeableConcept = $MedicationTypes#3 "principe actif"
* extension[medicationIsVehicle].valueBoolean = false

Instance: exampleOncologyMedicationLEVOFOLINATEDECALCIUM
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: LEVOFOLINATE DE CALCIUM."
* identifier.value = "LEVOFOLINATE DE CALCIUM"
* code.coding = $Medications#9314929 "LEVOFOLINATE DE CALCIUM"
* extension[medicationType].valueCodeableConcept = $MedicationTypes#3 "principe actif"
* extension[medicationIsVehicle].valueBoolean = false

Instance: exampleOncologyMedicationONDANSETRON
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: ONDANSETRON."
* identifier.value = "ONDANSETRON"
* code.coding = $Medications#9296278 "ONDANSETRON"
* extension[medicationType].valueCodeableConcept = $MedicationTypes#3 "principe actif"
* extension[medicationIsVehicle].valueBoolean = false

Instance: exampleOncologyMedicationMETHYLPREDNISOLONE
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: METHYLPREDNISOLONE."
* identifier.value = "METHYLPREDNISOLONE"
* code.coding = $Medications#5 "METHYLPREDNISOLONE"
* extension[medicationType].valueCodeableConcept = $MedicationTypes#3 "principe actif"
* extension[medicationIsVehicle].valueBoolean = false

Instance: exampleOncologyMedicationG5pourcent100MLPOCHE
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: G5% 100ML POCHE."
* identifier.value = "G5% 100ML POCHE"
* code.coding = $Medications#9279854 "G5% 100ML POCHE"
* extension[medicationType].valueCodeableConcept = $MedicationTypes#3 "principe actif"
* extension[medicationIsVehicle].valueBoolean = false

Instance: exampleOncologyMedicationOXYCODONELP10MGVIATRIS
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: OXYCODONE LP 10 MG VIATRIS, CPR À LIBÉRATION PROLONGÉE."
* identifier.value = "OXYCODONE LP 10 MG VIATRIS, CPR À LIBÉRATION PROLONGÉE"
* code.coding = $Medications#9403863 "OXYCODONE LP 10 MG VIATRIS, CPR À LIBÉRATION PROLONGÉE"
* extension[medicationType].valueCodeableConcept = $MedicationTypes#3 "principe actif"
* extension[medicationIsVehicle].valueBoolean = false

Instance: exampleOncologyMedicationBACTRIMFORTE
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: BACTRIM FORTE 800MG/160MG CPR."
* identifier.value = "BACTRIM FORTE 800MG/160MG CPR"
* code.coding = $Medications#9009043 "BACTRIM FORTE 800MG/160MG CPR"
* extension[medicationType].valueCodeableConcept = $MedicationTypes#3 "principe actif"
* extension[medicationIsVehicle].valueBoolean = false

Instance: exampleOncologyMedicationPENTACARINAT300MG
InstanceOf: OncologyMedication
Usage: #example
Description: "Medication: PENTACARINAT 300MG PDR INJ."
* identifier.value = "PENTACARINAT 300MG PDR INJ"
* code.coding = $Medications#9137249 "PENTACARINAT 300MG PDR INJ"
* extension[medicationType].valueCodeableConcept = $MedicationTypes#3 "principe actif"
* extension[medicationIsVehicle].valueBoolean = false


//Associated device
Instance: exampleAssociatedDeviceNEBUL
InstanceOf: AssociatedDevice
Usage: #example
Description: "Associated device: NEBUL."
* deviceName.name = "NEBUL"
* deviceName.type = #registered-name


//Prescriptions
Instance: examplePrescriptionMedicationINFUSION
InstanceOf: Prescription
Usage: #example
Description: "Medications prescription (infusion)."
* status = #completed 
* intent = #order
* subject = Reference(exampleOncologyPatient)
* encounter = Reference(exampleStayFOLFOX4)
* period.start = "2023-01-01T09:00:00.0000Z"
* period.end = "2023-01-01T11:35:00.0000Z"
* supportingInfo[0] = Reference(exampleAdditionalInformationHeight)
* supportingInfo[=].display = "Height"
* supportingInfo[+] = Reference(exampleAdditionalInformationWeight)
* supportingInfo[=].display = "Weight"
* activity[0].plannedActivityReference = Reference(examplePrescriptionItemInfusionOXALIPLATINE200mg)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemInfusion5FLUOROURACILE5g)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemInfusionLEVOFOLINATEDECALCIUM)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemInfusionONDANSETRON)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemInfusionMETHYLPREDNISOLONE)
* activity[+].plannedActivityReference = Reference(examplePrescriptionItemInfusionG5pourcent100MLPOCHE)
* instantiatesCanonical = "http://ltsi.univ-rennes.fr/PlanDefinition/exampleProtocolInfusionFOLFOX4"
* extension[dateTimePrescription].valueDateTime = "2023-01-01T00:00:00.0000Z"

Instance: examplePrescriptionMedicationOXYCODONELP10MGVIATRIS
InstanceOf: Prescription
Usage: #example
Description: "OXYCODONE medication prescription."
* status = #completed 
* intent = #order
* subject = Reference(exampleOncologyPatient)
* encounter = Reference(exampleStayMISCELLANEOUS)
* period.start = "2023-01-01T09:00:00.0000Z"
* period.end = "2023-01-01T11:35:00.0000Z"
* supportingInfo[0] = Reference(exampleAdditionalInformationHeight)
* supportingInfo[=].display = "Height"
* supportingInfo[+] = Reference(exampleAdditionalInformationWeight)
* supportingInfo[=].display = "Weight"
* activity[0].plannedActivityReference = Reference(examplePrescriptionItemOXYCODONELP10MGVIATRIS)
* instantiatesCanonical = "http://ltsi.univ-rennes.fr/PlanDefinition/exampleProtocolMISCELLANEOUS"
* extension[dateTimePrescription].valueDateTime = "2023-01-01T00:00:00.0000Z"

Instance: examplePrescriptionMedicationBACTRIMFORTE
InstanceOf: Prescription
Usage: #example
Description: "BACTRIMFORTE medication prescription."
* status = #completed 
* intent = #order
* subject = Reference(exampleOncologyPatient)
* encounter = Reference(exampleStayMISCELLANEOUS)
* period.start = "2023-01-01T09:00:00.0000Z"
* period.end = "2023-01-01T11:35:00.0000Z"
* supportingInfo[0] = Reference(exampleAdditionalInformationHeight)
* supportingInfo[=].display = "Height"
* supportingInfo[+] = Reference(exampleAdditionalInformationWeight)
* supportingInfo[=].display = "Weight"
* activity[0].plannedActivityReference = Reference(examplePrescriptionItemBACTRIMFORTE)
* instantiatesCanonical = "http://ltsi.univ-rennes.fr/PlanDefinition/exampleProtocolMISCELLANEOUS"
* extension[dateTimePrescription].valueDateTime = "2023-01-01T00:00:00.0000Z"

Instance: examplePrescriptionMedicationPENTACARINAT300MG
InstanceOf: Prescription
Usage: #example
Description: "PENTACARINAT medication prescription."
* status = #completed 
* intent = #order
* subject = Reference(exampleOncologyPatient)
* encounter = Reference(exampleStayMISCELLANEOUS)
* period.start = "2023-01-01T09:00:00.0000Z"
* period.end = "2023-01-01T11:35:00.0000Z"
* supportingInfo[0] = Reference(exampleAdditionalInformationHeight)
* supportingInfo[=].display = "Height"
* supportingInfo[+] = Reference(exampleAdditionalInformationWeight)
* supportingInfo[=].display = "Weight"
* activity[0].plannedActivityReference = Reference(examplePrescriptionItemPENTACARINAT300MG)
* instantiatesCanonical = "http://ltsi.univ-rennes.fr/PlanDefinition/exampleProtocolMISCELLANEOUS"
* extension[dateTimePrescription].valueDateTime = "2023-01-01T00:00:00.0000Z"


//Prescription items 
Instance: examplePrescriptionItemInfusionOXALIPLATINE200mg
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication OXALIPLATINE 200 mg."
* status = #completed 
* intent = #order
* groupIdentifier.value = "589127"
* basedOn = Reference(examplePrescriptionINFUSION)
* identifier.value = "121212"
* category.coding = $PrescriptionCategory#C "Création"
* subject = Reference(exampleOncologyPatient)
* requester = Reference(exampleOncologyPractitioner)
* effectiveDosePeriod.start = "2023-01-01T09:00:00.0000Z" 
* effectiveDosePeriod.end = "2023-01-01T11:35:00.0000Z" 
* dosageInstruction.route.coding = $SCT#47625008 "Intravenous route"
* medication.reference = Reference(exampleOncologyMedicationOXALIPLATINE200mg) 
* dosageInstruction[0].text = "Administer 1 dose of 142.5 mg OXALIPLATINE 200 mg in 0 min."
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2023-01-01T09:00:00.0000Z" 
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2023-01-01T11:35:00.0000Z"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d 
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 142.5
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.value = 1
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.unit = "dose(s)"
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.value = 0
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.unit = "min" 
* extension[medicationItemProvenance].valueCodeableConcept = $MedicationItemProvenance#1 "Pharmacie"
* extension[eventTypeData].valueCodeableConcept = $EventTypeData#6 "PHE - Plage horaire"
* extension[eventTimeMin].valueDateTime = "2023-01-01T11:30:00.0000Z"
* extension[eventTimeMax].valueDateTime = "2023-01-01T11:30:00.0000Z"

Instance: examplePrescriptionItemInfusion5FLUOROURACILE5g
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication 5-FLUOROURACILE 5 g."
* status = #completed 
* intent = #order
* groupIdentifier.value = "589127"
* basedOn = Reference(examplePrescriptionINFUSION)
* identifier.value = "232323"
* category.coding = $PrescriptionCategory#C "Création"
* subject = Reference(exampleOncologyPatient)
* requester = Reference(exampleOncologyPractitioner)
* effectiveDosePeriod.start = "2023-01-01T09:00:00.0000Z" 
* effectiveDosePeriod.end = "2023-01-01T11:35:00.0000Z" 
* dosageInstruction.route.coding = $SCT#47625008 "Intravenous route"
* medication.reference = Reference(exampleOncologyMedication5FLUOROURACILE5g) 
* dosageInstruction[0].text = "Administer 1 dose of 675 mg 5-FLUOROURACILE 5 g in 5 min."
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2023-01-01T09:00:00.0000Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2023-01-01T11:35:00.0000Z"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d 
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 675
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.value = 1
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.unit = "dose(s)"
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.value = 5
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.unit = "min"
* extension[medicationItemProvenance].valueCodeableConcept = $MedicationItemProvenance#1 "Pharmacie"
* extension[eventTypeData].valueCodeableConcept = $EventTypeData#6 "PHE - Plage horaire"
* extension[eventTimeMin].valueDateTime = "2023-01-01T11:35:00.0000Z"
* extension[eventTimeMax].valueDateTime = "2023-01-01T11:35:00.0000Z"

Instance: examplePrescriptionItemInfusionLEVOFOLINATEDECALCIUM
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication LEVOFOLINATE DE CALCIUM."
* status = #completed 
* intent = #order
* groupIdentifier.value = "589127"
* basedOn = Reference(examplePrescriptionINFUSION)
* identifier.value = "343434"
* category.coding = $PrescriptionCategory#C "Création"
* subject = Reference(exampleOncologyPatient)
* requester = Reference(exampleOncologyPractitioner)
* effectiveDosePeriod.start = "2023-01-01T09:00:00.0000Z" 
* effectiveDosePeriod.end = "2023-01-01T11:35:00.0000Z" 
* dosageInstruction.route.coding = $SCT#47625008 "Intravenous route"
* medication.reference = Reference(exampleOncologyMedicationLEVOFOLINATEDECALCIUM) 
* dosageInstruction[0].text = "Administer 1 dose of 35 mg LEVOFOLINATE DE CALCIUM in 10 min."
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2023-01-01T09:00:00.0000Z" 
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2023-01-01T11:35:00.0000Z" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d 
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 35
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.value = 1
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.unit = "dose(s)"
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.value = 10
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.unit = "min" 
* extension[medicationItemProvenance].valueCodeableConcept = $MedicationItemProvenance#1 "Pharmacie"
* extension[eventTypeData].valueCodeableConcept = $EventTypeData#6 "PHE - Plage horaire"
* extension[eventTimeMin].valueDateTime = "2023-01-15T11:30:00.0000Z"
* extension[eventTimeMax].valueDateTime = "2023-01-15T11:30:00.0000Z"

Instance: examplePrescriptionItemInfusionONDANSETRON
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication ONDANSETRON."
* status = #completed 
* intent = #order
* groupIdentifier.value = "589127"
* basedOn = Reference(examplePrescriptionINFUSION)
* identifier.value = "454545"
* category.coding = $PrescriptionCategory#C "Création"
* subject = Reference(exampleOncologyPatient)
* requester = Reference(exampleOncologyPractitioner)
* effectiveDosePeriod.start = "2023-01-01T09:00:00.0000Z" 
* effectiveDosePeriod.end = "2023-01-01T11:35:00.0000Z" 
* dosageInstruction.route.coding = $SCT#47625008 "Intravenous route"
* medication.reference = Reference(exampleOncologyMedicationONDANSETRON) 
* dosageInstruction[0].text = "Administer 1 dose of 8 mg ONDANSETRON in 1 min."
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2023-01-01T09:00:00.0000Z" 
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2023-01-01T11:35:00.0000Z" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d 
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 8
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.value = 1
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.unit = "dose(s)"
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.value = 1
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.unit = "min" 
* extension[medicationItemProvenance].valueCodeableConcept = $MedicationItemProvenance#1 "Pharmacie"
* extension[eventTypeData].valueCodeableConcept = $EventTypeData#6 "PHE - Plage horaire"
* extension[eventTimeMin].valueDateTime = "2023-01-15T09:02:00.0000Z"
* extension[eventTimeMax].valueDateTime = "2023-01-15T09:02:00.0000Z"

Instance: examplePrescriptionItemInfusionMETHYLPREDNISOLONE
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication METHYLPREDNISOLONE."
* status = #completed 
* intent = #order
* groupIdentifier.value = "589127"
* basedOn = Reference(examplePrescriptionINFUSION)
* identifier.value = "565656"
* category.coding = $PrescriptionCategory#C "Création"
* subject = Reference(exampleOncologyPatient)
* requester = Reference(exampleOncologyPractitioner)
* effectiveDosePeriod.start = "2023-01-01T09:00:00.0000Z" 
* effectiveDosePeriod.end = "2023-01-01T11:35:00.0000Z" 
* dosageInstruction.route.coding = $SCT#47625008 "Intravenous route"
* medication.reference = Reference(exampleOncologyMedicationMETHYLPREDNISOLONE) 
* dosageInstruction[0].text = "Administer 1 dose of 120 mg METHYLPREDNISOLONE in 1 min."
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2023-01-01T09:00:00.0000Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2023-01-01T11:35:00.0000Z" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d 
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 120
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.value = 1
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.unit = "dose(s)"
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.value = 1
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.unit = "min" 
* extension[medicationItemProvenance].valueCodeableConcept = $MedicationItemProvenance#1 "Pharmacie"
* extension[eventTypeData].valueCodeableConcept = $EventTypeData#6 "PHE - Plage horaire"
* extension[eventTimeMin].valueDateTime = "2023-01-15T09:03:00.0000Z"
* extension[eventTimeMax].valueDateTime = "2023-01-15T09:03:00.0000Z"

Instance: examplePrescriptionItemInfusionG5percent100MLPOCHE
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication G5percent100MLPOCHE."
* status = #completed 
* intent = #order
* groupIdentifier.value = "25428"
* basedOn = Reference(examplePrescriptionINFUSION)
* identifier.value = "7827"
* category.coding = $PrescriptionCategory#C "Création"
* subject = Reference(exampleOncologyPatient)
* requester = Reference(exampleOncologyPractitioner)
* effectiveDosePeriod.start = "2023-01-01T09:00:00.0000Z" 
* effectiveDosePeriod.end = "2023-01-01T11:35:00.0000Z" 
* dosageInstruction.route.coding = $SCT#47625008 "Intravenous route"
* medication.reference = Reference(exampleOncologyMedicationG5percent100MLPOCHE) 
* dosageInstruction[0].text = "Administer 1 dose of 100 mL G5percent100MLPOCHE in 30 min."
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2023-01-01T09:00:00.0000Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2023-01-01T11:35:00.0000Z"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d 
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 100
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mL"
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.value = 1
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.unit = "dose(s)"
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.value = 30
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.unit = "min" 
* extension[medicationItemProvenance].valueCodeableConcept = $MedicationItemProvenance#1 "Pharmacie"
* extension[eventTypeData].valueCodeableConcept = $EventTypeData#6 "PHE - Plage horaire"
* extension[eventTimeMin].valueDateTime = "2023-01-15T11:30:00.0000Z"
* extension[eventTimeMax].valueDateTime = "2023-01-15T11:30:00.0000Z"

Instance: examplePrescriptionItemOXYCODONELP10MGVIATRIS
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication OXYCODONE LP 10 MG VIATRIS."
* status = #completed 
* intent = #order
* groupIdentifier.value = "52427"
* basedOn = Reference(examplePrescriptionOXYCODONELP10MGVIATRIS)
* identifier.value = "28728"
* category.coding = $PrescriptionCategory#A "Arrêt"
* subject = Reference(exampleOncologyPatient)
* requester = Reference(exampleOncologyPractitioner)
* effectiveDosePeriod.start = "2023-01-01T09:00:00.0000Z" 
* effectiveDosePeriod.end = "2023-10-19T14:32:00.0000Z" 
* dosageInstruction.route.coding = $SCT#26643006 "Oral route"
* medication.reference = Reference(exampleOncologyMedicationOXYCODONELP10MGVIATRIS) 
* dosageInstruction[0].text = "Administer 1 OXYCODONE LP 10 MG VIATRIS extended-release tablet, 2 times daily at 8am and 8pm."
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d 
* dosageInstruction[=].timing.repeat.timeOfDay[0] = "08:00:00" 
* dosageInstruction[=].timing.repeat.timeOfDay[1] = "20:00:00" 
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "tablet(s)"
* extension[medicationItemProvenance].valueCodeableConcept = $MedicationItemProvenance#1 "Pharmacie"

Instance: examplePrescriptionItemBACTRIMFORTE
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication BACTRIM FORTE 800MG/160MG CPR."
* status = #completed 
* intent = #order
* groupIdentifier.value = "897867254"
* basedOn = Reference(examplePrescriptionBACTRIMFORTE)
* identifier.value = "87823"
* category.coding = $PrescriptionCategory#A "Arrêt"
* subject = Reference(exampleOncologyPatient)
* requester = Reference(exampleOncologyPractitioner)
* effectiveDosePeriod.start = "2020-07-18T08:00:00.0000Z"
* effectiveDosePeriod.end = "2020-07-18T08:34:00.0000Z"
* note.time = "2020-07-18T03:13:00.0000Z"
* note.text = "2 cpr at 8am orally, for 2 days, 1 day / 2, Monday / Wednesday / Friday"
* note.authorString = "[SR156518]"
* dosageInstruction.route.coding = $SCT#26643006 "Oral route"
* medication.reference = Reference(exampleOncologyMedicationBACTRIMFORTE)
* dosageInstruction[0].text = "Administer 2 tablets of BACTRIM FORTE 800MG/160MG, 1 time daily on Mondays, Wednesdays and Fridays."
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2020-07-01T08:00:00.0000Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2020-07-20T08:00:00.0000Z" 
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 2
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.dayOfWeek[0] = #mon
* dosageInstruction[=].timing.repeat.dayOfWeek[1] = #wed
* dosageInstruction[=].timing.repeat.dayOfWeek[2] = #fri
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 2
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "tablet(s)"
* extension[medicationItemProvenance].valueCodeableConcept = $MedicationItemProvenance#1 "Pharmacie"

Instance: examplePrescriptionItemPENTACARINAT300MG
InstanceOf: PrescriptionItem
Usage: #example
Description: "Prescription item related to the medication PENTACARINAT 300MG PDR INJ."
* status = #completed 
* intent = #order
* groupIdentifier.value = "9412664"
* basedOn = Reference(examplePrescriptionPENTACARINAT300MG)
* identifier.value = "15641"
* category.coding = $PrescriptionCategory#A "Arrêt"
* subject = Reference(exampleOncologyPatient)
* device.reference = Reference(exampleAssociatedDeviceNEBUL)
* requester = Reference(exampleOncologyPractitioner)
* effectiveDosePeriod.start = "2020-06-18T07:00:00.0000Z"
* effectiveDosePeriod.end = "2020-06-18T07:00:00.0000Z"
* note.time = "2020-07-17T14:58:00.0000Z"
* note.text = "ok green light for admin."  
* note.authorString = "[SR156518]"
* dosageInstruction.route.coding = $SCT#46713006 "Nasal route"
* medication.reference = Reference(exampleOncologyMedicationPENTACARINAT300MG)
* dosageInstruction[0].text = "Administer 300mg of PENTACARINAT in 6 mL of EAU PPI PROAMP SOL INJ AMP 10ML for 20min at a flow rate of 8L/min every 30 days."
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2020-06-10T07:00:00.0000Z"
* dosageInstruction[=].timing.repeat.frequency = 1 
* dosageInstruction[=].timing.repeat.period = 30 
* dosageInstruction[=].timing.repeat.periodUnit = #d 
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 300
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.value = 8 
* dosageInstruction[=].doseAndRate[=].rateRatio.numerator.unit = "L"
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.value = 1 
* dosageInstruction[=].doseAndRate[=].rateRatio.denominator.unit = "min"
* dosageInstruction[=].timing.repeat.duration = 20 
* dosageInstruction[=].timing.repeat.durationUnit = #min 
* extension[medicationItemProvenance].valueCodeableConcept = $MedicationItemProvenance#1 "Pharmacie"


//Administration report
Instance: exampleAdministrationReportBACTRIMFORTE
InstanceOf: AdministrationReport
Usage: #example
Description: "BACTRIMFORTE medication administration report."
* status = #completed 
* basedOn = Reference(examplePrescriptionINFUSION)
* subject = Reference(exampleOncologyPatient)
* encounter = Reference(exampleStayFOLFOX4)
* performer.actor.reference = Reference(exampleOncologyPractitioner)
* occurencePeriod.start = "2020-06-18T08:00:00.0000Z"
* occurencePeriod.end = "2020-06-18T08:34:00.0000Z"
* request = Reference(examplePrescriptionItemBACTRIMFORTE)
* note[0].text = "BACTRIM FORTE 800MG/160MG CPR"
* note[1].text = "PO"
* medication.reference = Reference(exampleOncologyMedicationBACTRIMFORTE)
* dosage.text = "Planned quantity: 2 tablet(s)"
* dosage.dose.value = 2
* dosage.dose.unit = "tablet(s)"

*/
