*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
speedtest
    #speed

    #${speed}    Get Selenium Speed
    #Log To Console    ${speed}
    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    #Set Selenium Speed    3
    
    #${speed}    Get Selenium Speed
    #Log To Console    ${speed}
    
    #implicit time
    
    #${wait}    Get Selenium Implicit Wait
    #Log To Console    ${wait}
    
    #Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a

    #Set Selenium Implicit Wait    10

    #Select Radio Button    Gender    F
    
    #${wait}    Get Selenium Implicit Wait
    #Log To Console    ${wait}
    
    #time out
    ${timeout}    Get Selenium Timeout
    Log To Console    ${timeout}

    Set Selenium Timeout    10
    
    ${timeout}    Get Selenium Timeout
    Log To Console    ${timeout}

