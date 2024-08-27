*** Settings ***
Resource    ../../init.robot

*** Keywords ***
#---------- Element ----------

#---------- Keywords ----------
Hide Page Element With Xpath
    [Documentation]    Click element when element is enabled
    [Arguments]    ${element}
    Evaluate JavaScript    ${NONE}    (elem) => document.evaluate("${element}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.style.display = 'none';

Input Text Into ToDo
    [Arguments]    ${text}
    Fill Text   .new-todo    ${text}
    Press Keys    .new-todo    Enter

#---------- Verify ----------
Verify Element Text Should Display Correctly
    [Documentation]    Verify element text should display expect
    [Arguments]    ${element}    ${text}
    Get Text    ${element}    ==    ${text}