*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/LoginKeywords.robot

*** Variables ***
${url}      https://demo.guru99.com/test/newtours/index.php
${browser}      chrome
${username}     tutorial
${password}     tutorial

*** Test Cases ***
Login Mercury side
    Open my browser    ${url}   ${browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click On Login Button
    Verify Sucessfull Login
    Click On Sigh Off

