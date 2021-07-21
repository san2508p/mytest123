Feature: Test the create post feature

  Background: 
    Given url 'http://localhost:3000'
    And print '*****************'

  Scenario: create post by paasing json in request
    Given path '/posts'
    And request { "title": "creta", "author": "Hyundai" }
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And print response
    
    