Feature: Spotify API


Background:
  * def data = read('data.json')
  * def cardId = call read('AddCard.feature')



  Scenario: Add Play List

    Given url 'https://api.trello.com'
    When path '/1/cards/'
    And  path cardId.cardId
    And path '/actions/comment'
    And param text = 'Test Automatin Champ!'
    And param key = data.User.userPage.key
    And param token = data.User.userPage.token
    Then method POST
    Then status 200
    Then assert responseTime<5000