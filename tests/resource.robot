*** Settings ***
Documentation       Resources

Library             SeleniumLibrary


*** Variables ***
${username}     student
${password}     Password123


*** Keywords ***
Open browser
    Create Webdriver    Chrome    executable_path=C:/Users/tanmay.garg/coding/robot/chromedriver.exe
    Go To    https://practicetestautomation.com/practice-test-login/
