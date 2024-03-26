*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
handlealerts
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Click Element    //*[@id="HTML9"]/div[1]/button[2]
    Sleep    3

    #Handle Alert    accept
    #Sleep    3

    #Handle Alert    dismiss
    #Sleep    3

    #Handle Alert    leave
    #Sleep    3

    #Alert Should Not Be Present    Press a button!
    #Sleep    3

    Alert Should Be Present    Press a button!
    Sleep    3