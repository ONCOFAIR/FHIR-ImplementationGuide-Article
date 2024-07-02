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

* rest.mode = #client
* rest.documentation = "Feeding primary chemotherapy data into a health data warehouse via queries"
* rest.security.cors = false
* rest.security.service = $restful-security-service#OAuth