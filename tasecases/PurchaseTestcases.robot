***Settings***
Library     SeleniumLibrary
Resource    ../keywords/CommonKeywords.robot
Resource    ../keywords/LoginPageKeywords.robot
Resource    ../keywords/HomePageKeywords.robot
Resource    ../keywords/PurchasePageKeywords.robot
Variables   ../resources/config/config.yaml
Variables   ../resources/testdata/testdata.yaml
Suite Setup     CommonKeywords.Open Chrome Browser Without Password Warning    ${baseUrl}
Suite Teardown  Close Browser


***Test Cases***
As a user, I want to login success with valid credential
    Maximize Browser Window
    When user login to swag labs with ${username} and ${valid_password}
    Then swag labs should display home page and display message as "Swag Labs"

As a user, I want to buy product from swag labs
    When user add a product to cart
    Then swag labs should display checkout page and display message as "Your Cart"
    Then user checkout the product with ${firstname} ${lastname} and ${postal}
    Then swag labs should display message as "Thank you for your order!"
    Then user go back to home page

As a user, I want to buy product from swag labs with out entering any information
    When user add a product to cart
    Then swag labs should display checkout page and display message as "Your Cart"
    Then user checkout the product without entering information
    Then swag labs should display message as "Error: First Name is required"
    [Teardown]      user logout from swag labs
