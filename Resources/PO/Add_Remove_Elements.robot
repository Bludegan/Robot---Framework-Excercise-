*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LINK_BUTTON_PAGE} =           xpath=//*[@id="content"]/ul/li[2]/a
${ADD_ELEMENT_BUTTON} =         xpath=//*[@id="content"]/div/button
${REMOVE_ELEMENT_BUTTON} =      xpath=//*[@id="elements"]/button
*** Keywords ***

Open Add/Remove Elements Page
        SeleniumLibrary.Click Link 	 ${LINK_BUTTON_PAGE}

Add 20 Elements
    FOR    ${i}    IN RANGE    20
    Click Element                   ${ADD_ELEMENT_BUTTON}
    END

Remove Elements

    FOR    ${i}    IN RANGE    20
    Click Element                   ${REMOVE_ELEMENT_BUTTON}
    END

Validate that element was added

    Wait Until Element Is Visible    xpath=//*[@id="elements"]/button

Validate each element was deleted

    Element Should Not Be Visible    xpath=//div[@class='elemento']

