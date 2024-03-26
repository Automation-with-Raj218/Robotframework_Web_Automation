*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    

# user defined keywords without arguments

*** Test Cases ***
login test
    Launching Browser
    Input Text    username    Admin
    Input Text    password    admin123
    Click Element    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    5

*** Keywords ***
Launching Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3

# user defined keywords  with arguments

*** Test Cases ***
logintest

    Launching Browser    ${url}    ${browser}
    Input Text    username    Admin
    Input Text    password    admin123
    Click Element    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    5

*** Keywords ***
Launching Browser
    [Arguments]        ${weburl}        ${webbrowser}
    Open Browser    ${weburl}    ${webbrowser}
    Maximize Browser Window
    Sleep    3
    
 # user defined keywords with arguments and return value
    
*** Test Cases ***
logintest
    
    ${pagetitle}=    Launching Browser    ${url}    ${browser}
    Log To Console    ${pagetitle}
    Sleep    5
    Input Text    username    Admin
    Input Text    password    admin123
    Click Element    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    3  
    
*** Keywords ***
    
Launching Browser
    [Arguments]        ${weburl}        ${webbrowser}
    Open Browser    ${weburl}    ${webbrowser}
    Maximize Browser Window
    
    ${title}=    Get Title
    [Return]    ${title}    
    