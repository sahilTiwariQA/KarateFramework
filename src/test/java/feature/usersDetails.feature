Feature: User Details

  Scenario: Get call details

    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200

#    printing response data
    Then print response
#    storing and printing specific response data
    * def name = response.data.first_name
    Then print name

#    Storing response in JSON and comparing
    * def expectedOutput = read('response.json')
    And match response == expectedOutput

#    Comparing whole data of response except few fields (add #ignore to the fields in json file ,you dont want to compare)
    * def expectedOutput2 = read('response2.json')
    And match response == expectedOutput2

#    Checking for a parameter not present in response
    * def job_code = response.data.job_code
    And match response. data.job_code == job_code