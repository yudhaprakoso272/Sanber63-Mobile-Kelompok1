*** Settings ***

Documentation    Book Page Keywords Related
Library    AppiumLibrary
Resource    ../base.robot

*** Keywords ***

Click Book Button
        Wait Until Element Is Visible        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]
        Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Verify Book Screen Appears
        Wait Until Element Is Visible        locator=//android.widget.LinearLayout[@resource-id="com.example.myapplication:id/linearLayout2"]

Click One Way
        Click Element        locator=//android.widget.TextView[@text="ONE WAY"]

Click From City
        Wait Until Element Is Visible    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
        Click Element        locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]

Click NewYork
        Wait Until Page Contains Element    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="New York"]    timeout=10 seconds
        Click Element        locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="New York"]

Click To City
        Wait Until Element Is Visible        locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
        Click Element        locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]

Click London
        Wait Until Page Contains Element        xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="London"]    timeout=10 seconds
        Click Element        locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="London"]

Click Class
        Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Economy"]
        Click Element        locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]

Click Economy
        Wait Until Page Contains Element    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Economy"]    timeout=10 seconds
        Click Element        locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Economy"]

Click Flight
        Click Element        locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Click Book Flight Button
        Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Verify Book Flight Screen Appears
        Wait Until Element Is Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView5"]
        