*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${TOP_NAV_TEAM_LINK} =   Team

*** Keywords ***

Select "Team" Page
    SeleniumLibrary.Click Link 	 ${TOP_NAV_TEAM_LINK}
    #SeleniumLibrary.Click Element 	 css=#bs-example-navbar-collapse-1 > ul > li:nth-child(5) > a 	 
    Sleep   3s

