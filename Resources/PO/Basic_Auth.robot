*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${URL_AUTH} =                https://admin:admin@the-internet.herokuapp.com/basic_auth
${URL_AUTH_INVALID} =        https://admin1:admin1@the-internet.herokuapp.com/basic_auth
${LABEL_SUCCESSFUL} =        Congratulations! You must have the proper credentials.
${LABEL_UNSUCCESSFUL} =        Congratulations! You must have the proper credentials.

*** Keywords ***
Open Basic Auth Page
    SeleniumLibrary.Click Link      //*[@id="content"]/ul/li[3]/a

Login with valid credentials (user: admin, password: admin)
    SeleniumLibrary.Go To       ${URL_AUTH}

Validate that the authentication was successful.
    SeleniumLibrary.Page Should Contain     ${LABEL_SUCCESSFUL}

Login with not valid credentials (user: admin1, password: admin1)
    SeleniumLibrary.Go To       ${URL_AUTH_INVALID}

Validate that the authentication was unsuccessful.
    Page Should Not Contain     ${LABEL_UNSUCCESSFUL}