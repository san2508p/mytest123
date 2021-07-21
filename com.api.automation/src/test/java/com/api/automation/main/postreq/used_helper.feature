Feature: To test the helper file

  Background: set up the base url
    Given url 'http://localhost:3000'
    And print '*****************'


  Scenario: Get all the post in local
    Given call read("../Helper_createpost.feature")
    And path '/posts'
    And header Accept = 'application/json'
    When method get
    And match response contains deep {"title": "creta"}
    Then status 200
    
