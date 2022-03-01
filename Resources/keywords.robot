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

Check Date On Page
    ${date} =    Get Current Date  result_format=%Y-%m-%d
    ${attr}=  Get Element Attribute  //*[@id="start"]  value
    ${infotiv_date} =  Convert Date  ${attr}  result_format=%Y-%m-%d
    Should Be Equal    ${date}    ${infotiv_date}

Go To Car List
    Click Element   //*[@id="continue"]
    Wait Until Page Contains   What would you like to drive?

Selecting Car Brand In List
    Click Element   //*[@id="ms-list-1"]/button
    Click Element   //*[@id="ms-list-1"]/div/ul/li[3]/label
    Wait Until Page Contains  Roadster

End Web Test
    Close Browser