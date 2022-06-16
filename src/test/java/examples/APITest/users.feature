Feature: Spotify API


Background:
  * def data = read('data.json')



  Scenario: Add Board

    Given url 'https://api.trello.com'
    When path '/1/boards'
    And param key = data.User.userPage.key
    And param token = data.User.userPage.token
    And param name = 'u'

    And method POST
    * def boardId = response.id
    And print boardId
    Then status 200
    Then assert responseTime<5000

