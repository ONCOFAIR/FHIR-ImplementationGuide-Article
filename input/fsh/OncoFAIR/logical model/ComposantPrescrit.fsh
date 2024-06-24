Logical: ComposantPrescriptPN13				
Id: ComposantPrescriptPN13				
Title: "Composant Prescript PN13"				
Description:  "Composant Prescript provenant de la norme PN13, Prescribed component as defined in the PN13" 

* typeComposant 1..1 code ""
* codeComposant 1..1 code ""
* libelleComposant 1..1 string ""
* quantiteComposantPrescrit 1..1 Quantity ""
* nonSubstituable 0..1 boolean ""
* estReferentPoso 0..1 boolean ""
* ALDExonerante 0..1 code ""
* Indication 0..1 code ""
* Commentaire 0..1 string ""
* estVehicule 0..1 boolean ""
* lienElementPrescription 1..1 Reference ""