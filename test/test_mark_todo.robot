*** Settings ***
Resource    ../init.robot

Suite Setup    Suite Setup 
Test Setup    Test Setup
Test Teardown    Close Context
Suite Teardown    Close Browser
Task Timeout    30s

*** Test Cases ***
Mark ToDo Item
    Click    ${Common_TODO_Mark_Specify_Toggle.format(toggle_name='Todo-1')}
    Verify Element Text Should Display Correctly    .todo-count    0 items left!

*** Keywords ***
Suite Setup 
    New Browser    browser=${BROWSER}    headless=${HEADLESS}

Test Setup
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page    https://todomvc.com/examples/react/dist/
    Wait For Load State    domcontentloaded    20s
    Input Text Into ToDo    Todo-1
