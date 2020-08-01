Feature: Create users

Background:
	* url 'http://gorest.co.in'
	* header Accept = 'application/json'
	* header Authorization = 'Bearer GENwZYL54ZjjOqxRD6Y1QWlHbMu17NATOYZo'
	
Scenario: List of all the users starts with name given in parameter
	Given path 'public-api/users'
	And request {"first_name" : "sahils","last_name" : "T","gender": "male","dob": "01-01-1980","email" : "sasd@gdas.com","phone": "+72035665480","website" : "sahil@saihdl.com","address" : "s street minnesota","status" : "active"}
	When method POST
	Then status 200