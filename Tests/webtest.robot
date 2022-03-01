*** Settings ***
Documentation  Testing the browser "INFOTIV CAR RENTAL" and it's services focused on Date&Time
...  and being able to see the car selection list.
Library  SeleniumLibrary
Library  DateTime

*** Variables ***
${BROWSER}  chrome
${URL}  http://rental9.infotiv.net/
${date} =	Get Current Date
${element_text}  Get Text
${infotiv_date}  convert into date


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

Go To Web Page
    Maximize Browser Window
    Go To  ${URL}
    Wait Until Page Contains  Infotiv Car Rental

Verify Page Contains
    Click Element   //*[@id="title"]
    Wait Until Page Contains   When do you want to make your trip?
    ${date} =	Get Current Date
    #${element_text} =  Get Text  //*[@id="start"]

    ${value}=  Get Element Attribute  ${//*[@id="start"]}  attribute=title

    ${id}=	Get Element Attribute	css:h1	id

    Log  Result ${value}
    ${infotiv_date} =  Convert Date  ${element_text}
    Should Be Equal	${date}	${infotiv_date}

End Web Test
       Close Browser







*** Test Cases ***
User Can Access Website And See Current Date
    [Documentation]  Once accessing the website; being able to see the selection of dates
    [Tags]  Time
    Begin Web Test
    Go To Web Page
    Verify Page Contains
    End Web Test


User Can Get To Car Selection Page
    [Documentation]  Once accessing the Car selection page; getting to the car selection list.
    [Tags]  CarList


