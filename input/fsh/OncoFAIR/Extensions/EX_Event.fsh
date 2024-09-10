Extension: EventTypeData
Id: eventTypeData
Title: "Event Type Data"
Description: "Represents the type of logical data for an event."
* value[x] only CodeableConcept
* valueCodeableConcept from VSEventTypeData (required)
* valueCodeableConcept ^short = "Logical data type for the event. Binds with VSEventTypeData."

Extension: EventTimeMin
Id: eventTimeMin
Title: "Event Time Min"
Description: "Represents the minimum time for the event."
* valueTime 1..1

Extension: EventTimeMax
Id: eventTimeMax
Title: "Event Time Max"
Description: "Represents the maximum time for the event."
* valueTime 1..1