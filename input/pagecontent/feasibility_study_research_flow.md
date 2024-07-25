<div>{%include feasibility_study_research_flow.svg%}</div>

The chemotherapy data request flow for a feasibility study and its response, is operated by the HTTP GET request on all the FHIR resources used within this OncoFAIR IG.

### Flow 2.1

This workflow enables chemotherapy data to be requested for a feasibility study using specific inclusion and exclusion criteria. A researcher or healthcare professional may, for example, be looking for patients meeting specific criteria such as age, gender, specific co-morbidities or particular chemotherapy treatments. The consumer sends a GET request to the health data warehouse with these criteria.

The search criteria may include elements such as the patient ID, the type of chemotherapy treatment administered, or even concomitant medical conditions. This query is constructed using the appropriate FHIR search parameters, which allow precise selection of the data required for the study.

### Flow 2.2

The health data warehouse receives the request and searches for data corresponding to the criteria provided. 

*Note : Once the request has been received, if necessary, the warehouse can add additional criteria to refine the search, for example by taking into account patients who have expressed opposition to the use of their data or who are already taking part in other clinical trials.  
Before sending the data, the health data warehouse needs to retrieves information on the impact of each criterion on the results obtained, enabling the consumer to understand how the inclusion and exclusion criteria have influenced the aggregated data. These internal processes do not appear on the FHIR flow diagram.*

Once the relevant data has been retrieved, the warehouse sends the aggregated results to the consumer in the form of a FHIR bundle = searchset with a 200 OK code. The response includes . If necessary, the consumer can then send a new query with modified criteria to further refine the results of the feasibility study.



### Search criteria

{% sql SELECT '[' || Name ||'](SearchParameter-' || id || '.html)' as "Search criteria", Description FROM Resources WHERE Type = 'SearchParameter'%}

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

