***Settings***
Library     SeleniumLibrary
Resource    ../keywords/CommonKeywords.robot
Resource    ../keywords/LoginPageKeywords.robot
Resource    ../keywords/HomePageKeywords.robot
Variables   ../resources/config/config.yaml
Variables   ../resources/testdata/testdata.yaml
Suite Setup     CommonKeywords.Open Chrome Browser Without Password Warning    ${baseUrl}
Suite Teardown  Close Browser


***Test Cases***
As a user, I want to login success with valid credential
    Maximize Browser Window
    When user login to swag labs with ${username} and ${valid_password}
    Then swag labs should display home page and display message as "Swag Labs"

As a user, I want to sort product from A-Z to highest price to low price
    Sleep   1s
    When users sort products by price from highest to lowest
    Sleep   1s

As a user, I want to sort product from A-Z to highest price to low price
    Sleep   1s
    When users sort products by name from Z to A
    Sleep   1s
    [Teardown]      user logout from swag labs