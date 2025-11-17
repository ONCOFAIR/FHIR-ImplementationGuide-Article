# Topography Value Set - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Topography Value Set**

## ValueSet: Topography Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://oncofair-ig.kereval.cloud/ValueSet/Topography | *Version*:0.1.0 |
| Active as of 2025-11-17 | *Computable Name*:Topography |

 
Cancer topography 

 **References** 

* [Tumor Pathology Event](StructureDefinition-tumor-pathology-event.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "Topography",
  "url" : "http://oncofair-ig.kereval.cloud/ValueSet/Topography",
  "version" : "0.1.0",
  "name" : "Topography",
  "title" : "Topography Value Set",
  "status" : "active",
  "date" : "2025-11-17T09:12:37+00:00",
  "publisher" : "KEREVAL and DOMASIA team of the Signal and Image Processing Laboratory (LTSI)",
  "contact" : [
    {
      "name" : "KEREVAL and DOMASIA team of the Signal and Image Processing Laboratory (LTSI)",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/ONCOFAIR"
        }
      ]
    }
  ],
  "description" : "Cancer topography",
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "concept" : [
          {
            "code" : "C00",
            "display" : "LIP"
          },
          {
            "code" : "C00.0",
            "display" : "External upper lip"
          },
          {
            "code" : "C00.1",
            "display" : "External lower lip"
          },
          {
            "code" : "C00.2",
            "display" : "External lip, NOS"
          },
          {
            "code" : "C00.3",
            "display" : "Mucosa of upper lip"
          },
          {
            "code" : "C00.4",
            "display" : "Mucosa of lower lip"
          },
          {
            "code" : "C00.5",
            "display" : "Mucosa of lip, NOS"
          },
          {
            "code" : "C00.6",
            "display" : "Commissure of lip"
          },
          {
            "code" : "C00.8",
            "display" : "Overlapping lesion of lip"
          },
          {
            "code" : "C00.9",
            "display" : "Lip, NOS"
          },
          {
            "code" : "C01",
            "display" : "BASE OF TONGUE"
          },
          {
            "code" : "C01.9",
            "display" : "Base of tongue, NOS"
          },
          {
            "code" : "C02",
            "display" : "OTHER AND UNSPECIFIED PARTS OF TONGUE"
          },
          {
            "code" : "C02.0",
            "display" : "Dorsal surface of tongue, NOS"
          },
          {
            "code" : "C02.1",
            "display" : "Border of tongue"
          },
          {
            "code" : "C02.2",
            "display" : "Ventral surface of tongue, NOS"
          },
          {
            "code" : "C02.3",
            "display" : "Anterior 2/3 of tongue, NOS"
          },
          {
            "code" : "C02.4",
            "display" : "Lingual tonsil"
          },
          {
            "code" : "C02.8",
            "display" : "Overlapping lesion of tongue"
          },
          {
            "code" : "C02.9",
            "display" : "Tongue, NOS"
          },
          {
            "code" : "C03",
            "display" : "GUM"
          },
          {
            "code" : "C03.0",
            "display" : "Upper gum"
          },
          {
            "code" : "C03.1",
            "display" : "Lower gum"
          },
          {
            "code" : "C03.9",
            "display" : "Gum, NOS"
          },
          {
            "code" : "C04",
            "display" : "FLOOR OF MOUTH"
          },
          {
            "code" : "C04.0",
            "display" : "Anterior floor of mouth"
          },
          {
            "code" : "C04.1",
            "display" : "Lateral floor of mouth"
          },
          {
            "code" : "C04.8",
            "display" : "Overlapping lesion of floor of mouth"
          },
          {
            "code" : "C04.9",
            "display" : "Floor of mouth, NOS"
          },
          {
            "code" : "C05",
            "display" : "PALATE"
          },
          {
            "code" : "C05.0",
            "display" : "Hard palate"
          },
          {
            "code" : "C05.1",
            "display" : "Soft palate, NOS"
          },
          {
            "code" : "C05.2",
            "display" : "Uvula"
          },
          {
            "code" : "C05.8",
            "display" : "Overlapping lesion of palate"
          },
          {
            "code" : "C05.9",
            "display" : "Palate, NOS"
          },
          {
            "code" : "C06",
            "display" : "OTHER AND UNSPECIFIED PARTS OF MOUTH"
          },
          {
            "code" : "C06.0",
            "display" : "Cheek mucosa"
          },
          {
            "code" : "C06.1",
            "display" : "Vestibule of mouth"
          },
          {
            "code" : "C06.2",
            "display" : "Retromolar area"
          },
          {
            "code" : "C06.8",
            "display" : "Overlapping lesion of other and unspecified parts of mouth"
          },
          {
            "code" : "C06.9",
            "display" : "Mouth, NOS"
          },
          {
            "code" : "C07",
            "display" : "PAROTID GLAND"
          },
          {
            "code" : "C07.9",
            "display" : "Parotid gland"
          },
          {
            "code" : "C08",
            "display" : "OTHER AND UNSPECIFIED MAJOR SALIVARY GLANDS"
          },
          {
            "code" : "C08.0",
            "display" : "Submandibular gland"
          },
          {
            "code" : "C08.1",
            "display" : "Sublingual gland"
          },
          {
            "code" : "C08.8",
            "display" : "Overlapping lesion of major salivary glands"
          },
          {
            "code" : "C08.9",
            "display" : "Major salivary gland, NOS"
          },
          {
            "code" : "C09",
            "display" : "TONSIL"
          },
          {
            "code" : "C09.0",
            "display" : "Tonsillar fossa"
          },
          {
            "code" : "C09.1",
            "display" : "Tonsillar pillar"
          },
          {
            "code" : "C09.8",
            "display" : "Overlapping lesion of tonsil"
          },
          {
            "code" : "C09.9",
            "display" : "Tonsil, NOS"
          },
          {
            "code" : "C10",
            "display" : "OROPHARYNX"
          },
          {
            "code" : "C10.0",
            "display" : "Vallecula"
          },
          {
            "code" : "C10.1",
            "display" : "Anterior surface of epiglottis"
          },
          {
            "code" : "C10.2",
            "display" : "Lateral wall of oropharynx"
          },
          {
            "code" : "C10.3",
            "display" : "Posterior wall of oropharynx"
          },
          {
            "code" : "C10.4",
            "display" : "Branchial cleft"
          },
          {
            "code" : "C10.8",
            "display" : "Overlapping lesion of oropharynx"
          },
          {
            "code" : "C10.9",
            "display" : "Oropharynx, NOS"
          },
          {
            "code" : "C11",
            "display" : "NASOPHARYNX"
          },
          {
            "code" : "C11.0",
            "display" : "Superior wall of nasopharynx"
          },
          {
            "code" : "C11.1",
            "display" : "Posterior wall of nasopharynx"
          },
          {
            "code" : "C11.2",
            "display" : "Lateral wall of nasopharynx"
          },
          {
            "code" : "C11.3",
            "display" : "Anterior wall of nasopharynx"
          },
          {
            "code" : "C11.8",
            "display" : "Overlapping lesion of nasopharynx"
          },
          {
            "code" : "C11.9",
            "display" : "Nasopharynx, NOS"
          },
          {
            "code" : "C12",
            "display" : "PYRIFORM SINUS"
          },
          {
            "code" : "C12.9",
            "display" : "Pyriform sinus"
          },
          {
            "code" : "C13",
            "display" : "HYPOPHARYNX"
          },
          {
            "code" : "C13.0",
            "display" : "Postcricoid region"
          },
          {
            "code" : "C13.1",
            "display" : "Hypopharyngeal aspect of aryepiglottic fold"
          },
          {
            "code" : "C13.2",
            "display" : "Posterior wall of hypopharynx"
          },
          {
            "code" : "C13.8",
            "display" : "Overlapping lesion of hypopharynx"
          },
          {
            "code" : "C13.9",
            "display" : "Hypopharynx, NOS"
          },
          {
            "code" : "C14",
            "display" : "OTHER AND ILL-DEFINED SITES IN LIP, ORAL CAVITY AND PHARYNX"
          },
          {
            "code" : "C14.0",
            "display" : "Pharynx, NOS"
          },
          {
            "code" : "C14.2",
            "display" : "Waldeyer ring"
          },
          {
            "code" : "C14.8",
            "display" : "Overlapping lesion of lip, oral cavity and pharynx"
          },
          {
            "code" : "C15",
            "display" : "ESOPHAGUS"
          },
          {
            "code" : "C15.0",
            "display" : "Cervical esophagus"
          },
          {
            "code" : "C15.1",
            "display" : "Thoracic esophagus"
          },
          {
            "code" : "C15.2",
            "display" : "Abdominal esophagus"
          },
          {
            "code" : "C15.3",
            "display" : "Upper third of esophagus"
          },
          {
            "code" : "C15.4",
            "display" : "Middle third of esophagus"
          },
          {
            "code" : "C15.5",
            "display" : "Lower third of esophagus"
          },
          {
            "code" : "C15.8",
            "display" : "Overlapping lesion of esophagus"
          },
          {
            "code" : "C15.9",
            "display" : "Esophagus, NOS"
          },
          {
            "code" : "C16",
            "display" : "STOMACH"
          },
          {
            "code" : "C16.0",
            "display" : "Cardia, NOS"
          },
          {
            "code" : "C16.1",
            "display" : "Fundus of stomach"
          },
          {
            "code" : "C16.2",
            "display" : "Body of stomach"
          },
          {
            "code" : "C16.3",
            "display" : "Gastric antrum"
          },
          {
            "code" : "C16.4",
            "display" : "Pylorus"
          },
          {
            "code" : "C16.5",
            "display" : "Lesser curvature of stomach, NOS"
          },
          {
            "code" : "C16.6",
            "display" : "Greater curvature of stomach, NOS"
          },
          {
            "code" : "C16.8",
            "display" : "Overlapping lesion of stomach"
          },
          {
            "code" : "C16.9",
            "display" : "Stomach, NOS"
          },
          {
            "code" : "C17",
            "display" : "SMALL INTESTINE"
          },
          {
            "code" : "C17.0",
            "display" : "Duodenum"
          },
          {
            "code" : "C17.1",
            "display" : "Jejunum"
          },
          {
            "code" : "C17.2",
            "display" : "Ileum"
          },
          {
            "code" : "C17.3",
            "display" : "Meckel diverticulum"
          },
          {
            "code" : "C17.8",
            "display" : "Overlapping lesion of smallintestine"
          },
          {
            "code" : "C17.9",
            "display" : "Small intestine, NOS"
          },
          {
            "code" : "C18",
            "display" : "COLON"
          },
          {
            "code" : "C18.0",
            "display" : "Cecum"
          },
          {
            "code" : "C18.1",
            "display" : "Appendix"
          },
          {
            "code" : "C18.2",
            "display" : "Ascending colon"
          },
          {
            "code" : "C18.3",
            "display" : "Hepatic flexure of colon"
          },
          {
            "code" : "C18.4",
            "display" : "Transverse colon"
          },
          {
            "code" : "C18.5",
            "display" : "Splenic flexure of colon"
          },
          {
            "code" : "C18.6",
            "display" : "Descending colon"
          },
          {
            "code" : "C18.7",
            "display" : "Sigmoid colon"
          },
          {
            "code" : "C18.8",
            "display" : "Overlapping lesion of colon"
          },
          {
            "code" : "C18.9",
            "display" : "Colon, NOS"
          },
          {
            "code" : "C19",
            "display" : "RECTOSIGMOID JUNCTION"
          },
          {
            "code" : "C19.9",
            "display" : "Rectosigmoid junction"
          },
          {
            "code" : "C20",
            "display" : "RECTUM"
          },
          {
            "code" : "C20.9",
            "display" : "Rectum, NOS"
          },
          {
            "code" : "C21",
            "display" : "ANUS AND ANAL CANAL"
          },
          {
            "code" : "C21.0",
            "display" : "Anus, NOS"
          },
          {
            "code" : "C21.1",
            "display" : "Anal canal"
          },
          {
            "code" : "C21.2",
            "display" : "Cloacogenic zone"
          },
          {
            "code" : "C21.8",
            "display" : "Overlapping lesion of rectum, anus and anal canal"
          },
          {
            "code" : "C22",
            "display" : "LIVER AND INTRAHEPATIC BILE DUCTS"
          },
          {
            "code" : "C22.0",
            "display" : "Liver"
          },
          {
            "code" : "C22.1",
            "display" : "Intrahepatic bile duct"
          },
          {
            "code" : "C23",
            "display" : "   GALLBLADDER"
          },
          {
            "code" : "C23.9",
            "display" : "Gallbladder"
          },
          {
            "code" : "C24",
            "display" : "OTHER AND UNSPECIFIED PARTS OF BILIARY TRACT"
          },
          {
            "code" : "C24.0",
            "display" : "Extrahepatic bile duct"
          },
          {
            "code" : "C24.1",
            "display" : "Ampulla of Vater"
          },
          {
            "code" : "C24.8",
            "display" : "Overlapping lesion of biliary tract Note:"
          },
          {
            "code" : "C24.9",
            "display" : "Biliary tract, NOS"
          },
          {
            "code" : "C25",
            "display" : "PANCREAS"
          },
          {
            "code" : "C25.0",
            "display" : "Head of pancreas"
          },
          {
            "code" : "C25.1",
            "display" : "Body of pancreas"
          },
          {
            "code" : "C25.2",
            "display" : "Tail of pancreas"
          },
          {
            "code" : "C25.3",
            "display" : "Pancreatic duct"
          },
          {
            "code" : "C25.4",
            "display" : "Islets of Langerhans"
          },
          {
            "code" : "C25.7",
            "display" : "Other specified parts of pancreas"
          },
          {
            "code" : "C25.8",
            "display" : "Overlapping lesion of pancreas"
          },
          {
            "code" : "C25.9",
            "display" : "Pancreas, NOS"
          },
          {
            "code" : "C26",
            "display" : "OTHER AND ILL-DEFINED DIGESTIVE ORGANS"
          },
          {
            "code" : "C26.0",
            "display" : "Intestinal tract, NOS"
          },
          {
            "code" : "C26.8",
            "display" : "Overlapping lesion of digestive system"
          },
          {
            "code" : "C26.9",
            "display" : "Gastrointestinal tract, NOS"
          },
          {
            "code" : "C30",
            "display" : "NASAL CAVITY AND MIDDLE EAR"
          },
          {
            "code" : "C30.0",
            "display" : "Nasal cavity"
          },
          {
            "code" : "C30.1",
            "display" : "Middle ear"
          },
          {
            "code" : "C31",
            "display" : "ACCESSORY SINUSES"
          },
          {
            "code" : "C31.0",
            "display" : "Maxillary sinus"
          },
          {
            "code" : "C31.1",
            "display" : "Ethmoid sinus"
          },
          {
            "code" : "C31.2",
            "display" : "Frontal sinus"
          },
          {
            "code" : "C31.3",
            "display" : "Sphenoid sinus"
          },
          {
            "code" : "C31.8",
            "display" : "Overlapping lesion of accessory sinuses"
          },
          {
            "code" : "C31.9",
            "display" : "Accessory sinus, NOS"
          },
          {
            "code" : "C32",
            "display" : "LARYNX"
          },
          {
            "code" : "C32.0",
            "display" : "Glottis"
          },
          {
            "code" : "C32.1",
            "display" : "Supraglottis"
          },
          {
            "code" : "C32.2",
            "display" : "Subglottis"
          },
          {
            "code" : "C32.3",
            "display" : "Laryngeal cartilage"
          },
          {
            "code" : "C32.8",
            "display" : "Overlapping lesion of larynx"
          },
          {
            "code" : "C32.9",
            "display" : "Larynx, NOS"
          },
          {
            "code" : "C33",
            "display" : "TRACHEA"
          },
          {
            "code" : "C33.9",
            "display" : "Trachea"
          },
          {
            "code" : "C34",
            "display" : "BRONCHUS AND LUNG"
          },
          {
            "code" : "C34.0",
            "display" : "Main bronchus"
          },
          {
            "code" : "C34.1",
            "display" : "Upper lobe, lung"
          },
          {
            "code" : "C34.2",
            "display" : "Middle lobe, lung"
          },
          {
            "code" : "C34.3",
            "display" : "Lower lobe, lung"
          },
          {
            "code" : "C34.8",
            "display" : "Overlapping lesion of lung"
          },
          {
            "code" : "C34.9",
            "display" : "Lung, NOS"
          },
          {
            "code" : "C37",
            "display" : "THYMUS"
          },
          {
            "code" : "C37.9",
            "display" : "Thymus"
          },
          {
            "code" : "C38",
            "display" : "HEART, MEDIASTINUM, AND PLEURA"
          },
          {
            "code" : "C38.0",
            "display" : "Heart"
          },
          {
            "code" : "C38.1",
            "display" : "Anterior mediastinum"
          },
          {
            "code" : "C38.2",
            "display" : "Posterior mediastinum"
          },
          {
            "code" : "C38.3",
            "display" : "Mediastinum, NOS"
          },
          {
            "code" : "C38.4",
            "display" : "Pleura, NOS"
          },
          {
            "code" : "C38.8",
            "display" : "Overlapping lesion of heart, mediastinum and pleura"
          },
          {
            "code" : "C39",
            "display" : "OTHER AND ILL-DEFINED SITES WITHIN RESPIRATORY SYSTEM AND INTRATHORACIC ORGANS"
          },
          {
            "code" : "C39.0",
            "display" : "Upper respiratory tract, NOS"
          },
          {
            "code" : "C39.8",
            "display" : "Overlapping lesion of respiratory system and intrathoracic organs"
          },
          {
            "code" : "C39.9",
            "display" : "Ill-defined sites within respiratory system"
          },
          {
            "code" : "C40",
            "display" : "BONES, JOINTS AND ARTICULAR CARTILAGE OF LIMBS"
          },
          {
            "code" : "C40.0",
            "display" : "Long bones of upper limb, scapula and associated joints"
          },
          {
            "code" : "C40.1",
            "display" : "Short bones of upper limb and associated joints"
          },
          {
            "code" : "C40.2",
            "display" : "Long bones of lower limb and associated joints"
          },
          {
            "code" : "C40.3",
            "display" : "Short bones of lower limb and associated joints"
          },
          {
            "code" : "C40.8",
            "display" : "Overlapping lesion of bones, joints and articular cartilage of limbs"
          },
          {
            "code" : "C40.9",
            "display" : "Bone of limb, NOS"
          },
          {
            "code" : "C41",
            "display" : "BONES, JOINTS AND ARTICULAR CARTILAGE OF OTHER AND UNSPECIFIED SITES"
          },
          {
            "code" : "C41.0",
            "display" : "Bones of skull and face and associated joints"
          },
          {
            "code" : "C41.1",
            "display" : "Mandible"
          },
          {
            "code" : "C41.2",
            "display" : "Vertebral column"
          },
          {
            "code" : "C41.3",
            "display" : "Rib, sternum, clavicle and associated joints"
          },
          {
            "code" : "C41.4",
            "display" : "Pelvic bones, sacrum, coccyx and associated joints"
          },
          {
            "code" : "C41.8",
            "display" : "Overlapping lesion of bones, joints and articular cartilage"
          },
          {
            "code" : "C41.9",
            "display" : "Bone, NOS"
          },
          {
            "code" : "C42",
            "display" : "HEMATOPOIETIC AND RETICULOENDOTHELIAL SYSTEMS"
          },
          {
            "code" : "C42.0",
            "display" : "Blood"
          },
          {
            "code" : "C42.1",
            "display" : "Bone marrow"
          },
          {
            "code" : "C42.2",
            "display" : "Spleen"
          },
          {
            "code" : "C42.3",
            "display" : "Reticuloendothelial system,NOS"
          },
          {
            "code" : "C42.4",
            "display" : "Hematopoietic system, NOS"
          },
          {
            "code" : "C44",
            "display" : "SKIN"
          },
          {
            "code" : "C44.0",
            "display" : "Skin of lip, NOS"
          },
          {
            "code" : "C44.1",
            "display" : "Eyelid"
          },
          {
            "code" : "C44.2",
            "display" : "External ear"
          },
          {
            "code" : "C44.3",
            "display" : "Skin of other and unspecified parts of face"
          },
          {
            "code" : "C44.4",
            "display" : "Skin of scalp and neck"
          },
          {
            "code" : "C44.5",
            "display" : "Skin of trunk"
          },
          {
            "code" : "C44.6",
            "display" : "Skin of upper limb and shoulder"
          },
          {
            "code" : "C44.7",
            "display" : "Skin of lower limb and hip"
          },
          {
            "code" : "C44.8",
            "display" : "Overlapping lesion of skin"
          },
          {
            "code" : "C44.9",
            "display" : "Skin, NOS"
          },
          {
            "code" : "C47",
            "display" : "PERIPHERAL NERVES AND AUTONOMIC NERVOUS SYSTEM"
          },
          {
            "code" : "C47.0",
            "display" : "Peripheral nerves and autonomic nervous system of head, face, and neck"
          },
          {
            "code" : "C47.1",
            "display" : "Peripheral nerves and autonomic nervous system of upper limb and shoulder"
          },
          {
            "code" : "C47.2",
            "display" : "Peripheral nerves and autonomic nervous system of lower limband hip"
          },
          {
            "code" : "C47.3",
            "display" : "Peripheral nerves and autonomic nervous system of thorax"
          },
          {
            "code" : "C47.4",
            "display" : "Peripheral nerves and autonomic nervous system of abdomen"
          },
          {
            "code" : "C47.5",
            "display" : "Peripheral nerves and autonomic nervous system of pelvis"
          },
          {
            "code" : "C47.6",
            "display" : "Peripheral nerves and autonomic nervous system of trunk, NOS"
          },
          {
            "code" : "C47.8",
            "display" : "Overlapping lesion of peripheral nerves and autonomic nervous system"
          },
          {
            "code" : "C47.9",
            "display" : "Autonomic nervous system, NOS"
          },
          {
            "code" : "C48",
            "display" : "RETROPERITONEUM AND PERITONEUM"
          },
          {
            "code" : "C48.0",
            "display" : "Retroperitoneum"
          },
          {
            "code" : "C48.1",
            "display" : "Specified parts of peritoneum"
          },
          {
            "code" : "C48.2",
            "display" : "Peritoneum, NOS"
          },
          {
            "code" : "C48.8",
            "display" : "Overlapping lesion of retroperitoneum and peritoneum"
          },
          {
            "code" : "C49",
            "display" : "CONNECTIVE, SUBCUTANEOUS AND OTHER SOFT TISSUES"
          },
          {
            "code" : "C49.0",
            "display" : "Connective, subcutaneous and other soft tissues of head, face, and neck"
          },
          {
            "code" : "C49.1",
            "display" : "Connective, subcutaneous and other soft tissues of upper limb and shoulder"
          },
          {
            "code" : "C49.2",
            "display" : "Connective, subcutaneous and other soft tissues of lower limb and hip"
          },
          {
            "code" : "C49.3",
            "display" : "Connective, subcutaneous and other soft tissues of thorax"
          },
          {
            "code" : "C49.4",
            "display" : "Connective, subcutaneous and other soft tissues of abdomen"
          },
          {
            "code" : "C49.5",
            "display" : "Connective, subcutaneous and other soft tissues of pelvis"
          },
          {
            "code" : "C49.6",
            "display" : "Connective, subcutaneous and other soft tissues of trunk NOS"
          },
          {
            "code" : "C49.8",
            "display" : "Overlapping lesion of connective, subcutaneous and other soft tissues"
          },
          {
            "code" : "C49.9",
            "display" : "Connective, subcutaneous and other soft tissues, NOS"
          },
          {
            "code" : "C50",
            "display" : "BREAST"
          },
          {
            "code" : "C50.0",
            "display" : "Nipple"
          },
          {
            "code" : "C50.1",
            "display" : "Central portion of breast"
          },
          {
            "code" : "C50.2",
            "display" : "Upper-inner quadrant of breast"
          },
          {
            "code" : "C50.3",
            "display" : "Lower-inner quadrant of breast"
          },
          {
            "code" : "C50.4",
            "display" : "Upper-outer quadrant of breast"
          },
          {
            "code" : "C50.5",
            "display" : "Lower-outer quadrant of breast"
          },
          {
            "code" : "C50.6",
            "display" : "Axillary tail of breast"
          },
          {
            "code" : "C50.8",
            "display" : "Overlapping lesion of breast"
          },
          {
            "code" : "C50.9",
            "display" : "Breast, NOS"
          },
          {
            "code" : "C51",
            "display" : "VULVA"
          },
          {
            "code" : "C51.0",
            "display" : "Labium majus"
          },
          {
            "code" : "C51.1",
            "display" : "Labium minus"
          },
          {
            "code" : "C51.2",
            "display" : "Clitoris"
          },
          {
            "code" : "C51.8",
            "display" : "Overlapping lesion of vulva"
          },
          {
            "code" : "C51.9",
            "display" : "Vulva, NOS"
          },
          {
            "code" : "C52",
            "display" : "VAGINA"
          },
          {
            "code" : "C52.9",
            "display" : "Vagina, NOS"
          },
          {
            "code" : "C53",
            "display" : "CERVIX UTERI"
          },
          {
            "code" : "C53.0",
            "display" : "Endocervix"
          },
          {
            "code" : "C53.1",
            "display" : "Exocervix"
          },
          {
            "code" : "C53.8",
            "display" : "Overlapping lesion of cervix uteri"
          },
          {
            "code" : "C53.9",
            "display" : "Cervix uteri"
          },
          {
            "code" : "C54",
            "display" : "CORPUS UTERI"
          },
          {
            "code" : "C54.0",
            "display" : "Isthmus uteri"
          },
          {
            "code" : "C54.1",
            "display" : "Endometrium"
          },
          {
            "code" : "C54.2",
            "display" : "Myometrium"
          },
          {
            "code" : "C54.3",
            "display" : "Fundus uteri"
          },
          {
            "code" : "C54.8",
            "display" : "Overlapping lesion of corpus uteri"
          },
          {
            "code" : "C54.9",
            "display" : "Corpus uteri"
          },
          {
            "code" : "C55",
            "display" : "UTERUS, NOS"
          },
          {
            "code" : "C55.9",
            "display" : "Uterus, NOS"
          },
          {
            "code" : "C56",
            "display" : "OVARY"
          },
          {
            "code" : "C56.9",
            "display" : "Ovary"
          },
          {
            "code" : "C57",
            "display" : "OTHER AND UNSPECIFIED FEMALE GENITAL ORGANS"
          },
          {
            "code" : "C57.0",
            "display" : "Fallopian tube"
          },
          {
            "code" : "C57.1",
            "display" : "Broad ligament"
          },
          {
            "code" : "C57.2",
            "display" : "Round ligament"
          },
          {
            "code" : "C57.3",
            "display" : "Parametrium"
          },
          {
            "code" : "C57.4",
            "display" : "Uterine adnexa"
          },
          {
            "code" : "C57.7",
            "display" : "Other specified parts of female genital organs"
          },
          {
            "code" : "C57.8",
            "display" : "Overlapping lesion of female genital organs"
          },
          {
            "code" : "C57.9",
            "display" : "Female genital tract, NOS"
          },
          {
            "code" : "C58",
            "display" : "PLACENTA"
          },
          {
            "code" : "C58.9",
            "display" : "Placenta"
          },
          {
            "code" : "C60",
            "display" : "PENIS"
          },
          {
            "code" : "C60.0",
            "display" : "Prepuce"
          },
          {
            "code" : "C60.1",
            "display" : "Glans penis"
          },
          {
            "code" : "C60.2",
            "display" : "Body of penis"
          },
          {
            "code" : "C60.8",
            "display" : "Overlapping lesion of penis"
          },
          {
            "code" : "C60.9",
            "display" : "Penis, NOS"
          },
          {
            "code" : "C61",
            "display" : "PROSTATE GLAND"
          },
          {
            "code" : "C61.9",
            "display" : "Prostate gland"
          },
          {
            "code" : "C62",
            "display" : "TESTIS"
          },
          {
            "code" : "C62.0",
            "display" : "Undescended testis"
          },
          {
            "code" : "C62.1",
            "display" : "Descended testis"
          },
          {
            "code" : "C62.9",
            "display" : "Testis, NOS"
          },
          {
            "code" : "C63",
            "display" : "OTHER AND UNSPECIFIED MALE GENITAL ORGANS"
          },
          {
            "code" : "C63.0",
            "display" : "Epididymis"
          },
          {
            "code" : "C63.1",
            "display" : "Spermatic cord"
          },
          {
            "code" : "C63.2",
            "display" : "Scrotum, NOS"
          },
          {
            "code" : "C63.7",
            "display" : "Other specified parts of male genital organs"
          },
          {
            "code" : "C63.8",
            "display" : "Overlapping lesion of male genital organs Note:"
          },
          {
            "code" : "C63.9",
            "display" : "Male genital organs, NOS"
          },
          {
            "code" : "C64",
            "display" : "KIDNEY"
          },
          {
            "code" : "C64.9",
            "display" : "Kidney, NOS"
          },
          {
            "code" : "C65",
            "display" : "RENAL PELVIS"
          },
          {
            "code" : "C65.9",
            "display" : "Renal pelvis"
          },
          {
            "code" : "C66",
            "display" : "URETER"
          },
          {
            "code" : "C66.9",
            "display" : "Ureter"
          },
          {
            "code" : "C67",
            "display" : "BLADDER"
          },
          {
            "code" : "C67.0",
            "display" : "Trigone of bladder"
          },
          {
            "code" : "C67.1",
            "display" : "Dome of bladder"
          },
          {
            "code" : "C67.2",
            "display" : "Lateral wall of bladder"
          },
          {
            "code" : "C67.3",
            "display" : "Anterior wall of bladder"
          },
          {
            "code" : "C67.4",
            "display" : "Posterior wall of bladder"
          },
          {
            "code" : "C67.5",
            "display" : "Bladder neck"
          },
          {
            "code" : "C67.6",
            "display" : "Ureteric orifice"
          },
          {
            "code" : "C67.7",
            "display" : "Urachus"
          },
          {
            "code" : "C67.8",
            "display" : "Overlapping lesion of bladder"
          },
          {
            "code" : "C67.9",
            "display" : "Bladder, NOS"
          },
          {
            "code" : "C68",
            "display" : "OTHER AND UNSPECIFIED URINARY ORGANS"
          },
          {
            "code" : "C68.0",
            "display" : "Urethra"
          },
          {
            "code" : "C68.1",
            "display" : "Paraurethral gland"
          },
          {
            "code" : "C68.8",
            "display" : "Overlapping lesion of urinary organs"
          },
          {
            "code" : "C68.9",
            "display" : "Urinary system, NOS"
          },
          {
            "code" : "C69",
            "display" : "EYE AND ADNEXA"
          },
          {
            "code" : "C69.0",
            "display" : "Conjunctiva"
          },
          {
            "code" : "C69.1",
            "display" : "Cornea, NOS"
          },
          {
            "code" : "C69.2",
            "display" : "Retina"
          },
          {
            "code" : "C69.3",
            "display" : "Choroid"
          },
          {
            "code" : "C69.4",
            "display" : "Ciliary body"
          },
          {
            "code" : "C69.5",
            "display" : "Lacrimal gland"
          },
          {
            "code" : "C69.6",
            "display" : "Orbit, NOS"
          },
          {
            "code" : "C69.8",
            "display" : "Overlapping lesion of eye and adnexa"
          },
          {
            "code" : "C69.9",
            "display" : "Eye, NOS"
          },
          {
            "code" : "C70",
            "display" : "MENINGES"
          },
          {
            "code" : "C70.0",
            "display" : "Cerebral meninges"
          },
          {
            "code" : "C70.1",
            "display" : "Spinal meninges"
          },
          {
            "code" : "C70.9",
            "display" : "Meninges, NOS"
          },
          {
            "code" : "C71",
            "display" : "BRAIN"
          },
          {
            "code" : "C71.0",
            "display" : "Cerebrum"
          },
          {
            "code" : "C71.1",
            "display" : "Frontal lobe"
          },
          {
            "code" : "C71.2",
            "display" : "Temporal lobe"
          },
          {
            "code" : "C71.3",
            "display" : "Parietal lobe"
          },
          {
            "code" : "C71.4",
            "display" : "Occipital lobe"
          },
          {
            "code" : "C71.5",
            "display" : "Ventricle, NOS"
          },
          {
            "code" : "C71.6",
            "display" : "Cerebellum, NOS"
          },
          {
            "code" : "C71.7",
            "display" : "Brain stem"
          },
          {
            "code" : "C71.8",
            "display" : "Overlapping lesion of brain"
          },
          {
            "code" : "C71.9",
            "display" : "Brain, NOS"
          },
          {
            "code" : "C72",
            "display" : "SPINAL CORD, CRANIAL NERVES, AND OTHER PARTS OF CENTRAL NERVOUS SYSTEM"
          },
          {
            "code" : "C72.0",
            "display" : "Spinal cord"
          },
          {
            "code" : "C72.1",
            "display" : "Cauda equina"
          },
          {
            "code" : "C72.2",
            "display" : "Olfactory nerve"
          },
          {
            "code" : "C72.3",
            "display" : "Optic nerve"
          },
          {
            "code" : "C72.4",
            "display" : "Acoustic nerve"
          },
          {
            "code" : "C72.5",
            "display" : "Cranial nerve, NOS"
          },
          {
            "code" : "C72.8",
            "display" : "Overlapping lesion of brain and central nervous system"
          },
          {
            "code" : "C72.9",
            "display" : "Nervous system, NOS"
          },
          {
            "code" : "C73",
            "display" : "THYROID GLAND"
          },
          {
            "code" : "C73.9",
            "display" : "Thyroid gland"
          },
          {
            "code" : "C74",
            "display" : "ADRENAL GLAND"
          },
          {
            "code" : "C74.0",
            "display" : "Cortex of adrenal gland"
          },
          {
            "code" : "C74.1",
            "display" : "Medulla of adrenal gland"
          },
          {
            "code" : "C74.9",
            "display" : "Adrenal gland, NOS"
          },
          {
            "code" : "C75",
            "display" : "OTHER ENDOCRINE GLANDS AND RELATED STRUCTURES"
          },
          {
            "code" : "C75.0",
            "display" : "Parathyroid gland"
          },
          {
            "code" : "C75.1",
            "display" : "Pituitary gland"
          },
          {
            "code" : "C75.2",
            "display" : "Craniopharyngeal duct"
          },
          {
            "code" : "C75.3",
            "display" : "Pineal gland"
          },
          {
            "code" : "C75.4",
            "display" : "Carotid body"
          },
          {
            "code" : "C75.5",
            "display" : "Aortic body and other paraganglia"
          },
          {
            "code" : "C75.8",
            "display" : "Overlapping lesion of endocrine glands and related structures"
          },
          {
            "code" : "C75.9",
            "display" : "Endocrine gland, NOS"
          },
          {
            "code" : "C76",
            "display" : "OTHER AND ILL-DEFINED SITES"
          },
          {
            "code" : "C76.0",
            "display" : "Head, face or neck, NOS"
          },
          {
            "code" : "C76.1",
            "display" : "Thorax, NOS"
          },
          {
            "code" : "C76.2",
            "display" : "Abdomen, NOS"
          },
          {
            "code" : "C76.3",
            "display" : "Pelvis, NOS"
          },
          {
            "code" : "C76.4",
            "display" : "Upper limb, NOS"
          },
          {
            "code" : "C76.5",
            "display" : "Lower limb, NOS"
          },
          {
            "code" : "C76.7",
            "display" : "Other ill-defined sites"
          },
          {
            "code" : "C76.8",
            "display" : "Overlapping lesion of ill-defined sites"
          },
          {
            "code" : "C77",
            "display" : "LYMPH NODES"
          },
          {
            "code" : "C77.0",
            "display" : "Lymph nodes of head, face and neck"
          },
          {
            "code" : "C77.1",
            "display" : "Intrathoracic lymph nodes"
          },
          {
            "code" : "C77.2",
            "display" : "Intra-abdominal lymph nodes"
          },
          {
            "code" : "C77.3",
            "display" : "Lymph nodes of axilla or arm"
          },
          {
            "code" : "C77.4",
            "display" : "Lymph nodes of inguinal region or leg"
          },
          {
            "code" : "C77.5",
            "display" : "Pelvic lymph nodes"
          },
          {
            "code" : "C77.8",
            "display" : "Lymph nodes of multiple regions"
          },
          {
            "code" : "C77.9",
            "display" : "Lymph node, NOS"
          },
          {
            "code" : "C80",
            "display" : "UNKNOWN PRIMARY SITE"
          },
          {
            "code" : "C80.9",
            "display" : "Unknown primary site"
          }
        ]
      }
    ]
  }
}

```
