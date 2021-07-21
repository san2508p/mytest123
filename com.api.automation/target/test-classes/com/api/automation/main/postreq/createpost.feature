Feature: Test the create post feature

  Background: 
    Given url 'http://localhost:3000'
    And print '*****************'

  Scenario: create post by paasing json in request
    Given path '/posts'
    And request { "title": "twenty three", "author": "arushi" }
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And match response.author == 'arushi'

  Scenario: Create post from external json file
    * def inputfile = read("../createpost.json")
    Given path '/posts'
    And request inputfile
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And match response.author == 'arushi'
