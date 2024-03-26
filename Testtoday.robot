*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testt
    @{numbers}    Create List    1    2    3    4    5    6
    FOR    ${i}    IN    @{numbers}
        Log To Console    ${i}
        Exit For Loop If    ${i}==4
        END
