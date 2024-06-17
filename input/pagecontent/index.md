### Introduction

The OncoFAIR project is designed to improve the interoperability and reuse of healthcare data in oncology, focusing on chemotherapy. This guide details the use of FHIR standards to optimize prescribing and medication administration for oncology patients.

#### Objectives

* Facilitate access to and exchange of healthcare data in oncology.
* Improve the accuracy and efficiency of patient treatment.
* Contribute to the advancement of clinical research in oncology.

#### Background 

Supported by the Brittany Region and Biotech Santé Bretagne, this project benefits from the healthcare data interoperability expertise of the Domasia team at LTSI (Rennes University Hospital) and the Kereval test engineering laboratory.

### Target audience

This guide is intended for developers, healthcare professionals and researchers involved in managing and modeling healthcare data in oncology. It is assumed that the reader is familiar with the FHIR standard.

<!--### UML diagram

This UML diagram provides an overview of the data structures, and is essential for understanding the relationships between the various FHIR resources used in the project.

<div align="center;"> 
<img src="uml_oncofair_english.svg" alt="UML class diagram representing the FHIR R5 medication prescription and administration use case" width="100%"/>-->

</div>

### Profiled FHIR resources

Each FHIR resource has been tailored to meet the specific requirements of the OncoFAIR project, with constraints on cardinalities and extensions to capture critical oncology data :

#### Profiles 

La liste ci-dessous expose la liste des profils génériques profilés.

{% sql SELECT '[' || Name ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description FROM Resources WHERE Type = 'StructureDefinition'%}


#### Extensions 

<!--FHIR extensions such as `TreatmentCycleNumber` and `TreatmentDayNumber` are used for oncology treatment-specific information.-->

### FHIR interaction

The following interactions can be applied:

* *Search* to search for one or more resources via search parameters. Uses the `HTTP GET` method.
* *Read* to access the current state of the resource. Uses the `HTTP GET` method.
* *Create* method to add a new resource to the server. Uses the `HTTP POST` method.
* *Update* to update an existing resource. Use the `HTTP PUT` method.

Finally, the body of HTTP requests is a FHIR resource that can be formatted in XML, JSON or RDF.

---

<!-- [Return to contents](file:///D:/Home/bguilbert/Documents/fhir/oncofair/output/toc.html "Return to contents") -->
