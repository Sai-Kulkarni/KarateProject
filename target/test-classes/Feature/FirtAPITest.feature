Feature: First API Test

Background:
* url "https://reqres.in"

  Scenario: First API Test Demo
    Given path "/api/users"
    And param page = 2
    When method GET
    Then status 200
		And print response
		And print responseStatus
		And print responseTime
		And print responseHeaders
		And print responseCookies
		And match $.data[0].first_name != null
		And assert response.data.length == 6