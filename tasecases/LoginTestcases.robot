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
    [Teardown]      user logout from swag labs

As a user, I fail to login with invalid credential
    When user login to swag labs with ${username} and ${invalid_password}
    Then swag labs should display display validate login fail message as "Epic sadface: Username and password do not match any user in this service"
