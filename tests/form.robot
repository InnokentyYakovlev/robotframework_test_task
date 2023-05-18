*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common.resource
Resource    ../resources/form.resource
Resource    ../resources/auth.resource
Variables   ../data/common-data.py
Variables   ../data/auth-data.py
Variables   ../data/form-data.py

*** Test Cases ***
Add Row With Valid Data
    [Setup]    Open Browser And Maximaze Window   ${url}    ${browser}
    Authorization   ${valid_auth_data}
    Fill Form    ${fill_form_data_list_valid}
    Check Table Data    ${check_form_data_list_valid}
    [Teardown]    close browser

Check Email Validation For From
    [Setup]    Open Browser And Maximaze Window   ${url}    ${browser}
    Authorization   ${valid_auth_data}
    Fill Form With Positive Emails    ${fill_form_data_list_valid}    ${positive_email_data}
    Fill Form With Nagative Emails    ${fill_form_data_list_valid}    ${negative_email_data}


