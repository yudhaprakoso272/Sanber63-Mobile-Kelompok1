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

User should be able to login with valid data and Succeed book Flight
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
    User Choose Start Date
    Click Date
    User Choose End Date
    Click Flight
    Click Book Flight Button
    Verify Book Flight Screen Appears
    Click On The Price To Confirm
    Cick Confirm Button
    System Shown "your flight is booked.Reservation number is CADX2214"

User Succeed book Flight without start date and end date
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
    Click Flight
    Click Book Flight Button
    Verify Book Flight Screen Appears
    Click On The Price To Confirm
    Cick Confirm Button
    System Shown "your flight is booked.Reservation number is CADX2214"

User Succeed book Flight without Flight, flight+hotel, and +/- 1 Day
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
    User Choose Start Date
    Click Date
    User Choose End Date
    Click Book Flight Button
    Verify Book Flight Screen Appears
    Click On The Price To Confirm
    Cick Confirm Button
    System Shown "your flight is booked.Reservation number is CADX2214"