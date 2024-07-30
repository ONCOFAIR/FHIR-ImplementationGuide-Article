<div>{%include feasibility_study_research_flow.svg%}</div>

The chemotherapy data request flow for a feasibility study and its response, is operated by the HTTP GET request on resources Patient and Encounter.

### Flow 2.1

This workflow enables chemotherapy data to be requested for a feasibility study using specific inclusion and exclusion criteria. A researcher or healthcare professional may, for example, be looking for patients meeting specific criteria such as age, gender, specific co-morbidities or particular chemotherapy treatments.

The user initiates a query containing X parameters with the filter "_count"=0. The user interface transforms this query into a batch of individual queries contained in a bundle of batch type containing the X +1 queries, each of which contains just one of the X parameters, plus the initial query.

The search criteria may include elements such as the patient ID, the type of chemotherapy treatment administered, or even concomitant medical conditions. This query is constructed using the appropriate FHIR search parameters, which allow precise selection of the data required for the study.

### Flow 2.2

The health data warehouse receives the request and searches for data corresponding to the criteria provided.

*Note :  Before sending the data, the health data warehouse needs to retrieves information on the impact of each criterion on the results obtained, enabling the consumer to understand how the inclusion and exclusion criteria have influenced the aggregated data. These internal processes do not appear on the FHIR flow diagram.*

Once the relevant data has been extracted, the warehouse sends the aggregated results to the consumer in the form of an FHIR bundle = searchset with a 200 OK code which indicates the total number of resources that match in Bundle.total, but without entries or previous/next/last links. The response includes information on the impact of each criterion on results. If necessary, the consumer can then send a new query with modified criteria to further refine the results of the feasibility study.



### Search criteria

Search criteria applicable to the Encounter resource : 
<table border="1">
    <thead>
        <tr>
            <th>Search criteria</th>
            <th>Native FHIR</th>
            <th>Type FHIR</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>identifier</td>
            <td>yes</td>
            <td>token</td>
            <td>Identifier of the patient's stay</td>
        </tr>
    </tbody>
</table>

Search criteria applicable to the Patient resource : 
<table border="1">
    <thead>
        <tr>
            <th>Search criteria</th>
            <th>Native FHIR</th>
            <th>Type FHIR</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>identifier</td>
            <td>yes</td>
            <td>token</td>
            <td>Identifier of the patient</td>
        </tr>
    </tbody>
</table>


### Examples of queries

#### Scenario 1

__Scenario description__ : A researcher wants to identify patients who have received a specific chemotherapy treatment for a feasibility study.

__Example__ : Search for patients who have received a specific chemotherapy drug (identified by the code 387207008) 

__Request__ : GET [BASE]/Medication?clinical-code=387207008
&_revinclude=MedicationRequest:medication:medication.concept=component #inclu les MedicationRequest qui référencent les Medication
&_include=MedicationRequest:basedOn:medication.concept=element #inclu les MRC référencées par les MRE
&_include=MedicationRequest:basedOn:medication.concept=prescription #inclu les MRE référencées par les MRP
&_include=MedicationRequest=encounter #inclu les MedicationRequest référencés par les Encounter
&_include=Encounter:patient #inclu les Encouter référenceés par les Patient



#### Scenario 2

__Scenario description__ : A researcher wants to identify patients who have particular comorbidities for a feasibility study.

__Example__ : Search for patients who are on a diet (identified by the code REGIME).

__Request__ : 

