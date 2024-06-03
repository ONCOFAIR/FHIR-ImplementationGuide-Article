CodeSystem: SNOMEDCT
Id: snomedct
Title: "SNOMED CT (all versions)"
Description: "SNOMED CT is the most comprehensive and precise clinical health terminology product in the world, owned and distributed around the world by The International Health Terminology Standards Development Organisation (IHTSDO)."

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fhir

* ^status = #draft
* ^experimental = true

* ^caseSensitive = false
* ^hierarchyMeaning = #is-a
* ^compositional = true
* ^versionNeeded = false
* ^content = #not-present
* ^filter[0].code = #concept
* ^filter[=].description = "Filter that includes concepts based on their logical definition. e.g. [concept] [is-a] [x] - include all concepts with an is-a relationship to concept x, or [concept] [in] [x]- include all concepts in the reference set identified by concept x"
* ^filter[=].operator[0] = #is-a
* ^filter[=].operator[+] = #in
* ^filter[=].value = "A SNOMED CT code"
* ^filter[+].code = #expression
* ^filter[=].description = "The result of the filter is the result of executing the given SNOMED CT Expression Constraint"
* ^filter[=].operator = #=
* ^filter[=].value = "A SNOMED CT ECL expression (see http://snomed.org/ecl)"
* ^filter[+].code = #expressions
* ^filter[=].description = "Whether post-coordinated expressions are included in the value set"
* ^filter[=].operator = #=
* ^filter[=].value = "true or false"
* ^property[0].code = #inactive
* ^property[=].uri = "http://snomed.info/field/Concept.active"
* ^property[=].description = "Whether the code is active or not (defaults to false). Not the same as deprecated"
* ^property[=].type = #boolean
* ^property[+].code = #definitionStatusId
* ^property[=].uri = "http://snomed.info/field/Concept.definitionStatusId"
* ^property[=].description = "Either of the codes that are descendants of 900000000000444006"
* ^property[=].type = #code
* ^property[+].code = #parent
* ^property[=].uri = "http://snomed.info/field/Concept.parent"
* ^property[=].description = "A SNOMED CT concept id that has the target of a direct is-a relationship from the concept"
* ^property[=].type = #code
* ^property[+].code = #child
* ^property[=].uri = "http://snomed.info/field/Concept.child"
* ^property[=].description = "A SNOMED CT concept id that has a direct is-a relationship to the concept"
* ^property[=].type = #code
* ^property[+].code = #moduleId
* ^property[=].uri = "http://snomed.info/field/Concept.moduleId"
* ^property[=].description = "The SNOMED CT concept id of the module that the concept belongs to."
* ^property[=].type = #code
* ^property[+].code = #normalForm
* ^property[=].uri = "http://snomed.info/field/Concept.normalForm"
* ^property[=].description = "Generated Normal form expression for the provided code or expression, with terms"
* ^property[=].type = #string
* ^property[+].code = #normalFormTerse
* ^property[=].uri = "http://snomed.info/field/Concept.normalFormTerset"
* ^property[=].description = "Generated Normal form expression for the provided code or expression, conceptIds only"
* ^property[=].type = #string
* ^property[+].code = #"Due to"
* ^property[=].uri = "http://snomed.info/id/42752001"
* ^property[=].type = #code
* ^property[+].code = #"Associated with"
* ^property[=].uri = "http://snomed.info/id/47429007"
* ^property[=].type = #code
* ^property[+].code = #"Associated morphology"
* ^property[=].uri = "http://snomed.info/id/116676008"
* ^property[=].type = #code
* ^property[+].code = #"Has specimen"
* ^property[=].uri = "http://snomed.info/id/116686009"
* ^property[=].type = #code
* ^property[+].code = #"Specimen source morphology"
* ^property[=].uri = "http://snomed.info/id/118168003"
* ^property[=].type = #code
* ^property[+].code = #"Specimen source topography"
* ^property[=].uri = "http://snomed.info/id/118169006"
* ^property[=].type = #code
* ^property[+].code = #"Specimen source identity"
* ^property[=].uri = "http://snomed.info/id/118170007"
* ^property[=].type = #code
* ^property[+].code = #"Specimen procedure"
* ^property[=].uri = "http://snomed.info/id/118171006"
* ^property[=].type = #code
* ^property[+].code = #"Part of"
* ^property[=].uri = "http://snomed.info/id/123005000"
* ^property[=].type = #code
* ^property[+].code = #"Has active ingredient"
* ^property[=].uri = "http://snomed.info/id/127489000"
* ^property[=].type = #code
* ^property[+].code = #"Subject of information"
* ^property[=].uri = "http://snomed.info/id/131195008"
* ^property[=].type = #code
* ^property[+].code = #"Causative agent"
* ^property[=].uri = "http://snomed.info/id/246075003"
* ^property[=].type = #code
* ^property[+].code = #"Associated finding"
* ^property[=].uri = "http://snomed.info/id/246090004"
* ^property[=].type = #code
* ^property[+].code = #Component
* ^property[=].uri = "http://snomed.info/id/246093002"
* ^property[=].type = #code
* ^property[+].code = #Severity
* ^property[=].uri = "http://snomed.info/id/246112005"
* ^property[=].type = #code
* ^property[+].code = #Occurrence
* ^property[=].uri = "http://snomed.info/id/246454002"
* ^property[=].type = #code
* ^property[+].code = #Episodicity
* ^property[=].uri = "http://snomed.info/id/246456000"
* ^property[=].type = #code
* ^property[+].code = #Technique
* ^property[=].uri = "http://snomed.info/id/246501002"
* ^property[=].type = #code
* ^property[+].code = #"Revision status"
* ^property[=].uri = "http://snomed.info/id/246513007"
* ^property[=].type = #code
* ^property[+].code = #Units
* ^property[=].uri = "http://snomed.info/id/246514001"
* ^property[=].type = #code
* ^property[+].code = #After
* ^property[=].uri = "http://snomed.info/id/255234002"
* ^property[=].type = #code
* ^property[+].code = #Access
* ^property[=].uri = "http://snomed.info/id/260507000"
* ^property[=].type = #code
* ^property[+].code = #Method
* ^property[=].uri = "http://snomed.info/id/260686004"
* ^property[=].type = #code
* ^property[+].code = #Priority
* ^property[=].uri = "http://snomed.info/id/260870009"
* ^property[=].type = #code
* ^property[+].code = #"Clinical course"
* ^property[=].uri = "http://snomed.info/id/263502005"
* ^property[=].type = #code
* ^property[+].code = #Laterality
* ^property[=].uri = "http://snomed.info/id/272741003"
* ^property[=].type = #code
* ^property[+].code = #"Associated procedure"
* ^property[=].uri = "http://snomed.info/id/363589002"
* ^property[=].type = #code
* ^property[+].code = #"Finding site"
* ^property[=].uri = "http://snomed.info/id/363698007"
* ^property[=].type = #code
* ^property[+].code = #"Direct device"
* ^property[=].uri = "http://snomed.info/id/363699004"
* ^property[=].type = #code
* ^property[+].code = #"Direct morphology"
* ^property[=].uri = "http://snomed.info/id/363700003"
* ^property[=].type = #code
* ^property[+].code = #"Direct substance"
* ^property[=].uri = "http://snomed.info/id/363701004"
* ^property[=].type = #code
* ^property[+].code = #"Has focus"
* ^property[=].uri = "http://snomed.info/id/363702006"
* ^property[=].type = #code
* ^property[+].code = #"Has intent"
* ^property[=].uri = "http://snomed.info/id/363703001"
* ^property[=].type = #code
* ^property[+].code = #"Procedure site"
* ^property[=].uri = "http://snomed.info/id/363704007"
* ^property[=].type = #code
* ^property[+].code = #"Has definitional manifestation"
* ^property[=].uri = "http://snomed.info/id/363705008"
* ^property[=].type = #code
* ^property[+].code = #"Indirect morphology"
* ^property[=].uri = "http://snomed.info/id/363709002"
* ^property[=].type = #code
* ^property[+].code = #"Indirect device"
* ^property[=].uri = "http://snomed.info/id/363710007"
* ^property[=].type = #code
* ^property[+].code = #"Has interpretation"
* ^property[=].uri = "http://snomed.info/id/363713009"
* ^property[=].type = #code
* ^property[+].code = #Interprets
* ^property[=].uri = "http://snomed.info/id/363714003"
* ^property[=].type = #code
* ^property[+].code = #"Measurement method"
* ^property[=].uri = "http://snomed.info/id/370129005"
* ^property[=].type = #code
* ^property[+].code = #Property
* ^property[=].uri = "http://snomed.info/id/370130000"
* ^property[=].type = #code
* ^property[+].code = #"Recipient category"
* ^property[=].uri = "http://snomed.info/id/370131001"
* ^property[=].type = #code
* ^property[+].code = #"Scale type"
* ^property[=].uri = "http://snomed.info/id/370132008"
* ^property[=].type = #code
* ^property[+].code = #"Specimen substance"
* ^property[=].uri = "http://snomed.info/id/370133003"
* ^property[=].type = #code
* ^property[+].code = #"Time aspect"
* ^property[=].uri = "http://snomed.info/id/370134009"
* ^property[=].type = #code
* ^property[+].code = #"Pathological process"
* ^property[=].uri = "http://snomed.info/id/370135005"
* ^property[=].type = #code
* ^property[+].code = #"Procedure site - Direct"
* ^property[=].uri = "http://snomed.info/id/405813007"
* ^property[=].type = #code
* ^property[+].code = #"Procedure site - Indirect"
* ^property[=].uri = "http://snomed.info/id/405814001"
* ^property[=].type = #code
* ^property[+].code = #"Procedure device"
* ^property[=].uri = "http://snomed.info/id/405815000"
* ^property[=].type = #code
* ^property[+].code = #"Procedure morphology"
* ^property[=].uri = "http://snomed.info/id/405816004"
* ^property[=].type = #code
* ^property[+].code = #"Finding context"
* ^property[=].uri = "http://snomed.info/id/408729009"
* ^property[=].type = #code
* ^property[+].code = #"Procedure context"
* ^property[=].uri = "http://snomed.info/id/408730004"
* ^property[=].type = #code
* ^property[+].code = #"Temporal context"
* ^property[=].uri = "http://snomed.info/id/408731000"
* ^property[=].type = #code
* ^property[+].code = #"Subject relationship context"
* ^property[=].uri = "http://snomed.info/id/408732007"
* ^property[=].type = #code
* ^property[+].code = #"Route of administration"
* ^property[=].uri = "http://snomed.info/id/410675002"
* ^property[=].type = #code
* ^property[+].code = #"Has dose form"
* ^property[=].uri = "http://snomed.info/id/411116001"
* ^property[=].type = #code
* ^property[+].code = #"Finding method"
* ^property[=].uri = "http://snomed.info/id/418775008"
* ^property[=].type = #code
* ^property[+].code = #"Finding informer"
* ^property[=].uri = "http://snomed.info/id/419066007"
* ^property[=].type = #code
* ^property[+].code = #"Using device"
* ^property[=].uri = "http://snomed.info/id/424226004"
* ^property[=].type = #code
* ^property[+].code = #"Using energy"
* ^property[=].uri = "http://snomed.info/id/424244007"
* ^property[=].type = #code
* ^property[+].code = #"Using substance"
* ^property[=].uri = "http://snomed.info/id/424361007"
* ^property[=].type = #code
* ^property[+].code = #"Surgical approach"
* ^property[=].uri = "http://snomed.info/id/424876005"
* ^property[=].type = #code
* ^property[+].code = #"Using access device"
* ^property[=].uri = "http://snomed.info/id/425391005"
* ^property[=].type = #code
* ^property[+].code = #"Role group"
* ^property[=].uri = "http://snomed.info/id/609096000"
* ^property[=].type = #code
* ^property[+].code = #"Property type"
* ^property[=].uri = "http://snomed.info/id/704318007"
* ^property[=].type = #code
* ^property[+].code = #"Inheres in"
* ^property[=].uri = "http://snomed.info/id/704319004"
* ^property[=].type = #code
* ^property[+].code = #Towards
* ^property[=].uri = "http://snomed.info/id/704320005"
* ^property[=].type = #code
* ^property[+].code = #Characterizes
* ^property[=].uri = "http://snomed.info/id/704321009"
* ^property[=].type = #code
* ^property[+].code = #"Process agent"
* ^property[=].uri = "http://snomed.info/id/704322002"
* ^property[=].type = #code
* ^property[+].code = #"Process duration"
* ^property[=].uri = "http://snomed.info/id/704323007"
* ^property[=].type = #code
* ^property[+].code = #"Process output"
* ^property[=].uri = "http://snomed.info/id/704324001"
* ^property[=].type = #code
* ^property[+].code = #"Relative to"
* ^property[=].uri = "http://snomed.info/id/704325000"
* ^property[=].type = #code
* ^property[+].code = #Precondition
* ^property[=].uri = "http://snomed.info/id/704326004"
* ^property[=].type = #code
* ^property[+].code = #"Direct site"
* ^property[=].uri = "http://snomed.info/id/704327008"
* ^property[=].type = #code
* ^property[+].code = #"Specified by"
* ^property[=].uri = "http://snomed.info/id/704346009"
* ^property[=].type = #code
* ^property[+].code = #Observes
* ^property[=].uri = "http://snomed.info/id/704347000"
* ^property[=].type = #code
* ^property[+].code = #"Is about"
* ^property[=].uri = "http://snomed.info/id/704647008"
* ^property[=].type = #code



