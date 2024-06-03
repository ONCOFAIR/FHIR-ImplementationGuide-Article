ValueSet: RouteOfAdministrationValueSet
Id: route-of-administration-valueset
Title: "Route of Administration Values"
Description: "This ValueSet includes route of administration values from SNOMED CT, excluding specific methods."
* include codes from system SNOMED_CT where constraint = "< 736665006 |Dose form administration method (administration method)| minus > (< 736665006 |Dose form administration method (administration method)|)"