Instance: ESMSConsommateur
InstanceOf: CapabilityStatement
Usage: #definition
* name = "ESMSConsommateur"
* title = "ESMS Consommateur"
* status = #active
* experimental = false
* date = "2023-06-27T09:51:35+02:00"
* publisher = "ANS"
* description = "Le rôle du consommateur est de recueillir le dossier d'une personne orientée pour l'examiner, ainsi que son évaluation par la CDAPH. \n   Le consommateur suit également les entrées des personnes orientées dans d'autres structures ainsi que la prise en compte d'une admission impossible par la MDPH.\n   Il correspond au SI-ESMS."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* format[+] = #application/fhir+rdf
* implementationGuide = "https://interop.esante.gouv.fr/ig/fhir/sdo"
* rest.mode = #client
* rest.documentation = "Recherche des dossiers de PO et évaluation (Flux 1 et 3) et suivi des statuts (Flux 5)"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S) \n         et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\n         d’information de santé (CI-SIS)"
* rest.resource[0].type = #DocumentReference
* rest.resource[=].profile = "https://interop.esante.gouv.fr/ig/fhir/sdo/StructureDefinition/esms-document-reference"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[+].type = #Task
* rest.resource[=].profile = "https://interop.esante.gouv.fr/ig/fhir/sdo/StructureDefinition/sdo-task"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.interaction[0].code = #transaction
* rest.interaction[=].documentation = "https://interop.esante.gouv.fr/ig/fhir/sdo/StructureDefinition/esms-bundle-resultat-recherche-decision-evaluation"
* rest.interaction[+].code = #transaction
* rest.interaction[=].documentation = "https://interop.esante.gouv.fr/ig/fhir/sdo/StructureDefinition/sdo-bundle-resultat-recherche-notification-esms"