Feature: Spotify API



  Scenario: Login Page
    Given driver "https://trello.com/home"
    When fullscreen()
    * def result = call read('LoginPage.feature')
    * def result = call read('CreateBoard.feature')
    * def result = call read('CreateList.feature')


