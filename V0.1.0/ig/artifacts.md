# Artifacts Summary - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md) | A structure or professional using chemotherapy data (complete or aggregated). These data may be used for a variety of purposes (pharmacovigilance, clinical studies, etc.). |
| [OncoFAIR Health Data Warehouse](CapabilityStatement-oncofair-health-data-warehouse.md) | A database intended to be used for research, studies or evaluation in the field of health. |
| [OncoFAIR Producer Chemotherapy Data](CapabilityStatement-oncofair-producer-chemotherapy-data.md) | Software for tracking chemotherapy information relating to a patient. The software generates chemotherapy data by means of data updates by medical staff. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [oncofair-sp-cp-date-time-reference](SearchParameter-oncofair-sp-cp-date-time-reference.md) | Search for the reference date and time of the prescribed protocol |
| [oncofair-sp-cp-title](SearchParameter-oncofair-sp-cp-title.md) | Search for the title of the prescribed protocol |
| [oncofair-sp-element-form](SearchParameter-oncofair-sp-element-form.md) | Search for the pharmaceutical form of the prescription/administration item |
| [oncofair-sp-element-route](SearchParameter-oncofair-sp-element-route.md) | Search for the route of administration element |
| [oncofair-sp-element-site](SearchParameter-oncofair-sp-element-site.md) | Search on the administration site of the element |
| [oncofair-sp-indication](SearchParameter-oncofair-sp-indication.md) | Search for indications concerning the prescription item and the component prescribed or prescribed protocol |
| [oncofair-sp-ma-category](SearchParameter-oncofair-sp-ma-category.md) | Search for code identifying the nature of the administration element |
| [oncofair-sp-ma-comments](SearchParameter-oncofair-sp-ma-comments.md) | Search for comments on the administration element |
| [oncofair-sp-ma-method](SearchParameter-oncofair-sp-ma-method.md) | Search for type of administration element |
| [oncofair-sp-ma-planned-quantity](SearchParameter-oncofair-sp-ma-planned-quantity.md) | Search for the expected quantity of the administration element |
| [oncofair-sp-ma-prescribed-quantity](SearchParameter-oncofair-sp-ma-prescribed-quantity.md) | Search for the prescribed quantity of the administration element |
| [oncofair-sp-medication-type](SearchParameter-oncofair-sp-medication-type.md) | Search for type of medication |
| [oncofair-sp-mr-component-solute](SearchParameter-oncofair-sp-mr-component-solute.md) | Search to find out if the component prescribed is solute in the prescription element |
| [oncofair-sp-mr-component-substitution](SearchParameter-oncofair-sp-mr-component-substitution.md) | Search to find out if the component prescribed is declared non-substitutable in the prescription element |
| [oncofair-sp-mr-date-time-prescription-end](SearchParameter-oncofair-sp-mr-date-time-prescription-end.md) | Search for the the date/time prescription end |
| [oncofair-sp-mr-date-time-prescription-start](SearchParameter-oncofair-sp-mr-date-time-prescription-start.md) | Search for the date/time prescription start |
| [oncofair-sp-mr-element-duration-posology](SearchParameter-oncofair-sp-mr-element-duration-posology.md) | Search for duration of administration |
| [oncofair-sp-mr-element-frequency-posology](SearchParameter-oncofair-sp-mr-element-frequency-posology.md) | Search for the frequency of the dosage element |
| [oncofair-sp-mr-element-gonogo-reasonwaiting](SearchParameter-oncofair-sp-mr-element-gonogo-reasonwaiting.md) | Search for the element goNogo reason waiting |
| [oncofair-sp-mr-element-gonogo-status](SearchParameter-oncofair-sp-mr-element-gonogo-status.md) | Search for the element goNogo status |
| [oncofair-sp-mr-element-quantity-posology](SearchParameter-oncofair-sp-mr-element-quantity-posology.md) | Search for quantity of the prescription element in the dosage |
| [oncofair-sp-mr-element-rate-posology](SearchParameter-oncofair-sp-mr-element-rate-posology.md) | Search for rate of administration in the case of injection |
| [oncofair-sp-mr-exempt-ltc](SearchParameter-oncofair-sp-mr-exempt-ltc.md) | Search for identifier of the ALD for which the component prescribed is prescribed for one of the reasons for which the patient benefits from an exemption under article L324-1 of the CSS. |
| [oncofair-sp-mr-is-dosage-referent](SearchParameter-oncofair-sp-mr-is-dosage-referent.md) | Search to find out if the component prescribed is the component that refers to the quantity or flow rate expressed in the dosage element when these are gravimetric (for example, mg or mg/h). |
| [oncofair-sp-mr-prescribed-component-quantity](SearchParameter-oncofair-sp-mr-prescribed-component-quantity.md) | Search for the prescribed component quantity |
| [oncofair-sp-mr-prescription-validation-date](SearchParameter-oncofair-sp-mr-prescription-validation-date.md) | Search for the prescription validation date of the prescription |
| [oncofair-sp-mr-type-elementprescrption](SearchParameter-oncofair-sp-mr-type-elementprescrption.md) | Search for the type of element prescription |
| [oncofair-sp-wording](SearchParameter-oncofair-sp-wording.md) | Search for wording on the administration/prescribed element |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [OncoFAIR CarePlan](StructureDefinition-oncofair-careplan.md) | This object describes the chaining of prescription elements attached to the prescribed protocol. Its structure enables the chaining of nested sub-protocols.Cet objet décrit le chaînage des éléments de prescription rattachés au protocole prescrit. Sa structure permet le chaînage de sous-protocoles imbriqués. |
| [OncoFAIR Encounter](StructureDefinition-oncofair-encounter.md) | Must be taken in the generic sense, i.e. it goes beyond hospital admissions, outpatient consultations, dialysis sessions, day hospitals, etc.Doit être pris au sens générique, c’est-à-dire que cela dépasse les hospitalisations, consultations externes, séances de dialyse, hôpitaux de jour, etc … |
| [OncoFAIR Medication](StructureDefinition-oncofair-medication.md) | This object describes the medication.Cet objet décrit le médicament |
| [OncoFAIR MedicationAdministration Component](StructureDefinition-oncofair-medicationadministration-component.md) | This object corresponds to a product that belongs to the nomenclature of medicines used in the hospital.Cet objet correspond à un produit qui appartient à la nomenclature de médicaments utilisée dans l’hôpital. |
| [OncoFAIR MedicationAdministration Element](StructureDefinition-oncofair-medicationadministration-element.md) | Corresponds to the activity induced by a prescription item and its dosage (structured or unstructured), and carried out at a given moment.Correspond à l’activité induite par un élément de prescription et sa posologie (structurée ou non), et réalisée à un instant donné. |
| [OncoFAIR MedicationAdministration Report](StructureDefinition-oncofair-medicationadministration-report.md) | Regroups all the prescription elements received on which the pharmacist expresses his validation. It also includes items suggested or resulting from a replacement proposed by the pharmacist.Regroupe l’ensemble des éléments de prescription reçus sur lesquels le pharmacien exprime sa validation. S’y ajoutent les éléments suggérés ou issus d’un remplacement proposé par le pharmacien. |
| [OncoFAIR MedicationRequest Component](StructureDefinition-oncofair-medicationrequest-component.md) | Is a product that belongs to the nomenclature of medicines used. It may, for example, be a speciality, a product defined by its common name or a pharmacopoeial product.Est un produit qui appartient à la nomenclature de médicaments utilisée. Il peut s’agir par exemple d’une spécialité, d’un produit défini par sa DC ou d’un produit de la pharmacopée. |
| [OncoFAIR MedicationRequest Element](StructureDefinition-oncofair-medicationrequest-element.md) | Corresponds to a prescription line on a prescription. Each item contains one or more components (in the case of a magistral preparation or an infusion).Correspond à une ligne de prescription d’une ordonnance. Chacune comporte un ou plusieurs composants (lorsqu’il s’agit d’une préparation magistrale ou d’une perfusion). |
| [OncoFAIR MedicationRequest Prescription](StructureDefinition-oncofair-medicationrequest-prescription.md) | Groups together all the prescription elements validated simultaneously by the same prescriber.Regroupe l’ensemble des éléments de prescription validés simultanément par un même prescripteur. |
| [OncoFAIR Observation](StructureDefinition-oncofair-observation.md) | Allows you to enter information about the patient in addition to that described in the prescription elements.Permet d’indiquer les informations relatives au patient qui complètent celles décrites par les éléments de prescription |
| [OncoFAIR Patient](StructureDefinition-oncofair-patient.md) | Contains the patient's identity details needed to ensure that the prescription is properly taken into account.Contient les informations d’identité du patient nécessaires à la bonne prise en compte de la prescription médicamenteuse. |
| [Oncology Clinical Trial](StructureDefinition-clinical-trial.md) | Oncology clinical trial used to associate a Onco Patient to a Clinical Trial |
| [OncologyHealthcareService](StructureDefinition-oncology-healthcare-service.md) | Healthcare service(s). |
| [Tumor Pathology Event](StructureDefinition-tumor-pathology-event.md) | Tumor Pathology Event (TPE) Condition describing a tumoral event: reference to the parent TPE, laterality, morphology. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Administered quantity of medication](StructureDefinition-medication-administered-quantity.md) | The administered quantity of medication. |
| [Date and time](StructureDefinition-date-time.md) | Date and time. |
| [End date and time](StructureDefinition-date-time-end.md) | End date and time. |
| [Event Time Max](StructureDefinition-eventTimeMax.md) | Represents the maximum time for the event. |
| [Event Time Min](StructureDefinition-eventTimeMin.md) | Represents the minimum time for the event. |
| [Event Type Data](StructureDefinition-eventTypeData.md) | Represents the type of logical data for an event. |
| [Histology](StructureDefinition-histologygrade.md) | Grade of Histology |
| [Laterality](StructureDefinition-laterality.md) | Laterality of location (if it exists) |
| [Medication Is Vehicle](StructureDefinition-medication-is-vehicle.md) | Indicates whether the medication is a vehicle. |
| [Medication LTI exemption](StructureDefinition-medication-lti-exemption.md) | Long-term illness (LTI) for which the patient can benefit from an exemption. |
| [Medication comment](StructureDefinition-medication-comment.md) | Adds a comment to a Medication resource. |
| [Medication item provenance](StructureDefinition-medication-item-provenance.md) | Adds a provenance to a MedicationItem resource |
| [Medication status](StructureDefinition-medication-status.md) | Adds a status to a Medication resource |
| [Medication type](StructureDefinition-medication-type.md) | Adds a type to a Medication resource |
| [OncoFAIRCPTreatment](StructureDefinition-oncofair-cp-treatment.md) | Extension created as part of OncoFAIR grouping together the treatment number, the day number and the reference date and time of the prescribed protocol.Extension créée dans le cadre d'OncoFAIR regroupant le numéro de cure, le numéro de jour ainsi que la date et heure de référence du protocole prescrit. |
| [OncoFAIRElementForm](StructureDefinition-oncofair-element-form.md) | Extension created as part of OncoFair containing the drug form.Extension créée dans le cadre d'OncoFair contenant la forme du médicament. |
| [OncoFAIRMAComponentAdministrationStatus](StructureDefinition-oncofair-ma-component-administration-status.md) | Extension created as part of OncoFAIR containing the administration status of the administered component.Extension créée dans le cadre d'OncoFAIR contenant le statut d'administration du composant administré. |
| [OncoFAIRMAComponentOrigin](StructureDefinition-oncofair-ma-component-origin.md) | Extension created as part of OncoFAIR containing the origin of the administered component.Extension créée dans le cadre d'OncoFAIR contenant la provenance du composant administré. |
| [OncoFAIRMAElementExpirationDate](StructureDefinition-oncofair-ma-element-expirationdate.md) | Extension created as part of OncoFAIR containing the expiry date of the component administered.Extension créée dans le cadre d'OncoFAIR contenant la date de péremption du composant administré. |
| [OncoFAIRMAElementPlannedPeriod](StructureDefinition-oncofair-ma-element-plannedperiod.md) | Extension created as part of OncoFAIR containing the planned start and end date of administration.Extension créée dans le cadre d'OncoFAIR contenant la date de début et de fin prévue de l'administration. |
| [OncoFAIRMAElementTraceability](StructureDefinition-oncofair-ma-element-traceability.md) | Extension created as part of OncoFAIR containing the batch and serial number of the administered component/administration element.Extension créée dans le cadre d'OncoFAIR contenant le numéro de lot et de série du composant administré/élément d'administration. |
| [OncoFAIRMAElementUrgent](StructureDefinition-oncofair-ma-element-urgent.md) | Extension created as part of OncoFAIR containing the notion of emergency.Extension créée dans le cadre d'OncoFAIR contenant la notion d'urgence. |
| [OncoFAIRMRComponentSolute](StructureDefinition-oncofair-mr-component-solute.md) | Extension created as part of OncoFAIR containing the notion of solute.Extension créée dans le cadre d'OncoFAIR contenant la notion de soluté. |
| [OncoFAIRMRElementGoNogo](StructureDefinition-oncofair-mr-element-go-nogo.md) | Extension created as part of OncoFAIR containing the concept of GoNogo.Extension créée dans le cadre d'OncoFAIR contenant la notion de GoNogo. |
| [OncoFAIRMRElementLinkType](StructureDefinition-oncofair-mr-element-link-type.md) | Extension created as part of OncoFAIR containing the element's type of link.Extension créée dans le cadre d'OncoFAIR contenant le type de liaison de l'élément. |
| [OncoFAIRMRElementRank](StructureDefinition-oncofair-mr-element-rank.md) | Extension created as part of OncoFAIR containing the prescription element rank.Extension créée dans le cadre d'OncoFAIR contenant le rangd d'élement de la prescription. |
| [OncoFAIRMRElementSupply](StructureDefinition-oncofair-mr-element-supply.md) | Extension created as part of OncoFAIR containing the concept of supply.Extension créée dans le cadre d'OncoFAIR contenant la notion de fourniture. |
| [OncoFAIRMRExemptLTC](StructureDefinition-oncofair-mr-exempt-ltc.md) | Extension created as part of OncoFAIR containing the notion of exemption.Extension créée dans le cadre d'OncoFAIR contenant la notion d'exonération. |
| [OncoFAIRMRIsDosageReferent](StructureDefinition-oncofair-mr-is-dosage-referent.md) | Extension created as part of OncoFAIR containing the notion of a posology reference.Extension créée dans le cadre d'OncoFAIR contenant la notion de référence posologie. |
| [OncoFAIRMRPrescriptionValidationDate](StructureDefinition-oncofair-mr-prescription-validation-date.md) | Extension créée dans le cadre d'OncoFAIR contenant la date et heure de la prescription |
| [OncoFAIRMedicationType](StructureDefinition-oncofair-medication-type.md) | Extension created as part of OncoFAIR containing the type of component.Extension créée dans le cadre d'OncoFAIR contenant le type de composant. |
| [OncoFAIRPharmacistAdvice](StructureDefinition-oncofair-pharmacist-advice.md) | Extension created as part of OncoFAIR containing the validation and pharmaceutical proposal.Extension créée dans le cadre d'OncoFAIR contenant la validation et proposition pharmaceutique. |
| [Planned quantity of medication](StructureDefinition-medication-administered-planned-quantity.md) | The planned quantity of medication administered. |
| [Start date and time](StructureDefinition-date-time-start.md) | Start date and time. |
| [Treatment Line Number](StructureDefinition-treatment-line.md) | The treatment line number |
| [Tumor Pathology Event Parent](StructureDefinition-dueTo-tumor-pathology-event.md) | Reference the Tumor Pathology Event from which the metastasis comes from. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Concepts Medication Value Set](ValueSet-concept-medication-oncofair-valueset.md) | Value Set pour différiencier les niveaux de MR/MA |
| [Event Types Data](ValueSet-VSEventTypeData.md) | ValueSet for various event types used in French healthcare systems. |
| [Liste Affectation Longue Durée Value Set](ValueSet-siph-listeald-oncofair-valueset.md) | Value Set pour ListeALD |
| [Medical units Value Set](ValueSet-medical-units-oncofair-valueset.md) | ValueSet for medical units (accommodation, medical liability unit). |
| [Medication LTI Exemption](ValueSet-vsMedicationLTIExemption.md) | ValueSet for medication LTI exemption. |
| [Medication item provenance](ValueSet-vsMedicationItemProvenance.md) | ValueSet for medication item provenance. |
| [Medication status](ValueSet-vsMedicationStatus.md) | ValueSet for medication status. |
| [Medication types](ValueSet-vsMedicationTypes.md) | ValueSet for medication types. |
| [Medications Value Set](ValueSet-medications-oncofair-valueset.md) | ValueSet for medications. |
| [Morphology Value Set](ValueSet-Morphology.md) | Cancer morphology |
| [Nature proposition pharmaceutique Value Set](ValueSet-siph-natureproppharm-oncofair-valueset.md) | Value Set pour NaturePropPharm |
| [Paramètres posologie conditionnelle](ValueSet-siph-paramposoconditionnelle-oncofair-valueset.md) | Value Set pour ParamPosoConditionnelle |
| [Renseignement complémentaire Value Set](ValueSet-siph-renscomplement-oncofair-valueset.md) | Value Set pour RensComplement |
| [Statut composant administré Value Set](ValueSet-siph-statutcomposantadm-oncofair-valueset.md) | Value Set pour StatutComposantAdm |
| [Statut validation pharmaceutique Value Set](ValueSet-siph-statutvalidpharm-oncofair-valueset.md) | Value Set pour StatutValidPharm |
| [Topography Value Set](ValueSet-Topography.md) | Cancer topography |
| [Treatment Type Value Set](ValueSet-TreatmentType.md) | Treatment type |
| [Tumor Laterality Value Set](ValueSet-Laterality.md) | Tumor laterality |
| [Tumor Pathology Event Type Value Set](ValueSet-TumorPathologyEventType.md) | Tumor pathology event type |
| [Type de composant Value Set](ValueSet-siph-typecomposant-oncofair-valueset.md) | Value Set pour TypeComposant |
| [Type de l'élément d'administration Value Set](ValueSet-siph-typeeltpla-oncofair-valueset.md) | Value Set pour TypeEltPLA |
| [Type de l'évènement Value Set](ValueSet-siph-typeevenement-oncofair-valueset.md) | Value Set pour TypeEvenement |
| [Type de liaison Value Set](ValueSet-siph-type-liasion-oncofair-valueset.md) | Value Set pour Type Liaison |
| [goNogo Value Set](ValueSet-siph-gonogo-oncofair-valueset.md) | Value Set pour goNogo |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Concepts Medication Code System](CodeSystem-concept-medication-oncofair-codesystem.md) | Code system pour différiencier les niveaux de MR/MA |
| [Event Types](CodeSystem-CSEventTypeData.md) | CodeSystem for various event types used in French healthcare systems, identified by number, abbreviation, and full name. |
| [LTI Detailed Descriptions](CodeSystem-medication-lti-exemption.md) | Detailed list of long-term illness (LTI). |
| [Liste ALD Code System](CodeSystem-siph-listeald-oncofair-codesystem.md) | Code system pour l'attribut ListeALD |
| [Medical units](CodeSystem-medical-units-oncofair-codesystem.md) | CodeSystem for french medical units (accommodation, medical liability unit). |
| [Medication item provenance](CodeSystem-CSMedicationItemProvenance.md) | CodeSystem for french medication item provenance. |
| [Medication status](CodeSystem-CSMedicationStatus.md) | CodeSystem for french medication status. |
| [Medication types](CodeSystem-CSMedicationTypes.md) | CodeSystem for french medication types. |
| [Medications](CodeSystem-medications-oncofair-codesystem.md) | CodeSystem for french medications. |
| [Nature proposition pharmaceutique Code System](CodeSystem-siph-natureproppharm-oncofair-codesystem.md) | Code system pour l'attribut NaturePropPharm |
| [Paremètres posologie conditionnelle Code System](CodeSystem-siph-paramposoconditionnelle-oncofair-codesystem.md) | Code system pour l'attribut ParamPosoConditionnelle |
| [Renseignement complémentaire Code System](CodeSystem-siph-renscomplement-oncofair-codesystem.md) | Code system pour l'attribut RensComplement |
| [Statut composant administré Code System](CodeSystem-siph-statutcomposantadm-oncofair-codesystem.md) | Code system pour l'attribut StatutComposantAdm |
| [Statut validation pharmaceutique Code System](CodeSystem-siph-statutvalidpharm-oncofair-codesystem.md) | Code system pour l'attribut StatutValidPharm |
| [Type de composant Code System](CodeSystem-siph-typecomposant-oncofair-codesystem.md) | Code system pour l'attribut TypeComposant |
| [Type de l'élément d'administration Code System](CodeSystem-siph-typeeltpla-oncofair-codesystem.md) | Code system pour l'attribut TypeEltPLA |
| [Type de liaison Code System](CodeSystem-siph-type-liaison-oncofair-codesystem.md) | Code system pour l'attribut TypeLiaison |
| [Type évènement Code System](CodeSystem-siph-typeevenement-oncofair-codesystem.md) | Code system pour l'attribut TypeEvenement |
| [goNogo Code System](CodeSystem-siph-gonogo-oncofair-codesystem.md) | Code system pour l'attribut goNogo |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example HealthcareServiceAccomodation](HealthcareService-ExampleHealthcareServiceAccomodation.md) | An example instance of an OncoFAIR HealthcareServiceAccomodation |
| [Example HealthcareServiceMedicalLiability](HealthcareService-ExampleHealthcareServiceMedicalLiability.md) | An example instance of an OncoFAIR HealthcareServiceMedicalLiability |
| [Example OncoFAIR CarePlan](CarePlan-ExampleOncoFAIRCarePlan.md) | An example instance of an OncoFAIR CarePlan with required fields populated. |
| [Example OncoFAIR Device](Device-ExampleOncoFAIRDevice.md) | An example instance of an OncoFAIR Device |
| [Example OncoFAIR Device Definiton](DeviceDefinition-ExampleOncoFAIRDeviceDefinition.md) | An example instance of an OncoFAIR Device Definition |
| [Example OncoFAIR Encounter](Encounter-ExampleOncoFAIREncounter.md) | An example instance of an OncoFAIR Encounter with required fields populated. |
| [Example OncoFAIR Medication](Medication-ExampleOncoFAIRMedication.md) | An example instance of an OncoFAIR Medication with required fields populated. |
| [Example OncoFAIR MedicationAdministration Component](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationComponent.md) | An example instance of an OncoFAIR MedicationAdministration Component with required fields populated. |
| [Example OncoFAIR MedicationAdministration Element](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationElement.md) | An example instance of an OncoFAIR MedicationAdministration Element with required fields populated. |
| [Example OncoFAIR MedicationAdministration Report](MedicationAdministration-ExampleOncoFAIRMedicationAdministrationReport.md) | An example instance of an OncoFAIR MedicationAdministration Report with required fields populated. |
| [Example OncoFAIR MedicationRequest Component](MedicationRequest-Component.md) | Example instance of OncoFAIRMedicationRequestComponent |
| [Example OncoFAIR MedicationRequest Element](MedicationRequest-Element.md) | Example instance of OncoFAIRMedicationRequestElement |
| [Example OncoFAIR MedicationRequest Prescription](MedicationRequest-Prescription.md) | Example instance of OncoFAIRMedicationRequestPrescription |
| [Example OncoFAIR Observation](Observation-ExampleOncoFAIRObservation.md) | An example instance of OncoFAIR Observation. |
| [Example OncoFAIR Patient](Patient-ExampleOncoFAIRPatient.md) | An example instance of an OncoFAIR patient with a permanent patient identifier. |
| [Example OncoFAIR Practitioner](Practitioner-ExampleOncoFAIRPractitioner.md) | An example instance of an OncoFAIR practitioner with an identifier. |
| [Folfox Difuser OncoFAIR Device](Device-ExampleOncoFAIRDevice-diffuseur.md) | An example instance of an OncoFAIR Device for folfox protocol |
| [Folfox Difuseur OncoFAIR Device Definition](DeviceDefinition-ExampleOncoFAIRDeviceDefinition-diffuseur.md) | An example instance of an OncoFAIR Device Definition for folfox protocol. |
| [Folfox Difuseur OncoFAIR MedicationRequest Element](MedicationRequest-Element-folfox-diffuseur.md) | Example instance of OncoFAIRMedicationRequestElement for folfox protocol |
| [Folfox Fluoro-uracile OncoFAIR Medication](Medication-OncoFAIRMedication-fluoro-uracile.md) | An example instance of an OncoFAIR Medication with required fields populated. |
| [Folfox Fluoro-uracile OncoFAIR MedicationRequest Component](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-uracile.md) | Example instance of OncoFAIRMedicationRequestComponent for folfox protocol |
| [Folfox Fluoro-uracile OncoFAIR MedicationRequest Component](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-uracile-diffuseur.md) | Example instance of OncoFAIRMedicationRequestComponent for folfox protocol |
| [Folfox OncoFAIR CarePlan](CarePlan-OncoFAIRCarePlan-folfox.md) | An example instance of an OncoFAIR CarePlan with required fields populated for folfox protocol. |
| [Folfox OncoFAIR MedicationRequest Element](MedicationRequest-Element-folfox.md) | Example instance of OncoFAIRMedicationRequestElement for folfox protocol |
| [Folfox Oxaliplatine OncoFAIR Medication](Medication-OncoFAIRMedication-oxaliplatine.md) | An example instance of an OncoFAIR Medication with required fields populated. |
| [Folfox Oxaliplatine OncoFAIR MedicationRequest Component](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-oxaliplatine.md) | Example instance of OncoFAIRMedicationRequestComponent for folfox protocol |
| [Folfox Perfusion OncoFAIR Device](Device-ExampleOncoFAIRDevice-perfusion.md) | An example instance of an OncoFAIR Device for folfox protocol |
| [Folfox Perfusion OncoFAIR Device Definition](DeviceDefinition-ExampleOncoFAIRDeviceDefinition-perfusion.md) | An example instance of an OncoFAIR Device Definition for folfox protocol. |
| [Folfox Vehicle OncoFAIR Medication](Medication-OncoFAIRMedication-vehicule.md) | An example instance of an OncoFAIR Medication with required fields populated. |
| [Folfox Vehicle OncoFAIR MedicationRequest Component](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-vehicule.md) | Example instance of OncoFAIRMedicationRequestComponent for folfox protocol |
| [Folfox Vehicle OncoFAIR MedicationRequest Component](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-vehicule-diffuseur.md) | Example instance of OncoFAIRMedicationRequestComponent for folfox protocol |
| [Folfox Vehicle OncoFAIR MedicationRequest Prescription](MedicationRequest-PrescriptionFolfox.md) | An example instance of OncoFAIR MedicationRequest Prescription for folfox protocol at hospitals. |
| [Folfox Vehicle OncoFAIR MedicationRequest Prescription](MedicationRequest-PrescriptionFolfox-difuseur.md) | An example instance of OncoFAIR MedicationRequest Prescription for folfox protocol at hospitals. |
| [Oxaliplatine with difuseur OncoFAIR MedicationRequest Component](MedicationRequest-OncoFAIRMedicationRequestComponent-Folfox-oxaliplatine-diffuseur.md) | Example instance of OncoFAIRMedicationRequestComponent for folfox protocol |
| [Unknown](ResearchStudy-fhir-osiris-example-researchstudy.md) | Example of ResearchStudy from OSIRIS_pivot_Treatment.csv |
| [fhir-osiris-example-TumorPathologyEvent-instance-1](Condition-fhir-osiris-example-TumorPathologyEvent-instance-1.md) | Example of TPE from OSIRIS_pivot_TumorPathologyEvent.csv |
| [fhir-osiris-example-TumorPathologyEvent-instance-2](Condition-fhir-osiris-example-TumorPathologyEvent-instance-2.md) | Example of TPE from OSIRIS_pivot_TumorPathologyEvent.csv |

