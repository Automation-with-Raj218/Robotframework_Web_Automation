*** Settings ***
Library    SeleniumLibrary
Resource    ../pomkeywords/loginkeywords.robot

*** Variables ***
${browser}    chrome
${weburl}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${userN}    Admin
${pwD}    admin123

*** Test Cases ***
login
    open my browser    ${weburl}    ${browser}
    Sleep    3
    enter username    ${userN}
    Sleep    3
    enter password    ${pwD}
    Sleep    3
    click login
    Sleep    3
    verify successful login
    Sleep    3
    close my browser
