*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL} =        https://the-internet.herokuapp.com/
${BROWSER} =    chrome

*** Keywords ***

Begin Web Test
    [Documentation]  This is some basic info about the test
    Set Selenium Speed 	     0.5s
    Open Browser             ${URL}   ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains  Welcome to the-internet

End Web Test     
    Close Browser


