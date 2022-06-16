Feature: Spotify API


Background:
  * def data = read('data.json')
  * def boardId1 = call read('users.feature')



  Scenario: Add Play List

    Given url 'https://api.trello.com'
    When path '/1/lists'
    And param name = 'Api Liste'
    And param idBoard = boardId1.boardId
    And param key = data.User.userPage.key
    And param token = data.User.userPage.token
    Then method POST
    * def listId = response.id
    Then status 200
    Then assert responseTime<5000