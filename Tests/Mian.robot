*** Settings ***
Documentation           This is a final excercise in the Robot Framework
Resource                ../Resources/Common.robot
Resource                ../Resources/PO/Add_Remove_Elements.robot
Resource                ../Resources/PO/Basic_Auth.robot
Resource                ../Resources/PO/Broken_Images.robot
Resource                ../Resources/PO/Checkboxes.robot
Resource                ../Resources/PO/Context_Menu.robot
Test Setup              Begin Web Test
Test Teardown           End Web Test
*** Variables ***


*** Test Cases ***

Add/Remove Elements
        [Documentation]    This a test to add 20 elements, validate and remove
        [Tags]    Test-1
        Open Add/Remove Elements Page
        Add 20 Elements
        Validate That Element Was Added
        Remove Elements
        Validate Each Element Was Deleted

Broken Images
        [Documentation]    This a test to verify
        [Tags]    Test-2
        Open Broken Image Page
        Validate that the number images broken are 2
        Validate that the number images with a link available is 1

Basic Auth
        [Documentation]    This a test to verify
        [Tags]    Test-3
        Open Basic Auth Page
        Login with valid credentials (user: admin, password: admin)
        Validate that the authentication was successful.
        Login with not valid credentials (user: admin1, password: admin1)
        Validate that the authentication was unsuccessful.

Checkboxes
        [Documentation]    This a test to verify
        [Tags]    Test-4
        Open Checkboxes Page
        Select the checkbox “Checkbox 1”.
        Validate that the checkbox was checked.
        Select the checkbox “Checkbox 2”.
        Validate that the checkboxes were checked.

Context Menu
        [Documentation]    This a test to verify
        [Tags]    Test-5
         Open Page
         Right Click on the box
         Validate the text on the alert is equals to “You selected a context menu”
         Click on the accept button.
         Validate that alert was closed.

*** Keywords ***





