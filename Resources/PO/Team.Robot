*** Settings ***
Library  SeleniumLibrary


*** Variables ***

${TEAM_HEADER_LABEL} =      css= #team > div > div:nth-child(1) > div > h2


*** Keywords ***
#Verify Page Loaded
#    wait intil page contains element    ${TEAM_HEADER_LABEL} 

#Validate Page Contents
#    SeleniumLibrary.Element Text Should Be 	    ${TEAM_HEADER_LABEL}    Our Amazing Team
