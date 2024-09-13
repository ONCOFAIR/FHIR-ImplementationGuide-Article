### Validateurs FHIR

Here is the list of available FHIR validator available on [EVSClient](https://oncofair.kereval.cloud/evs) :
<!-- Liste en dur ou trouver une requête SQL pour uniquement les profils, car là on a aussi les valueset, code system
{% sql SELECT '[' || Name ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Title FROM Resources WHERE Type = 'StructureDefinition'%}
!-->
### Serveur FHIR

Un [serveur FHIR](https://oncofair.kereval.cloud/cqf-ruler/fhir/) est disponible pour stocker les ressources FHIR échangées.
Ce même serveur prend en compte les opérations issues de [CQL](https://cql.hl7.org/)

### Cas de test
Une liste des cas de test associés à la mise en place de cet IG est disponible sur la [plateforme Gazelle](https://oncofair.kereval.cloud/)