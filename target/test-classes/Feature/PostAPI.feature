Feature: POST API

Background: 
* url "https://reqres.in/api"

Scenario: POST API demo
Given path "/users"
#And request {"name":"Sai", "job":"QA"}
And def requestBody = read('request.json')
And def responseBody = read('response.json')
And set requestBody.job = "tester"
And request requestBody
When method POST
Then status 201
And print response
And match response == responseBody
