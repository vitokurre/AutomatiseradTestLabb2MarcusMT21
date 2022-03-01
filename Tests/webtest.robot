*** Settings ***
Documentation  Testing the browser "INFOTIV CAR RENTAL" and it's services focused on Date&Time
...  and being able to see the car selection list.
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Library  DateTime
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  http://rental9.infotiv.net/
${date} =	Get Current Date
${element_text}  Get Text
${infotiv_date}  convert into date

*** Test Cases ***
User Can Access Website And See Current Date
    [Documentation]  Once accessing the website; being able to see the selection of dates
    [Tags]  Time
    Begin Web Test
    Go To Web Page
    Verify Page Contains
    Check Date On Page
    End Web Test


User Can Get To Car Selection Page
    [Documentation]  Once accessing the Car selection page; getting to the car selection list.
    [Tags]  CarList
    Begin Web Test
    Go To Web Page
    Verify Page Contains
    Go To Car List
    End Web Test

User Can Get To Choose A Car Make In Car List
    [Documentation]  Once accessing the website; getting to choose what brand of cars
    [Tags]  ChoosingCarBrand
    Begin Web Test
    Go To Web Page
    Verify Page Contains
    Go To Car List
    Selecting Car Brand In List
    End Web Test




    # Fixa att testet stänger, ändra till suite setups kanske, fixa dokumentet  och sedan VG del