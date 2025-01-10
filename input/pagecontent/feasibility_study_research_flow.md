<div>{%include feasibility_study_research_flow.svg%}</div>

The chemotherapy data request flow for a feasibility study and its response, is operated by the HTTP GET request on resources Patient or Encounter.

### Flow 2.1

This workflow enables chemotherapy data to be requested for a feasibility study using specific inclusion and exclusion criteria. A researcher or healthcare professional may, for example, be looking for patients meeting specific criteria such as age, gender, specific co-morbidities or particular chemotherapy treatments.

The user initiates a query containing X parameters with the filter "_count"=0. The user interface transforms this query into a batch of individual queries contained in a bundle of batch type containing the X +1 queries, each of which contains just one of the X parameters, plus the initial query.

The search criteria may include elements such as the patient ID, the type of chemotherapy treatment administered, or even concomitant medical conditions. This query is constructed using the appropriate FHIR search parameters, which allow precise selection of the data required for the study.

### Flow 2.2

The health data warehouse receives the request and searches for data corresponding to the criteria provided.

Once the relevant data has been extracted, the warehouse sends the aggregated results to the consumer in the form of an FHIR bundle = searchset with a 200 OK code which indicates the total number of resources that match in Bundle.total, but without entries or previous/next/last links. It means that, the health data warehouse will return a number of stays or patients corresponding to the request. The response includes information on the impact of each criterion on results. If necessary, the consumer can then send a new query with modified criteria to further refine the results of the feasibility study.



### Search criteria

The list of applicable search criteria is available in the capability statement [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.html).


### Examples of queries

#### Scenario 1

__Scenario description__ : A researcher wants to identify patients who have received a specific chemotherapy treatment for a feasibility study.

__Example__ : Search for patients who have received a specific chemotherapy drug (identified by the code 387207008) 

__Request__ : coming soon

#### Scenario 2

__Scenario description__ : A researcher wants to identify patients who have particular comorbidities for a feasibility study.

__Example__ : Search for patients who are on a diet (identified by the code REGIME).

__Request__ : coming soon

