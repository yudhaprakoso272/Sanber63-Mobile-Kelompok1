*** Settings ***

Library    AppiumLibrary
Resource    ../PageObjects/HomePage/homePage.robot
Resource    ../PageObjects/SignInPage/signInPage.robot
Resource    ../PageObjects/BookFlightPage/bookFlightPage.robot
Resource    ../PageObjects/base.robot
Test Setup    Run Keywords    
...    Open Flight Application    AND    
...    Verify Home Screen    AND    
...    Click Sign In Button    AND    
...    Verify Sign In Screen
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
# Click Book Button
# Verify Book Screen Appears
# Click One Way
# Click From City
# Clicl NewYork
# Click To City
# Click London
# Close Application


*** Test Cases ***

User should be able to login with valid data and open book 
    Input Username    username=support@ngendigital.com
    Input Password    password=abc123
    Click Sign In Button on Login Screen
    Verify User Successfully Sign In
    Click Book Button
    Verify Book Screen Appears
    Click One Way
    Click From City
    Click NewYork
    Click To City
    Click London
    Click Class
    Click Economy