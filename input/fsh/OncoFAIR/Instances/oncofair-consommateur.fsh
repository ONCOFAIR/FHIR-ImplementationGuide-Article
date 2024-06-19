Instance : oncofair-consommateur
InstanceOf : CapabilityStatement
Usage: #definition

* status = #draft
* name = "OncoFAIRConsommateur"
* title = "OncoFAIR-Consommateur"
* experimental = true
* description = "Capability Statement pour ..."
* kind = #requirements
* fhirVersion = #5.0.0
* date = "2024-06-19T15:15:00+01:00"


* format[+] = #application/fhir+json
* format[+] = #application/fhir+ndjson
* patchFormat[0] = #application/fhir+json


* rest.mode = #client
* rest.documentation = "XXX"
* rest.security.cors = false
* rest.security.service = $restful-security-service#OAuth
* rest.security.description = "XXXX"


//Medication
* rest.resource[+].type = #Medication
* rest.resource[=].profile = Canonical(oncofair-medication)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Seuls les attributs de 'premier niveau' peuvent être mis à jour avec l'interaction patch."
//* rest.resource[=].searchRevInclude = "XXX"


* rest.resource[=].searchParam[+].name = "_filter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-filter"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Paramètre de recherche de filtre qui prend en charge une grammaire de recherche plus sophistiquée. Voir la [documentation](https://hl7.org/fhir/search_filter.html) pour plus de détails"

* rest.resource[=].searchParam[+].name = "_has"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifies the prescribed component according to a nomenclature depending on the type"

* rest.resource[=].searchParam[+].name = "medication-type"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-medication-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Specifies whether the component prescribed is a speciality, a common name or any other product (pharmacopoeia)."

//MedicationRequest

//* rest.resource[=].searchParam[+].name = "code"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Medication-code"
//* rest.resource[=].searchParam[=].type = #token
//* rest.resource[=].searchParam[=].documentation = "Identifies the prescribed component according to a nomenclature depending on the type"


