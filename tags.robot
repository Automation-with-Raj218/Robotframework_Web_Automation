*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
tags testing

    [Tags]    prashanth
    Log To Console    this is pre login test
    Log To Console    this is login test


    [Tags]    anil
    Log To Console    this is pre logout test
    Log To Console    this is logout test

    [Tags]    rajendar
    Log To Console    this is pre signup test
    Log To Console    this is signup test

