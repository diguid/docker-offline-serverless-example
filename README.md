 # Running local version of AWS Lambdas
 
 This repo is an example on how to run a local dockerized version of AWS Lambdas with the help of the [serverless framework](https://www.serverless.com/) and [serverless-offline plugin](https://www.npmjs.com/package/serverless-offline).
 
 If you want more details about the code, check out this Medium Article: 
 
 # What does this code do?
 It just creates an `/wikipedia_search` endpoint on `localhost:3000`. This endpoint receives any topic and returns a wikipedia search containing the relevant page names related to that topic.  
 
 # How to run:

All you gotta do is clone this repo and from the root directory, run the following command:
 
`docker-compose up --build  offline-serverless`

This will automatically spin up a local AWS lambda running on port 3000. You can send requests using cURL:

```
curl -X POST  http://localhost:3000/local/wikipedia_search \
     -d '{
            "topic": "Avengers"
      }'
```
