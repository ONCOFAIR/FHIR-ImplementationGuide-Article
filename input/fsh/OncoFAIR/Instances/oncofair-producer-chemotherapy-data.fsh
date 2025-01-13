Instance : oncofair-producer-chemotherapy-data
InstanceOf : CapabilityStatement
Usage: #definition

* status = #draft
* name = "OncoFAIRProducerChemotherapyData"
* title = "OncoFAIR Producer Chemotherapy Data"
* experimental = true
* description = "Software for tracking chemotherapy information relating to a patient. The software generates chemotherapy data by means of data updates by medical staff."
* kind = #requirements
* fhirVersion = #5.0.0
* date = "2024-06-19T15:15:00+01:00"
* format[0] = #xml
* format[+] = #json

* rest.mode = #server
* rest.documentation = "Software for tracking chemotherapy information relating to a patient"
* rest.security.cors = false
* rest.security.service = $restful-security-service#OAuth



// Declaration for Patient
* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical(oncofair-patient)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchRevInclude = "Encounter:subject"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for Encounter
* rest.resource[+].type = #Encounter
* rest.resource[=].profile = Canonical(oncofair-encounter)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchInclude = "Encounter:subject"
* rest.resource[=].searchRevInclude[+] = "MedicationAdministration:encounter"
* rest.resource[=].searchRevInclude[+] = "MedicationRequest:encounter"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the resource version last changed"

// Declaration for Observation
* rest.resource[+].type = #Observation
* rest.resource[=].profile = Canonical(oncofair-observation)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchRevInclude = "MedicationRequest:reason"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for Medication
* rest.resource[+].type = #Medication
* rest.resource[=].profile = Canonical(oncofair-medication)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchRevInclude[+] = "MedicationRequest:medication"
* rest.resource[=].searchRevInclude[+] = "MedicationAdministration:medication"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for MedicationRequest
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].profile = Canonical(oncofair-medicationrequest-prescription)
* rest.resource[=].supportedProfile[0] = Canonical(oncofair-medicationrequest-element)
* rest.resource[=].supportedProfile[1] = Canonical(oncofair-medicationrequest-component)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchInclude[+] = "MedicationRequest:encounter"
* rest.resource[=].searchInclude[+] = "MedicationRequest:reason"
* rest.resource[=].searchInclude[+] = "MedicationRequest:basedOn"
* rest.resource[=].searchInclude[+] = "MedicationRequest:medication"
* rest.resource[=].searchRevInclude = "MedicationRequest:basedOn"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for CarePlan
* rest.resource[+].type = #CarePlan
* rest.resource[=].profile = Canonical(oncofair-careplan)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchInclude = "CarePlan:basedOn"
* rest.resource[=].searchInclude = "MedicationRequest:basedOn"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for MedicationAdministration
* rest.resource[+].type = #MedicationAdministration
* rest.resource[=].profile = Canonical(oncofair-medicationadministration-element)
* rest.resource[=].supportedProfile[0] = Canonical(oncofair-medicationadministration-component)
* rest.resource[=].supportedProfile[1] = Canonical(oncofair-medicationadministration-report)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchInclude[+] = "MedicationAdministration:encounter"
* rest.resource[=].searchInclude[+] = "MedicationAdministration:partOf"
* rest.resource[=].searchInclude[+] = "MedicationAdministration:medication"
* rest.resource[=].searchRevInclude = "MedicationAdministration:partOf"


* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the resource version last changed"