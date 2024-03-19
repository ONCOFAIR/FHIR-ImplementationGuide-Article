Profile: AccomodationUnit
Parent: Location
Id: accomodation-unit
Title: "Accomodation Unit"
Description : "Accomodation unit."
* ^url = "http://ltsi.univ-rennes.fr/StructureDefinition/AccomodationUnit"
* name 1..1 MS
* name ^short = "Name of the accomodation unit"
* managingOrganization 1..1 MS
* managingOrganization only Reference(MedicalLiabilityUnit)
* managingOrganization ^short = "Medical liability unit managing this accommodation unit"