Feature: Put API

Background:
* url "https://reqres.in/api"

Scenario: PUT API demo
Given path "/users/2"
And request {"name": "Sai","job": "QA"}
When method PUT
And print response
And print responseStatus
And match response == { "name": "Sai","job": "QA","updatedAt": "#ignore"}