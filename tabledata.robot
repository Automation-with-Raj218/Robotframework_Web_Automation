*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
table data testing
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
    Scroll Element Into View    //table[@name='BookTable']
    Sleep    2
    
    # rows
    ${rows}    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    Log To Console    ${rows}
    Sleep    2
    
    # columns
    ${columns}    Get Element Count    xpath://table[@name='BookTable']/tbody/tr/th
    Log To Console    ${columns}
    Sleep    2
    
    # validations
    Table Row Should Contain    xpath://table[@name='BookTable']    4    Animesh
    Sleep    2
    
    Table Column Should Contain    xpath://table[@name='BookTable']    3    JAVA
    Sleep    2
    
    Table Cell Should Contain    xpath://table[@name='BookTable']    6    2    Amod
    Sleep    2 
    
    Table Should Contain    xpath://table[@name='BookTable']    2000
    Sleep    2 
    
    ${data}    Get Text    xpath://table[@name='BookTable']/tbody/tr/td[2]
    Log To Console    ${data}