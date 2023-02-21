*** Settings ***
Documentation       To validate the Login form

Library             SeleniumLibrary
Resource            resource.robot

Test Setup          Open browser


*** Variables ***
${logoutButtonText}     Log out


*** Test Cases ***
Validate Successful Login
    Fill the login form
    Wait until the logout button is visible
    Verify the text on button in log out


*** Keywords ***
Fill the login form
    Input Text    id:usernime    ${username}
    Input Password    id:password    ${password}
    Click Button    id:submit

Wait until the logout button is visible
    Wait Until Element Is Visible    css:.wp-block-button__link

Verify the text on button in log out
    ${result}=    Get Text    css:.wp-block-button__link
    Should Be Equal As Strings    ${result}    ${logoutButtonText}
