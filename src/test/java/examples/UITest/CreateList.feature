Feature: Spotify API



  Scenario: Login Page
    Given click("button[data-test-id='create-board-submit-button']")
    When input("input.list-name-input","liste")
    And click("input.mod-list-add-button")


