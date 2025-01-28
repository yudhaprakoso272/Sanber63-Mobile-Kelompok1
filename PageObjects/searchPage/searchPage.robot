*** Settings ***

Documentation             Search Page Keywords Related
Library    AppiumLibrary
Resource   ../base.robot

*** Keywords ***
Click Search 
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Verify Search Page
    Wait Until Element Is Visible   //android.widget.TextView[@resource-id="com.example.myapplication:id/enterFlight"]

Input Flight Number
    [Arguments]    ${flightNumber}
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    text=${flightNumber}

Click Button Search In Search Page
    Click Element   //android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Verify User Successfully Search
        Wait Until Element Is Visible    locator=//android.widget.TextView[@text="Toronto to Paris"]

# Verify Invalid Flight Number Error Message
#     Get Text    //android.widget.Toast[contains(@text, "Please enter valid Flight Number")]
