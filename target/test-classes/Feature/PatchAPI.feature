Feature: Patch API

Background: 
* url "https://reqres.in/api"

Scenario: Patch API demo
Given path "/users/2"
And request {"name": "Rutu","job": "UI Designer"}
When method Patch
And print response
And print responseStatus
