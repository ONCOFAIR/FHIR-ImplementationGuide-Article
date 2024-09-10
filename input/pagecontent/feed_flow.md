<div>{%include feed_flow.svg%}</div>

The health data warehouse is fed by the GET request on all the FHIR resources used within this OncoFAIR IG. This request is sent to the data producer, which sends the data to the health data warehouse so that it can be fed.

### Flow 1.1

This flow initiates the process where the health data warehouse sends a GET request to the data producer to obtain structured chemotherapy data.

### Flow 1.2

Once the data producer receives the GET request, it gathers the requested structured chemotherapy data and patient information. The data producer then responds with a 200 OK status code, indicating that the request was successful, and includes the data in a FHIR bundle of type "searchset".

### Search criteria

{% sql SELECT '[' || Name ||'](SearchParameter-' || id || '.html)' as "Search criteria", Description FROM Resources WHERE Type = 'SearchParameter'%}

