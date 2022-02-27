Feature: Reading through CSV


Scenario Outline: CSV demo
Given url "https://reqres.in/api/users"
And print "hi"
And request {'name':<name>, 'job':<job>,'city':<city>}
When method POST
Then print response
And  print responseStatus


Examples:
| read('request.csv') |