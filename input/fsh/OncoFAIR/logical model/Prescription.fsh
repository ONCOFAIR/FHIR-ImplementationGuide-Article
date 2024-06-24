Logical: PrescriptionPN13				
Id: PrescriptionPN13				
Title: "Prescription PN13"				
Description:  "Prescription provenant de la norme PN13, Prescription as defined in the PN13" 

* modeCommunication 1..1 code "Indique si message reprend seulement les éléments de prescription ajoutés, modifiés ou arrêtés par rapport au dernier 
envoi (mode de fonctionnement incrémental) ou s’il récapitule l’ensemble des éléments de prescription pour le patient 
(mode récapitulatif) en incluant également les éléments inchangés/Indicates whether the message only includes prescription elements added, modified or stopped in relation to the last 
sent (incremental mode) or whether it summarizes all prescription elements for the patient 
(summary mode), including unchanged elements"
* dateHeurePrescription 1..1 instant "Date et heure à laquelle le prescripteur a considéré la prescription comme validée. Lorsque la validation s’effectue en plusieurs étapes avant toute transmission, c’est la dernière date et heure qui figure 
dans le message./Date and time at which the prescriber considered the prescription validated. When validation is carried out in several stages before transmission, the last date and time appears in the message. 
in the message. "
* uniteHebergement 0..1 code  "Il s’agit de l’unité qui héberge le patient/the unit that houses the patient"
* uniteResponsabiliteMedicale 0..1 code "l’unité qui assume la responsabilité médicale de prise en charge du patient./ Unit that assumes medical responsibility for the patient's care. "
* commentaire 0..1 string "Commentaire, par défaut, du médecin prescripteur sur la prescription./Prescribing physician's default comment on prescription."
* idPrescription 1..1 Identifier "DESCRIPTION A AJOUTER"
* lienSejour 0..1 Reference "DESCRIPTION A AJOUTER"
* lienRenseignementComplementaire 0..* CodeableReference "DESCRIPTION A AJOUTER"
* lienProtocolePrescrit 0..* Reference "DESCRIPTION A AJOUTER"