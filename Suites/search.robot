*** Settings ***
Library    AppiumLibrary
Resource    ../PageObjects/HomePage/homePage.robot
Resource    ../PageObjects/SignInPage/signInPage.robot
Resource    ../PageObjects/SearchPage/searchPage.robot
Resource    ../PageObjects/base.robot
Test Setup    Run Keywords    Open Flight Application    AND    
...    Verify Home Screen    AND    
...    Click Sign In Button    AND    
...    Verify Sign In Screen    
# ...    Click Search    AND    
# ...    Verify Search Page    AND 
# ...    Click Button Search In Search Page    AND
# ...    Verify User Successfully Search
#Suite Setup
Test Teardown    Close Flight Application
#Suite Teardown

*** Keywords ***

*** Test Cases ***
User should be able to login with valid data and search with valid data
    Input Username    username=support@ngendigital.com
    Input Password    password=abc123
    Click Sign In Button on Login Screen
    Verify User Successfully Sign In
    Click Search
    Verify Search Page
    Input Flight Number    DA935
    Click Button Search In Search Page
    Verify User Successfully Search

User should be able to login with valid data and search wrong valid data
    Input Username    username=support@ngendigital.com
    Input Password    password=abc123
    Click Sign In Button on Login Screen
    Verify User Successfully Sign In
    Click Search
    Verify Search Page
    Input Flight Number    DA936
    Click Button Search In Search Page
    Sleep    5s   # Menunggu 5 detik
    #Verify Invalid Flight Number Error Message  # Comment out this line
    # Verify Invalid Flight Number Error Message
    




