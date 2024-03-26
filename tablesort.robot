*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://the-internet.herokuapp.com/tables

*** Test Cases ***
sorting
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3

    Click Element    xpath://table[@id='table1']/thead/tr/th[1]
    Sleep    3



