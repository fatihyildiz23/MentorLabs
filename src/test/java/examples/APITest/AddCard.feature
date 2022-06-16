Feature: Spotify API


Background:
  * def listId1 = call read('AddList.feature')
  * def data = read('data.json')


  Scenario: Add Play List


    Given url 'https://api.trello.com'
    When path '/1/cards'
    And param idList = listId1.listId
    And param name = 'Api Liste'
    And param key = data.User.userPage.key
    And param token = data.User.userPage.token
    Then method POST
    * def cardId = response.id
    And print response
    Then status 200
    Then assert responseTime<5000