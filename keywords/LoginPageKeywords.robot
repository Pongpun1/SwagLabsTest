***Settings***
Library     SeleniumLibrary
Resource    CommonKeywords.robot

***Keywords***
user login to swag labs with ${username} and ${password}
    CommonKeywords.Wait until element is ready then input text          name=user-name      ${username}
    CommonKeywords.Wait until element is ready then input text          name=password       ${password}
    CommonKeywords.Wait until element is ready then click element       xpath=//input[@type="submit"]

swag labs should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}