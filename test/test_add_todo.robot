*** Settings ***
Resource    ../init.robot

Suite Setup    Suite Setup 
Test Setup    Test Setup
Test Teardown    Close Context
Suite Teardown    Close Browser
Task Timeout    ${TEST_TIMEOUT}

*** Test Cases ***
Add One ToDos And Check Items
    ${item_name} =    Create Fake Item Name
    Input Text Into ToDo    ${item_name}
    Verify Element Text Should Display Correctly    ${Common_TODO_Count_Test}    1 item left!

*** Keywords ***
Suite Setup 
    New Browser    browser=${BROWSER}    headless=${HEADLESS}

Test Setup
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page    https://todomvc.com/examples/react/dist/
    Wait For Load State    domcontentloaded    20s
