# Contexte

## Contexte métier du projet

Ce projet a pour ambition de développer un cadre d’interopérabilité autour des entrepôts de données de santé, en particulier les données de chimiothérapies, utilisées à usage secondaire, tout en suivant le principe FAIR (Findable, Accessible, Interoperable, Reusable).

## Contexte technique du projet

Les ressources FHIR utilisées dans cet IG sont : Patient, Observation, Practitioner, Encounter, Location, Organization, Medication, DeviceDefinition, PlanDefinition, Careplan, MedicationRequest, MedicationAdministration.

# CI/CD

Les workflows associés à ce repository (.github/workflows) permettent :

* D'executer Sushi pour vérifier la grammaire
* De faire les tests avec le validator_cli
* De publier les pages : https://ansforge.github.io/{nom du repo}/ig/{nom de la branche}

# Notes

Ce repo "IG-modele" a été créé à partir du repo [sample-ig](https://github.com/FHIR/sample-ig) de l'organisation GitHub FHIR.

[A COMPLETER: notes supplémentaires pour le lecteur de la spec]
Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* HL7 : Health Level Seven
