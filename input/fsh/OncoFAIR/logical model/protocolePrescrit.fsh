Logical: ProtocolePrescritPN13				
Id: ProtocolePrescritPN13				
Title: "Protocole Prescrit PN13"				
Description:  "Protocole Prescrit provenant de la norme PN13, Prescribed component as defined in the PN13" 

* idProtocolePrescrit  1..1 string ""
* libelleProtocolePrescrit  1..1 string ""
* CreationArretModificationValidation  0..1 code ""
* validationPharmaceutique  0..1 code ""
* propostionPharmaceutique  0..1 code ""
* referenceProtocole  0..1 code ""
* numeroCure  0..1 integer ""
* numeroJour  0..1 integer ""
* dateHeureReference  1..1 instant ""
* Indication  0..1 string ""
* Commentaires  0..1 string ""
* idProtocolePère 0..1  Identifier ""
