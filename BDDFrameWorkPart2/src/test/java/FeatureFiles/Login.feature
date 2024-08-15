@TutorialsNinjaLogin
Feature: Login Functionality of TutorialsNinja

  @ValidCredentials
  Scenario Outline: Login With Valid Credentials
    Given User navigates to login page
    When User enters valid email <email>
    And User enters valid password <password>
    And User clicks on Login button
    Then User is redirected to Account Page
    Examples:
      |email										|password		 |
      |hondaturbo12341@gmail.com	|ABCD1232|
      |hondaturbo12342@gmail.com	|ABCD1232|
      |hondaturbo12343@gmail.com	|ABCD1232|
      |hondaturbo12344@gmail.com|    ABCD1232|
      |hondaturbo12345@gmail.com	|ABCD1232|
      |hondaturbo12346@gmail.com	|ABCD1232|
      |hondaturbo12347@gmail.com	|ABCD1232|


  @InvalidCredentials
  Scenario: Login With Invalid Credentials
    Given User navigates to login page
    When User enters invalid email
    And User enters invalid password "Selenium@123456"
    And User clicks on Login button
    Then User gets warning message about credentials mismatch

  @ValidEmailInvalidPassword
  Scenario: Login With Valid Email Invalid Password
    Given User navigates to login page
    When User enters valid email "seleniumpanda@gmail.com"
    And User enters invalid password "Selenium@123456"
    And User clicks on Login button
    Then User gets warning message about credentials mismatch

  @InvalidEmailValidPassword
  Scenario: Login With invalid Email Valid Password
    Given User navigates to login page
    When User enters invalid email
    And User enters valid password "Selenium@123"
    And User clicks on Login button
    Then User gets warning message about credentials mismatch

  @NoCredentials
  Scenario: Login Without credentials
    Given User navigates to login page
    And User clicks on Login button
    Then User gets warning message about credentials mismatch