# Flow 03 - Request chemotherapy data for a multicentric study - OncoFAIR v0.1.0

* [**Table of Contents**](toc.md)
* [**Technical Specifications**](technical_specifications.md)
* **Flow 03 - Request chemotherapy data for a multicentric study**

## Flow 03 - Request chemotherapy data for a multicentric study

The chemotherapy data request flow for a multicentric study and its response, is operated by the HTTP GET request on all the FHIR resources used within this OncoFAIR IG.

### Flow 3.1

This flow is used to request chemotherapy data for a multicentre study, requiring the collection of data from several treatment centres. A researcher or healthcare professional sends a GET request to the health data warehouse to retrieve specific chemotherapy data. The request must contain details of the data to be included, such as patient characteristics (age, gender, co-morbidities), details of treatments administered, and participating treatment centres.

Search criteria can include parameters such as patient IDs, types of chemotherapy drugs used, and other relevant clinical information. This query is constructed using appropriate FHIR search parameters to ensure accurate and comprehensive selection of the data required for the study.

**Note: Before sending the aggregated data, the data warehouse queries the local database. We are conducting a multicenter study, but we are focusing on querying a local data warehouse. The data will be aggregated later, but this is not addressed here.This internal process does not appear on the FHIR flow diagram.**

### Flow 3.2

The health data warehouse receives the request and searches for data corresponding to the criteria provided.

Once the data has been collected, the warehouse sends the results to the consumer in the form of a FHIR bundle = searchset with a 200 OK code. The response contains complete patient and chemotherapy treatment information from multiple centres, enabling the consumer to perform a multi-centre analysis of the data received. The consumer receives the information and can carry out the multicentre study with the data collected.

### Search criteria

The list of applicable search criteria is available in the [OncoFAIR Consumer secondary chemotherapy data](CapabilityStatement-oncofair-consumer-secondary-chemotherapy-data.md).

### Examples of queries

#### Scenario 1

**Scenario description** : Coming soon **Example** :

**Request** :

