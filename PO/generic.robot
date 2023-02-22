*** Settings ***
Documentation       Resources, we are storing common variables to be used and Open browser since it would be needed everywhere

Library             SeleniumLibrary


*** Variables ***
${username}     student
${password}     Password123


*** Keywords ***
Open browser
    Create Webdriver    Chrome    executable_path=C:/Users/tanmay.garg/coding/robot/chromedriver.exe
    Go To    https://practicetestautomation.com/practice-test-login/
