Feature: Spotify API



  Scenario: Login Page

    And click("a[data-uuid*=login]")
    And input("input#user","fatihyildiztest1@gmail.com")
    And input("input[name='password']","Test2301")
    And click("input#login")
    * delay(2000)
    And waitFor("input[name='password']")
    And input("input[name='password']","Test2301")
    And click("#login-submit")




