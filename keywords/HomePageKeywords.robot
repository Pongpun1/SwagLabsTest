***Settings***
Library     SeleniumLibrary
Resource    CommonKeywords.robot

***Keywords***
users sort products by price from highest to lowest
    CommonKeywords.Wait until element is ready then select from list by value  xpath=//select[@data-test="product-sort-container"]      hilo

users sort products by name from Z to A
    CommonKeywords.Wait until element is ready then select from list by value   xpath=//select[@data-test="product-sort-container"]     za

user logout while product still in the cart

swag labs should display home page and display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text  ${expected_message}

user logout from swag labs
    CommonKeywords.Wait until element is ready then click element  xpath=//button[@type="button" and text()="Open Menu"]
    CommonKeywords.Wait until element is ready then click element  xpath=//a[text()="Logout"]