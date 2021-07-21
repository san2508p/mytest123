Feature: Verify for scenario outline

  Background: 
    Given url 'http://localhost:3000'
    And print '*****************'

  Scenario Outline: To the the create post using SO <title> <author>
    Given path '/posts'
    And request { "title": '#(title)', "author": '#(author)' }
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201

    Examples: 
      | title  | author  |
      | test111 | testa131 |
      | test211 | testa271 |
      | test311 | testa371 |

  Scenario Outline: To the the create post using SO <title> <author>
    Given path '/posts'
    And request { "title": '#(title)', "author": '#(author)' }
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201

    Examples: 
      | read("testdata.csv") |
