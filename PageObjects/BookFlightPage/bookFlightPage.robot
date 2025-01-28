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

Click Round Trip
        Click Element    locator=//android.support.v7.app.ActionBar.Tab[@content-desc="Round Trip"]

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
User Choose Start Date
        Click Element        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
        Wait Until Element Is Visible        locator=//android.view.View[@resource-id="android:id/month_view"]

Click Date
        Click Element        locator=//android.view.View[@content-desc="03 August 2019"]
        Wait Until Element Is Visible        locator=//android.view.View[@content-desc="03 August 2019"]
        Click Element        locator=//android.widget.Button[@resource-id="android:id/button1"]
        Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]

User Choose End Date
        Click Element        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
        Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="android:id/date_picker_header_date"]
        Click Element        locator=//android.view.View[@content-desc="03 August 2019"]
        Wait Until Element Is Visible        locator=//android.view.View[@content-desc="03 August 2019"]
        Click Element        locator=//android.widget.Button[@resource-id="android:id/button1"]
        Wait Until Element Is Visible        locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]

Click Flight
        Click Element        locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]
        Wait Until Element Is Visible        locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Click Book Flight Button
        Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Verify Book Flight Screen Appears
        Wait Until Element Is Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView5"]

Click On The Price To Confirm
        Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price1"]
        Wait Until Element Is Visible        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price1"]

Cick Confirm Button
        Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]
        Wait Until Element Is Visible        locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]

System Shown "your flight is booked.Reservation number is CADX2214"
        Wait Until Element Is Visible        locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]

