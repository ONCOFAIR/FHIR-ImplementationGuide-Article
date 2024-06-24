Logical: ElementPrescriptionMedicalePharmacienLivrePN13				
Id: ElementPrescriptionMedicalePharmacienLivrePN13				
Title: "Element Prescription Medicale Pharmacien Livre PN13"				
Description:  "Element Prescription Medicale Pharmacien Livre provenant de la norme PN13, A TRADUIRE as defined in the PN13" 

* idPrescription 1..1 string ""
* typeElementPrescription 0..1 code ""
* forme 0..1 code ""
* libelleElementPrescription 0..1 string ""
* creationArretModificationValidation 0..1 code ""
* urgent 0..1 boolean ""
* validationPharmaceutique 0..1 code ""
* propositionPharmaceutique 0..1 code ""
* fourniture 0..1 boolean ""
* idpPrescripteur 0..1 Identifier ""
* voieAdministration 0..1 code ""
* lieuAdministration 0..1 CodeableConcept ""
* dispositifsAssocies 0..* CodeableConcept ""
* posologie 0..1 string ""
* dateHeureDebutPrescrite 0..1 instant ""
* dateHeureFinPrescrite 0..1 instant ""
* dateHeureDebutPrescription 0..1 instant ""
* dateHeureFinPrescription 0..1 instant ""
* indication 0..1 CodeableReference ""
* commentaire 0..1 string ""
* rangElementPrescription 0..1 integer ""
* goNogo 0..1 code ""
* motifAttente 0..1 code ""
* deltaDateHeureReference 0..1 CodeableConcept ""
* idGroupe 1..1 string ""



