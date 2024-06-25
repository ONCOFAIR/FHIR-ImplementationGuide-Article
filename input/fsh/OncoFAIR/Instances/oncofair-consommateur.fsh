Instance : oncofair-consommateur
InstanceOf : CapabilityStatement
Usage: #definition

* status = #draft
* name = "OncoFAIRConsommateur"
* title = "OncoFAIR-Consommateur"
* experimental = true
* description = "Capability Statement for ..."
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
* rest.resource[=].interaction[=].documentation = "Only 'top-level' attributes can be updated using patch interaction."
//* rest.resource[=].searchRevInclude = "XXX"


* rest.resource[=].searchParam[+].name = "_filter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-filter"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Filter search parameter that supports a more sophisticated search grammar. See [documentation](https://hl7.org/fhir/search_filter.html) for more details."

* rest.resource[=].searchParam[+].name = "_has"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Enables resources to be selected on the basis of the properties of the resources that refer to them (reverse chaining)."

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical resource identifier"

* rest.resource[=].searchParam[+].name = "clinical-code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifies the prescribed component according to a nomenclature depending on the type"

* rest.resource[=].searchParam[+].name = "medication-type"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-medication-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Specifies whether the component prescribed is a speciality, a common name or any other product (pharmacopoeia)."


// Declaration for MedicationRequest
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].profile = Canonical(oncofair-medicationrequest-prescription)
* rest.resource[=].supportedProfile = Canonical(oncofair-medicationrequest-element)
* rest.resource[=].profile = Canonical(oncofair-medicationrequest-component)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Only 'top-level' attributes can be updated using patch interaction."

// MedicationRequestPrescription
* rest.resource[=].searchParam[+].name = "mr-prescription-validation-date"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-prescription-validation-date)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date and time at which the prescriber considered the prescription validated"

// MedicationRequestElement
* rest.resource[=].searchParam[+].name = "mr-type-elementprescription"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-type-elementprescrption)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type of prescription element"

* rest.resource[=].searchParam[+].name = "element-form"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-element-form)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Pharmaceutical form of the prescription/administration item"

* rest.resource[=].searchParam[+].name = "element-indication"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-element-indication)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Explain the reasons that led the prescriber to prescribe this item"

* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/medications-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Indicates the status of the protocol from the prescriber's point of view"

* rest.resource[=].searchParam[+].name = "mr-element-route"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-element-route)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Specifies the route of administration of the product"

* rest.resource[=].searchParam[+].name = "mr-element-site"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-element-site)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Specifies, where appropriate, the exact point on the body where the product is to be applied to the patient"

* rest.resource[=].searchParam[+].name = "combo-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationRequest-combo-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Returns medication request to be administered on a specific date or within a date range"


* rest.resource[=].searchParam[+].name = "mr-date-time-prescription-start"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-date-time-prescription-start)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Effective start date and time of product prescription"

* rest.resource[=].searchParam[+].name = "mr-date-time-prescription-end"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-date-time-prescription-end)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Effective end date and time of product prescription"

* rest.resource[=].searchParam[+].name = "mr-element-reason"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-reason)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Explain the reasons that led the prescriber to prescribe this item"

* rest.resource[=].searchParam[+].name = "mr-element-gonogo-status"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-gonogo-status)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Communicates the conditional state of implementation of the prescription element according to a list of coded values"

* rest.resource[=].searchParam[+].name = "mr-element-gonogo-reasonwaiting"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-gonogo-reasonwaiting)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Describes the reason for the goNogo implementation status of the prescription element if the management option via the goNogo attribute is enabled"

* rest.resource[=].searchParam[+].name = "group-identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationRequest-group-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifier common to all components of the same prescription"

* rest.resource[=].searchParam[+].name = "mr-element-frequency-posology"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-frequency-posology)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Indicates the recurrence of the dosage. By default, every day"

* rest.resource[=].searchParam[+].name = "mr-element-duration-posology"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-duration-posology)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Duration of administration"

* rest.resource[=].searchParam[+].name = "mr-element-rate-posology"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-rate-posology)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Rate of administration in the case of injection"

* rest.resource[=].searchParam[+].name = "mr-element-quantity-posology"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-quantity-posology)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Quantity of the prescription element in the dosage"



// MedicationRequest Component

* rest.resource[=].searchParam[+].name = "mr-prescribed-component-quantity"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-prescribed-component-quantity)
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "Quantity of the component prescribed in the prescription element"

* rest.resource[=].searchParam[+].name = "mr-component-substitution"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-component-substitution)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "True if the component prescribed is declared non-substitutable in the prescription element"

* rest.resource[=].searchParam[+].name = "mr-is-dosage-referent"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-is-dosage-referent)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "True if the component prescribed is the component that refers to the quantity or flow rate expressed in the dosage element when these are gravimetric (for example, mg or mg/h)."

* rest.resource[=].searchParam[+].name = "mr-exempt-ltc"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-exempt-ltc)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifier of the ALD for which the component prescribed is prescribed for one of the reasons for which the patient benefits from an exemption under article L324-1 of the CSS.."

* rest.resource[=].searchParam[+].name = "mr-component-solute"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-component-solute)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "True if the component prescribed is solute in the prescription element"
// Paramètres de recherche communs à MR

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifier"

* rest.resource[=].searchParam[+].name = "mr-wording"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-wording)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Wording of element/component"

// Declaration for CarePlan

* rest.resource[+].type = #CarePlan
* rest.resource[=].profile = Canonical(oncofair-careplan)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Only 'top-level' attributes can be updated using patch interaction."

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Prescribed protocol identifier"

* rest.resource[=].searchParam[+].name = "cp-title"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-cp-title)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Wording of the prescribed protocom"

* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CarePlan-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Indicates the status of the protocol from the prescriber's point of view"

* rest.resource[=].searchParam[+].name = "cp-date-time-reference"
* rest.resource[=].searchParam[=].definition = Canonical(oncofair-sp-cp-date-time-reference)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Reference date and time of this prescribed protocol"

// Declaration for MedicationAdministration

* rest.resource[+].type = #MedicationAdministration
* rest.resource[=].profile = Canonical(oncofair-medicationadministration-report)
* rest.resource[=].profile = Canonical(oncofair-medicationadministration-element)
* rest.resource[=].profile = Canonical(oncofair-medicationadministration-component)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Only 'top-level' attributes can be updated using patch interaction."

// Paramètres de recherche communs à MA

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "External identifier of the administration report"

// Medication Administration Report

* rest.resource[=].searchParam[+].name = "performer"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationAdministration-performer"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Identification of the person who planned, administered or monitored the administration of the medicines represented by the administration elements"


// Medication Administration Element








