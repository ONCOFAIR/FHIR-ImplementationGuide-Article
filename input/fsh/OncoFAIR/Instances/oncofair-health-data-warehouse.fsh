Instance : oncofair-health-data-warehouse
InstanceOf : CapabilityStatement
Usage: #definition

* status = #draft
* name = "OncoFAIRHealthDataWarehouse"
* title = "OncoFAIR Health Data Warehouse"
* experimental = true
* description = "A database intended to be used for research, studies or evaluation in the field of health."
* kind = #requirements
* fhirVersion = #5.0.0
* date = "2024-06-19T15:15:00+01:00"
* format[0] = #xml
* format[+] = #json



* rest[0].mode = #server
* rest[0].documentation = "A database intended to be used for research, studies or evaluation in the field of health."
* rest[0].security.cors = false
* rest[0].security.service = $restful-security-service#OAuth


// Declaration for Patient
* rest[0].resource[+].type = #Patient
* rest[0].resource[=].profile = Canonical(oncofair-patient)
* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[+].code = #create
* rest[0].resource[=].searchRevInclude = "Encounter:subject"

* rest[0].resource[=].searchParam[+].name = "identifier"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Identifier of the patient"


// Declaration for Encounter
* rest[0].resource[+].type = #Encounter
* rest[0].resource[=].profile = Canonical(oncofair-encounter)
* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[+].code = #create
* rest[0].resource[=].searchInclude = "Encounter:subject"
* rest[0].resource[=].searchRevInclude[+] = "MedicationAdministration:encounter"
* rest[0].resource[=].searchRevInclude[+] = "MedicationRequest:encounter"

* rest[0].resource[=].searchParam[+].name = "identifier"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Identifier of the patient's stay"


// Declaration for Observation
* rest[0].resource[+].type = #Observation
* rest[0].resource[=].profile = Canonical(oncofair-observation)
* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[+].code = #read
//* rest[0].resource[=].searchRevInclude = "MedicationRequest:reason"

* rest[0].resource[=].searchParam[+].name = "clinical-code"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Nature of additional information representing by LOINC code"

* rest[0].resource[=].searchParam[+].name = "clinical-date"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest[0].resource[=].searchParam[=].type = #date
* rest[0].resource[=].searchParam[=].documentation = "Date and time of registration of the additional information"


// Declaration for Medication
* rest[0].resource[+].type = #Medication
* rest[0].resource[=].profile = Canonical(oncofair-medication)
* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[+].code = #create
* rest[0].resource[=].searchRevInclude[+] = "MedicationRequest:medication"
* rest[0].resource[=].searchRevInclude[+] = "MedicationAdministration:medication"

* rest[0].resource[=].searchParam[+].name = "_filter"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-filter"
* rest[0].resource[=].searchParam[=].type = #special
* rest[0].resource[=].searchParam[=].documentation = "Filter search parameter that supports a more sophisticated search grammar. See [documentation](https://hl7.org/fhir/search_filter.html) for more details."

* rest[0].resource[=].searchParam[+].name = "_has"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest[0].resource[=].searchParam[=].type = #special
* rest[0].resource[=].searchParam[=].documentation = "Enables resources to be selected on the basis of the properties of the resources that refer to them (reverse chaining)."

* rest[0].resource[=].searchParam[+].name = "_id"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Logical resource identifier"

* rest[0].resource[=].searchParam[+].name = "clinical-code"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Identifies the prescribed component according to a nomenclature depending on the type"

* rest[0].resource[=].searchParam[+].name = "medication-type"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-medication-type)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Specifies whether the component prescribed is a speciality, a common name or any other product (pharmacopoeia)."


// Declaration for MedicationRequest
* rest[0].resource[+].type = #MedicationRequest
* rest[0].resource[=].profile = Canonical(oncofair-medicationrequest-prescription)
* rest[0].resource[=].supportedProfile = Canonical(oncofair-medicationrequest-element)
* rest[0].resource[=].supportedProfile = Canonical(oncofair-medicationrequest-component)
* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[+].code = #create
* rest[0].resource[=].searchInclude[+] = "MedicationRequest:encounter"
//* rest[0].resource[=].searchInclude[+] = "MedicationRequest:reason"
//* rest[0].resource[=].searchInclude[+] = "MedicationRequest:basedOn"
* rest[0].resource[=].searchInclude[+] = "MedicationRequest:medication"
//* rest[0].resource[=].searchRevInclude = "MedicationRequest:basedOn"

// Paramètres de recherche communs à MR
* rest[0].resource[=].searchParam[+].name = "identifier"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Identifier"

* rest[0].resource[=].searchParam[+].name = "wording"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-wording)
* rest[0].resource[=].searchParam[=].type = #string
* rest[0].resource[=].searchParam[=].documentation = "Wording of element/component"

* rest[0].resource[=].searchParam[+].name = "indication"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-indication)
* rest[0].resource[=].searchParam[=].type = #string
* rest[0].resource[=].searchParam[=].documentation = "Indications concerning the prescription item and the component prescribed"

// MedicationRequestPrescription
* rest[0].resource[=].searchParam[+].name = "mr-prescription-validation-date"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-prescription-validation-date)
* rest[0].resource[=].searchParam[=].type = #date
* rest[0].resource[=].searchParam[=].documentation = "Date and time at which the prescriber considered the prescription validated"

// MedicationRequestElement
* rest[0].resource[=].searchParam[+].name = "mr-type-elementprescription"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-type-elementprescrption)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Type of prescription element"

* rest[0].resource[=].searchParam[+].name = "element-form"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-element-form)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Pharmaceutical form of the prescription item"

* rest[0].resource[=].searchParam[+].name = "status"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/medications-status"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Indicates the status of the protocol from the prescriber's point of view"

* rest[0].resource[=].searchParam[+].name = "element-route"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-element-route)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Specifies the route of administration of the product"

* rest[0].resource[=].searchParam[+].name = "element-site"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-element-site)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Specifies, where appropriate, the exact point on the body where the product is to be applied to the patient"

* rest[0].resource[=].searchParam[+].name = "combo-date"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationRequest-combo-date"
* rest[0].resource[=].searchParam[=].type = #date
* rest[0].resource[=].searchParam[=].documentation = "Returns medication request to be administered on a specific date or within a date range"

* rest[0].resource[=].searchParam[+].name = "mr-date-time-prescription-start"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-date-time-prescription-start)
* rest[0].resource[=].searchParam[=].type = #date
* rest[0].resource[=].searchParam[=].documentation = "Effective start date and time of product prescription"

* rest[0].resource[=].searchParam[+].name = "mr-date-time-prescription-end"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-date-time-prescription-end)
* rest[0].resource[=].searchParam[=].type = #date
* rest[0].resource[=].searchParam[=].documentation = "Effective end date and time of product prescription"

* rest[0].resource[=].searchParam[+].name = "mr-element-gonogo-status"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-gonogo-status)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Communicates the conditional state of implementation of the prescription element according to a list of coded values"

* rest[0].resource[=].searchParam[+].name = "mr-element-gonogo-reasonwaiting"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-gonogo-reasonwaiting)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Describes the reason for the goNogo implementation status of the prescription element if the management option via the goNogo attribute is enabled"

* rest[0].resource[=].searchParam[+].name = "group-identifier"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationRequest-group-identifier"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Identifier common to all components of the same prescription"

* rest[0].resource[=].searchParam[+].name = "mr-element-frequency-posology"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-frequency-posology)
* rest[0].resource[=].searchParam[=].type = #number
* rest[0].resource[=].searchParam[=].documentation = "Indicates the recurrence of the dosage. By default, every day"

* rest[0].resource[=].searchParam[+].name = "mr-element-duration-posology"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-duration-posology)
* rest[0].resource[=].searchParam[=].type = #number
* rest[0].resource[=].searchParam[=].documentation = "Duration of administration"

* rest[0].resource[=].searchParam[+].name = "mr-element-rate-posology"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-rate-posology)
* rest[0].resource[=].searchParam[=].type = #quantity
* rest[0].resource[=].searchParam[=].documentation = "Rate of administration in the case of injection"

* rest[0].resource[=].searchParam[+].name = "mr-element-quantity-posology"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-element-quantity-posology)
* rest[0].resource[=].searchParam[=].type = #quantity
* rest[0].resource[=].searchParam[=].documentation = "Quantity of the prescription element in the dosage"

// MedicationRequest Component
* rest[0].resource[=].searchParam[+].name = "mr-prescribed-component-quantity"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-prescribed-component-quantity)
* rest[0].resource[=].searchParam[=].type = #quantity
* rest[0].resource[=].searchParam[=].documentation = "Quantity of the component prescribed in the prescription element"

* rest[0].resource[=].searchParam[+].name = "mr-component-substitution"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-component-substitution)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "True if the component prescribed is declared non-substitutable in the prescription element"

* rest[0].resource[=].searchParam[+].name = "mr-is-dosage-referent"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-is-dosage-referent)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "True if the component prescribed is the component that refers to the quantity or flow rate expressed in the dosage element when these are gravimetric (for example, mg or mg/h)."

* rest[0].resource[=].searchParam[+].name = "mr-exempt-ltc"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-exempt-ltc)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Identifier of the ALD for which the component prescribed is prescribed for one of the reasons for which the patient benefits from an exemption under article L324-1 of the CSS."

* rest[0].resource[=].searchParam[+].name = "mr-component-solute"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-mr-component-solute)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "True if the component prescribed is solute in the prescription element"


// Declaration for CarePlan
* rest[0].resource[+].type = #CarePlan
* rest[0].resource[=].profile = Canonical(oncofair-careplan)
* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[+].code = #create
* rest[0].resource[=].searchInclude = "CarePlan:basedOn"
//* rest[0].resource[=].searchInclude = "MedicationRequest:basedOn"

* rest[0].resource[=].searchParam[+].name = "identifier"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Prescribed protocol identifier"

* rest[0].resource[=].searchParam[+].name = "cp-title"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-cp-title)
* rest[0].resource[=].searchParam[=].type = #string
* rest[0].resource[=].searchParam[=].documentation = "Wording of the prescribed protocol"

* rest[0].resource[=].searchParam[+].name = "status"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CarePlan-status"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Indicates the status of the protocol from the prescriber's point of view"

* rest[0].resource[=].searchParam[+].name = "cp-date-time-reference"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-cp-date-time-reference)
* rest[0].resource[=].searchParam[=].type = #date
* rest[0].resource[=].searchParam[=].documentation = "Reference date and time of this prescribed protocol"

* rest[0].resource[=].searchParam[+].name = "indication"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-indication)
* rest[0].resource[=].searchParam[=].type = #string
* rest[0].resource[=].searchParam[=].documentation = "Indication concerning the prescribed protocol"


// Declaration for MedicationAdministration
* rest[0].resource[+].type = #MedicationAdministration
* rest[0].resource[=].profile = Canonical(oncofair-medicationadministration-element)
* rest[0].resource[=].supportedProfile = Canonical(oncofair-medicationadministration-component)
* rest[0].resource[=].supportedProfile = Canonical(oncofair-medicationadministration-report)
* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[+].code = #create
* rest[0].resource[=].searchInclude[+] = "MedicationAdministration:encounter"
//* rest[0].resource[=].searchInclude[+] = "MedicationAdministration:partOf"
* rest[0].resource[=].searchInclude[+] = "MedicationAdministration:medication"
//* rest[0].resource[=].searchRevInclude = "MedicationAdministration:partOf"

// Medication Administration Element
* rest[0].resource[=].searchParam[+].name = "ma-method"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-ma-method)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Type of administration element"

* rest[0].resource[=].searchParam[+].name = "ma-category"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-ma-category)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Code identifying the nature of the administration element"

* rest[0].resource[=].searchParam[+].name = "element-form"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-element-form)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Pharmaceutical form of the administration item"

* rest[0].resource[=].searchParam[+].name = "element-route"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-element-route)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Specifies the route of administration of the product"

* rest[0].resource[=].searchParam[+].name = "element-site"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-element-site)
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Specifies, where applicable, the exact point on the body where the product is to be applied to the patient. By default, the place of administration is that shown in the prescription element associated with the administration element"

// Medication Administration Component
* rest[0].resource[=].searchParam[+].name = "date"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/medications-date"
* rest[0].resource[=].searchParam[=].type = #date
* rest[0].resource[=].searchParam[=].documentation = "Effective date and time for starting/ending administration of the administration element"

* rest[0].resource[=].searchParam[+].name = "ma-comments"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-ma-comments)
* rest[0].resource[=].searchParam[=].type = #string
* rest[0].resource[=].searchParam[=].documentation = "Comments of component"

* rest[0].resource[=].searchParam[+].name = "ma-planned-quantity"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-ma-planned-quantity)
* rest[0].resource[=].searchParam[=].type = #quantity
* rest[0].resource[=].searchParam[=].documentation = "Quantity of the component administered in the administration element that was intended to be administered to the patient"

* rest[0].resource[=].searchParam[+].name = "ma-prescribed-quantity"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-ma-prescribed-quantity)
* rest[0].resource[=].searchParam[=].type = #quantity
* rest[0].resource[=].searchParam[=].documentation = "Quantity actually administered to the patient or planned to be administered"

// Paramètres de recherche communs à MA
* rest[0].resource[=].searchParam[+].name = "identifier"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Identifier"

* rest[0].resource[=].searchParam[+].name = "wording"
* rest[0].resource[=].searchParam[=].definition = Canonical(oncofair-sp-wording)
* rest[0].resource[=].searchParam[=].type = #string
* rest[0].resource[=].searchParam[=].documentation = "Wording of component/element of administration"

// Medication Administration Report
* rest[0].resource[=].searchParam[+].name = "performer"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicationAdministration-performer"
* rest[0].resource[=].searchParam[=].type = #reference
* rest[0].resource[=].searchParam[=].documentation = "Identification of the person who planned, administered or monitored the administration of the medicines represented by the administration elements"



* rest[1].mode = #client
* rest[1].documentation = "Search for aggregated data on chemotherapy to feed the warehouse"
* rest[1].security.cors = false
* rest[1].security.service = $restful-security-service#OAuth


// Declaration for Patient
* rest[1].resource[+].type = #Patient
* rest[1].resource[=].profile = Canonical(oncofair-patient)
* rest[1].resource[=].interaction[+].code = #search-type
* rest[1].resource[=].interaction[+].code = #read
* rest[1].resource[=].searchRevInclude = "Encounter:subject"

* rest[1].resource[=].searchParam[+].name = "_lastUpdated"
* rest[1].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest[1].resource[=].searchParam[=].type = #date
* rest[1].resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for Encounter
* rest[1].resource[+].type = #Encounter
* rest[1].resource[=].profile = Canonical(oncofair-encounter)
* rest[1].resource[=].interaction[+].code = #search-type
* rest[1].resource[=].interaction[+].code = #read
* rest[1].resource[=].searchInclude = "Encounter:subject"
* rest[1].resource[=].searchRevInclude[+] = "MedicationAdministration:encounter"
* rest[1].resource[=].searchRevInclude[+] = "MedicationRequest:encounter"

* rest[1].resource[=].searchParam[+].name = "_lastUpdated"
* rest[1].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest[1].resource[=].searchParam[=].type = #date
* rest[1].resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for Medication
* rest[1].resource[+].type = #Medication
* rest[1].resource[=].profile = Canonical(oncofair-medication)
* rest[1].resource[=].interaction[+].code = #search-type
* rest[1].resource[=].interaction[+].code = #read
* rest[1].resource[=].searchRevInclude[+] = "MedicationRequest:medication"
* rest[1].resource[=].searchRevInclude[+] = "MedicationAdministration:medication"

* rest[1].resource[=].searchParam[+].name = "_lastUpdated"
* rest[1].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest[1].resource[=].searchParam[=].type = #date
* rest[1].resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for MedicationRequest
* rest[1].resource[+].type = #MedicationRequest
* rest[1].resource[=].profile = Canonical(oncofair-medicationrequest-prescription)
* rest[1].resource[=].supportedProfile[0] = Canonical(oncofair-medicationrequest-element)
* rest[1].resource[=].supportedProfile[1] = Canonical(oncofair-medicationrequest-component)
* rest[1].resource[=].interaction[+].code = #search-type
* rest[1].resource[=].interaction[+].code = #read
* rest[1].resource[=].searchInclude[+] = "MedicationRequest:encounter"
//* rest[1].resource[=].searchInclude[+] = "MedicationRequest:reason"
//* rest[1].resource[=].searchInclude[+] = "MedicationRequest:basedOn"
* rest[1].resource[=].searchInclude[+] = "MedicationRequest:medication"
//* rest[1].resource[=].searchRevInclude = "MedicationRequest:basedOn"

* rest[1].resource[=].searchParam[+].name = "_lastUpdated"
* rest[1].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest[1].resource[=].searchParam[=].type = #date
* rest[1].resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for CarePlan
* rest[1].resource[+].type = #CarePlan
* rest[1].resource[=].profile = Canonical(oncofair-careplan)
* rest[1].resource[=].interaction[+].code = #search-type
* rest[1].resource[=].interaction[+].code = #read
* rest[1].resource[=].searchInclude = "CarePlan:basedOn"
//* rest[1].resource[=].searchInclude = "MedicationRequest:basedOn"

* rest[1].resource[=].searchParam[+].name = "_lastUpdated"
* rest[1].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest[1].resource[=].searchParam[=].type = #date
* rest[1].resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for MedicationAdministration
* rest[1].resource[+].type = #MedicationAdministration
* rest[1].resource[=].profile = Canonical(oncofair-medicationadministration-element)
* rest[1].resource[=].supportedProfile[0] = Canonical(oncofair-medicationadministration-component)
* rest[1].resource[=].supportedProfile[1] = Canonical(oncofair-medicationadministration-report)
* rest[1].resource[=].interaction[+].code = #search-type
* rest[1].resource[=].interaction[+].code = #read
* rest[1].resource[=].searchInclude[+] = "MedicationAdministration:encounter"
//* rest[1].resource[=].searchInclude[+] = "MedicationAdministration:partOf"
* rest[1].resource[=].searchInclude[+] = "MedicationAdministration:medication"
//* rest[1].resource[=].searchRevInclude = "MedicationAdministration:partOf"

 
* rest[1].resource[=].searchParam[+].name = "_lastUpdated"
* rest[1].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest[1].resource[=].searchParam[=].type = #date
* rest[1].resource[=].searchParam[=].documentation = "When the resource version last changed"


// Declaration for Observation
* rest[1].resource[+].type = #Observation
* rest[1].resource[=].profile = Canonical(oncofair-observation)
* rest[1].resource[=].interaction[+].code = #search-type
* rest[1].resource[=].interaction[+].code = #read
//* rest[1].resource[=].searchRevInclude = "MedicationRequest:reason"

* rest[1].resource[=].searchParam[+].name = "_lastUpdated"
* rest[1].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest[1].resource[=].searchParam[=].type = #date
* rest[1].resource[=].searchParam[=].documentation = "When the resource version last changed"