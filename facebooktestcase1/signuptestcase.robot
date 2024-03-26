*** Settings ***
Library    SeleniumLibrary
Resource    ../facebookkeywords1/signupkeywords.robot

*** Variables ***
${browser}    chrome
${siteurl}    https://www.facebook.com/signup

*** Test Cases ***
FB
    SignUp