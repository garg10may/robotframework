*** Settings ***
Documentation       All the page objects and keywords of landing page

Library             SeleniumLibrary
Library             ../customLibraries/Example.py


*** Keywords ***
Fill the login form
    [Arguments]    ${username}    ${password}
    Input Text    id:username    ${username}
    Input Password    id:password    ${password}
    Click Button    id:submit
    Hello World
