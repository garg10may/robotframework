*** Settings ***
Documentation       To validate the Login form
Library             SeleniumLibrary


*** Test Cases ***
Validate UnSuccessful Login
    Open browser
    Fill the login form
    Wait until the logout button is visible
    Verify the text on button in log out


*** Keywords ***
Open browser
    Create Webdriver    Chrome   executable_path=C:/Users/tanmay.garg/coding/robot/chromedriver.exe
    Go To    https://practicetestautomation.com/practice-test-login/

Fill the login form
    Input Text    id:username    student
    Input Password    id:password    Password123
    Click Button    id:submit
Wait until the logout button is visible
    Wait Until Element Is Visible    css:.wp-block-button__link

Verify the text on button in log out
    ${result}=    Get Text     css:.wp-block-button__link
    Should Be Equal As Strings    ${result}    Log out


