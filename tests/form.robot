*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    RPA.JSON
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

#Add 10 Rows With Valid Data
#    [Setup]    Open Browser And Maximaze Window   ${url}    ${browser}
#    [Teardown]    close browser
#    Authorization   ${valid_auth_data}
