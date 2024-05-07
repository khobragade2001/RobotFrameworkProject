*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locators.py

*** Keywords ***
Open my browser
        [Arguments]    ${url}       ${browser}
        open browser    ${url}       ${browser}
        maximize browser window

Click Register Link
        click element    ${xpath_click_register_button}

Enter First Name
        [Arguments]    ${first_name}
        input text    ${xpath_first_name}       ${first_name}

Enter Last Name
        [Arguments]    ${last_name}
        input text    ${xpath_last_name}        ${last_name}

Enter Phone Number
        [Arguments]    ${phone}
        input text    ${xpath_phone_number}     ${phone}

Enter Email Add
        [Arguments]    ${email}
        input text    ${xpath_email}        ${email}

Enter Address
        [Arguments]    ${address}
        input text    ${xpath_address}      ${address}

Enter City
        [Arguments]    ${city}
        input text      ${xpath_city}       ${city}

Enter State
        [Arguments]    ${state}
        input text      ${xpath_state}      ${state}

Enter Postal Code
        [Arguments]     ${postal_code}
        input text    ${xpath_postal_code}      ${postal_code}

Enter DD Counrty
        [Arguments]    ${counrty}
        select from list by label       ${xpath_dd_country}    ${counrty}

Enter Username Register
        [Arguments]    ${username_regi}
        input text    ${xpath_username_register}        ${username_regi}

Enter Password Register
        [Arguments]    ${password_register}
        input text      ${xpath_password_register}      ${password_register}

Enter Confirm Password
        [Arguments]    ${confirm_pass}
        input text      ${xpath_confirm_password}       ${confirm_pass}

Click On Submit Button
        click element    ${xpath_submit_button}

Verify Successfull Registering
        page should contain     Thank you for registering.

Close My Browser
        close all browsers
