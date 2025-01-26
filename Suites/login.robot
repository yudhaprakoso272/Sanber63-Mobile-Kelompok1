*** Settings ***

Library    AppiumLibrary
Resource    ../PageObjects/HomePage/homePage.robot
Resource    ../PageObjects/LoginPage/loginPage.robot
Resource    ../PageObjects/base.robot
Test Setup    Run Keywords    Open Flight Application    AND    
...    Verify Home Screen    AND    
...    Click Sign In Button    AND    
...    Verify Login Screen
#Suite Setup
Test Teardown    Close Flight Application
#Suite Teardown

*** Variables ***


*** Keywords ***

# Open Flight App
# Verify Home Screen Appears
# Click Sign In Button
# Verify Login Screen Appears
# Input Username
# Input Password
# Click Sign In Button On Login Screen
# Verify User Successfully Login
# Close Application

*** Test Cases ***

User should be able to login with valid data
    Input Username    username=support@ngendigital.com
    Input Password    password=abc123
    Click Sign In Button on Login Screen
    Verify User Successfully Login

User should be able to login with invalid username
    Input Username    username=support
    Input Password    password=abc123
    Click Sign In Button on Login Screen


User should be able to login with invalid data
    Input Username    username=support45@ngendigital.com
    Input Password    password=abc12345
    Click Sign In Button on Login Screen
    

User should be able to login without data username and password
    Input Username    username=
    Input Password    password=
    Click Sign In Button on Login Screen
    