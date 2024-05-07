*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locators.py      ## we used Variable because of locators in python file thus we used variable

*** Keywords ***

Open my browser
        [Arguments]    ${url}       ${browser}
        open browser    ${url}       ${browser}
        maximize browser window

Enter Username
        [Arguments]    ${username}
        input text    ${xpath_username}      ${username}

Enter Password
        [Arguments]    ${password}
        input text    ${xpath_password}      ${password}

Click On Login Button
        click element    ${xpath_btn_login}

Verify Sucessfull Login
        page should contain    	Login Successfully

Click On Sigh Off
    click element    ${xpath_sign_off}