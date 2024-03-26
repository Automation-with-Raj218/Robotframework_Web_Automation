*** Settings ***
Library    SeleniumLibrary
Variables    ../facebookelements/signuplocators.py


*** Variables ***
${siteurl}        www.facebook.com
${browser}        chrome

*** Keywords ***
SignUp
    Open Browser        ${siteurl}    ${browser}
    Sleep    3
    Input Text    ${sign_FN}    varuntej
    Sleep    3
    Input Text    ${sign_Ln}    darala
    Sleep    3
    Input Text    ${sign_MOBILE}    9705231804
    Sleep    3
    Input Text    ${sign_PASSWORD}   varun.2775
    Sleep    3
    Select From List By Label    ${sign_DOB_DAY}       22
    Sleep    3
    Select From List By Index    ${sign_DOB_MONTH}    9
    Sleep    3
    Select From List By Label    ${sign_DOB_YEAR}   1997
    Sleep    3
    Click Element    xpath://input[@value="2"]
    Sleep    3
    Click Button    ${sign_CLICKBTN}
    Sleep    20
    Close Browser
