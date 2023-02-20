*** Settings ***
Documentation       To validate the Login form

Library             SeleniumLibrary


*** Test Cases ***
Validate UnSuccessful Login
    Open Browser
    # Fill the login Form
    # Wait until it checks and display error message
    # verify error message is correct


*** Keywords ***
Open Browser
    Create Webdriver    Chrome   executable_path=C:/Users/tanmay.garg/coding/robot/chromedriver.exe
    Go To    https://practicetestautomation.com/practice-test-login/
