*** Settings ***
Library             SeleniumLibrary
Library             RequestsLibrary

*** Variables ***
${IMAGE_1} =        //*[@id="content"]/div/img[1]
${IMAGE_2} =        //*[@id="content"]/div/img[2]
${IMAGE_3} =        //*[@id="content"]/div/img[3]
*** Keywords ***

Open Broken Image Page
    SeleniumLibrary.Click Link  //*[@id="content"]/ul/li[4]/a

Validate that the number images broken are 2

    ${broken_images} =    Get Element Attribute     ${IMAGE_1}                        src
    ${loglevel}=    Set Log Level    NONE
    ${background}=  GET    ${broken_images}    expected_status=404
    Set Log Level    ${loglevel}

    ${broken_images2} =    Get Element Attribute    ${IMAGE_2}                        src
    ${loglevel2}=    Set Log Level    NONE
    ${background2}=  GET    ${broken_images2}    expected_status=404
    Set Log Level    ${loglevel}


Validate that the number images with a link available is 1
    ${broken_images2} =    Get Element Attribute     ${IMAGE_3}                         src
    ${loglevel2}=    Set Log Level    NONE
    ${background2}=  GET    ${broken_images2}    expected_status=200
    Set Log Level    ${loglevel}



