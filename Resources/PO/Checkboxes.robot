*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${CHECKBOX_1} =                     xpath=//*[@id="checkboxes"]/input[1]
${CHECKBOX_2} =                     xpath=//*[@id="checkboxes"]/input[2]

*** Keywords ***
Open Checkboxes Page
    SeleniumLibrary.Click Link      //*[@id="content"]/ul/li[6]/a
Select the checkbox “Checkbox 1”.

    Select Checkbox                 ${CHECKBOX_1}

Validate that the checkbox was checked.
    Checkbox Should Be Selected     ${CHECKBOX_1}

Select the checkbox “Checkbox 2”.
    Select Checkbox                 ${CHECKBOX_2}

Validate that the checkboxes were checked.

    Checkbox Should Be Selected    ${CHECKBOX_1}
    Checkbox Should Be Selected    ${CHECKBOX_2}


