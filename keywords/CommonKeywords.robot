***Settings***
Library     SeleniumLibrary

***Keywords***
Open Chrome Browser Without Password Warning
    [Arguments]    ${url}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver

    Call Method    ${chrome_options}    add_argument    --incognito
    Call Method    ${chrome_options}    add_argument    --disable-features\=SafeBrowsingPasswordCheck
    Call Method    ${chrome_options}    add_argument    --disable-save-password-bubble
    
    ${prefs}=    Create Dictionary    
    ...    credentials_enable_service=${False}    
    ...    password_manager_enabled=${False}
    ...    profile.password_manager_leak_detection=${False}
    
    Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}
    
    ${exclude_switches}=    Create List    enable-automation
    Call Method    ${chrome_options}    add_experimental_option    excludeSwitches    ${exclude_switches}
    Call Method    ${chrome_options}    add_experimental_option    useAutomationExtension    ${False}
    
    Open Browser    ${url}    chrome    options=${chrome_options}

Wait until element is ready then click element
    [Arguments]     ${locator}
    Wait Until Keyword Succeeds     5x  2s      Click Element   ${locator}

Wait until element is ready then input text
    [Arguments]     ${locator}  ${text}
    Wait Until Keyword Succeeds     5x  2s      Input Text   ${locator}  ${text}

Wait until page contains element then verify text
    [Arguments]     ${expected_text}
    Wait Until Keyword Succeeds     5x  2s      Page Should Contain   ${expected_text}

Wait until element is ready then select from list by value
    [Arguments]    ${locator}    ${value}
    Wait Until Keyword Succeeds     5x  2s      Select From List By Value   ${locator}   ${value}
