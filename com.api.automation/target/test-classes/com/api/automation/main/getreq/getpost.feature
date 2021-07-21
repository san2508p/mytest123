Feature: Get all the post

  Background: set up the base url
    Given url 'http://localhost:3000'
    And print '*****************'

  Scenario: Get all the post in local
    And path '/posts'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response[0].id
    And match response ==
    """
    [
  {
    "id": 1,
    "title": "json-server",
    "author": "typicode"
  },
  {
    "id": 3
  },
  {
    "id": 4
  },
  {
    "title": "json-server2",
    "author": "typicode2",
    "id": 5
  }
]
    """

  Scenario: Get all the post in local with id 3
    And path '/posts/3'
    When method get
    Then status 200
    And print response
    And print response.id
    And match response.id == 3
    
    Scenario: Get all the post in local with id 1
    And path '/posts/1'
    When method get
    Then status 200
    And print response
    And print response.id
    And match response contains deep {"title": "json-server"}
    

    # size of array '#[2]'
    #Wild charchter response.[*]
    # '#?_=1'
    
    Scenario: Get all the post in local
    And path '/posts'
    And header Accept = 'application/json'
    When method get
    Then status 200
    * def actualresponse = read("../jsonresponse.json")
    And print response[0].id
    And match response == actualresponse