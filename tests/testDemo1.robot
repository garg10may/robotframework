*** Settings ***
Documentation       To validate the Login form

Library             SeleniumLibrary
Resource            ../PO/generic.robot
Resource            ../PO/LoginPage.robot

Test Setup          generic.Open browser


*** Variables ***
${logoutButtonText}     Log out


*** Test Cases ***
Validate Successful Login
    LoginPage.Fill the login form    ${user_name}    ${password}
    Wait until the logout button is visible
    Verify the text on button in log out


*** Keywords ***
Wait until the logout button is visible
    Wait Until Element Is Visible    css:.wp-block-button__link

Verify the text on button in log out
    ${result}=    Get Text    css:.wp-block-button__link
    Should Be Equal As Strings    ${result}    ${logoutButtonText}
