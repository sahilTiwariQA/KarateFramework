Feature: Check users with name

Background:
	* url 'http://gorest.co.in'
	* header Accept = 'application/json'
	* header Authorization = 'Bearer GENwZYL54ZjjOqxRD6Y1QWlHbMu17NATOYZo'
Scenario: List of all the users starts with name given in parameter
	Given path 'public-api/users'
	And param first_name = 'john'
	And param status = 'inactive'
	When method get
	Then status 200
	And def userResponse = response
	Then match userResponse.result[*].first_name contains ["Johnson"]