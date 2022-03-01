*** Settings ***
Documentation  Testing the browser "INFOTIV CAR RENTAL" and it's services focused on Date&Time
...  and being able to see the car selection list.
Library  SeleniumLibrary

*** Test Cases ***
User Can Access Website And See Current Date
    [Documentation]  Once accessing the website; being able to see the selection of dates
    [Tags]  TimeTest
    Open Browser  about:blank  chrome
    Maximize Browser Window
    Go To  http://rental9.infotiv.net/webpage/html/gui/about.php
    Wait Until Page Contains  Welcome
    Close Browser




User Can Get To Car Selection Page
    [Documentation]  Once accessing the Car selection page; getting to the car selection list.
    [Tags]  CarList


