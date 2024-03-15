### Introduction

The Onco-FAIR project is designed to improve the interoperability and reuse of healthcare data in oncology, focusing on chemotherapy. This guide details the use of FHIR standards to optimize prescribing and medication administration for oncology patients.

#### Objectives

* Facilitate access to and exchange of healthcare data in oncology.
* Improve the accuracy and efficiency of patient treatment.
* Contribute to the advancement of clinical research in oncology.

#### Background 

Supported by the Brittany Region and Biotech Santé Bretagne, this project benefits from the healthcare data interoperability expertise of the Domasia team at LTSI (Rennes University Hospital) and the Kereval test engineering laboratory.

### Target audience

This guide is intended for developers, healthcare professionals and researchers involved in managing and modeling healthcare data in oncology. It is assumed that the reader is familiar with the FHIR standard.

### UML diagram

This UML diagram provides an overview of the data structures, and is essential for understanding the relationships between the various FHIR resources used in the project.

<div style="text-align:center;"> 
<img src="uml_oncofair_english.svg" alt="UML class diagram representing the FHIR R5 medication prescription and administration use case" width="100%"/>
</div>

### Profiled FHIR resources

Each FHIR resource has been tailored to meet the specific requirements of the Onco-FAIR project, with constraints on cardinalities and extensions to capture critical oncology data:

#### Profiles 

<table style="width: 100%; margin-left: auto; margin-right: auto; border-collapse: collapse; border: none;">
    <tbody>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin:0cm;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;color:red;font-style:italic;'><strong><span style="color: rgb(0, 0, 0);">Resource name</span></strong></p>
            </td>
            <td style="width:216.2pt;border:solid gray 1.0pt;border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin:0cm;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;color:red;font-style:italic;'><strong><span style="color: rgb(0, 0, 0);">Changes made</span></strong></p>
            </td>
            <td style="width:240.95pt;border:solid gray 1.0pt;border-left:none;background:#D9D9D9;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin:0cm;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;color:red;font-style:italic;'><strong><span style="color: rgb(0, 0, 0);">Profile</span></strong></p>
            </td>
        </tr>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Patient</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile OncologyPatient</span></p>
            </td>
        </tr>
                <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Observation</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile AdditionalInformation</span></p>
            </td>
        </tr>
                <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Practitioner</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile OncologyPractitioner</span></p>
            </td>
        </tr>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Encounter</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                        <li>Constraint on subject</li>
                        <li>Constraint on location</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile Stay</span></p>
            </td>
        </tr>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Location</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                        <li>Constraint on managingOrganization</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile AccomodationUnit</span></p>
            </td>
        </tr>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Organization</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile MedicalLiabilityUnit</span></p>
            </td>
        </tr>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Medication</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile OncologyMedication</span></p>
            </td>
        </tr>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">DeviceDefinition</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile AssociatedDevice</span></p>
            </td>
        </tr>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">PlanDefinition</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                        <li>Add extension CureCycleNumber</li>
                        <li>Add extension dayNumber</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile Protocol</span></p>
            </td>
        </tr>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Careplan</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                        <li>Constraint on subject</li>
                        <li>Constraint on encounter</li>
                        <li>Constraint on plannedActivityReference</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile Prescription</span></p>
            </td>
        </tr>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">MedicationRequest</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                        <li>Constraint on basedOn</li>
                        <li>Constraint on requester</li>
                        <li>Constraint on medication</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile PrescriptionItem</span></p>
            </td>
        </tr>
        <tr>
            <td style="width:102.8pt;border:solid gray 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">MedicationAdministration</span></p>
            </td>
            <td style="width:216.2pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <div style='margin-top:0cm;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:justify;line-height:115%;font-size:13px;font-family:"Arial",sans-serif;'>
                    <ul>
                        <li>Constraint on some cardinalities</li>
                        <li>Constraint on encounter</li>
                        <li>Constraint on request</li>
                        <li>Constraint on medication</li>
                    </ul>
                </div>
            </td>
            <td style="width:240.95pt;border-top:none;border-left:none;border-bottom:solid gray 1.0pt;border-right:solid gray 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;">
                <p style='margin-top:3.0pt;margin-right:0cm;margin-bottom:6.0pt;margin-left:0cm;text-align:left;line-height:115%;font-size:12px;font-family:"Arial",sans-serif;'><span style="font-size:13px;line-height:115%;color:black;">Create profile AdministrationReport</span></p>
            </td>
        </tr>
    </tbody>
</table>

#### Extensions 

FHIR extensions such as `CureCycleNumber` and `DayNumber` are used for oncology treatment-specific information.

### FHIR interaction

The following interactions can be applied:

* *Search* to search for one or more resources via search parameters. Uses the `HTTP GET` method.
* *Read* to access the current state of the resource. Uses the `HTTP GET` method.
* *Create* method to add a new resource to the server. Uses the `HTTP POST` method.
* *Update* to update an existing resource. Use the `HTTP PUT` method.

Finally, the body of HTTP requests is a FHIR resource that can be formatted in XML, JSON or RDF.

---

[Return to contents](file:///D:/Home/bguilbert/Documents/fhir/oncofair/output/toc.html "Return to contents")