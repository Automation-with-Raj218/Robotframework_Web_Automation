
#tabbed windows

*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
tabbedwindows
    Open Browser    https://demo.automationtesting.in/Windows.html    chrome
    Maximize Browser Window

    Click Link    //*[@id="Tabbed"]/a
    Sleep    3

    Switch Window    title=Selenium
    Click Element    xpath://a[.='Projects']
    Sleep    3

    
