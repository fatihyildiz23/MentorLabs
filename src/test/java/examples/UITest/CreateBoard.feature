Feature: Spotify API



  Scenario: Login Page
    Given waitFor("button[data-test-id='header-create-menu-button']")
    When click("button[data-test-id='header-create-menu-button']")
    And click("button[data-test-id='header-create-board-button']")
    And input("input.nch-textfield__input","MentorLabs Challenge")



