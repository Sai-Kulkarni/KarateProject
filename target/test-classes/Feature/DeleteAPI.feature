Feature: Patch API

Background: 
* url "https://reqres.in/api"

Scenario: Patch API demo
Given path "/users/2"
When method Delete
And print response
And print responseStatus