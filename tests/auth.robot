*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common.resource
Resource    ../resources/auth.resource
Variables   ../data/common-data.py
Variables   ../data/auth-data.py
Variables   ../data/emails.py

*** Test Cases ***
Auth With Valid Data
    [Setup]    Open Browser And Maximaze Window   ${url}    ${browser}
    Authorization   ${valid_auth_data}
    User is auth
    [Teardown]    close browser

Auth With Invalid Data
    [Setup]    Open Browser And Maximaze Window   ${url}    ${browser}
    [Teardown]    close browser
    Invalid Email and Valid Password    ${invalid_auth_data1}
    Valid Email and Invalid Password    ${invalid_auth_data2}
    Invalid Email and Invalid Password    ${invalid_auth_data3}
    Valid Email and No Password    ${invalid_auth_data4}
    Valid Email In Uppercase and Valid Password    ${invalid_auth_data7}
    Valid Email In Mixed Case and Valid Password    ${invalid_auth_data8}
    Valid Email and Valid Password In Uppercase    ${invalid_auth_data9}
    Valid Email and Valid Password In Mixed Case    ${invalid_auth_data10}

Positive Auth Email Validation Check
    [Setup]    Open Browser And Maximaze Window   ${url}    ${browser}
    [Teardown]    close browser
    Auth With Positive Emails    ${positive_email_data}    ${valid_auth_data}

Negative Auth Email Validation Check
    [Setup]    Open Browser And Maximaze Window   ${url}    ${browser}
    [Teardown]    close browser
    Auth With Negative Emails    ${negative_email_data}    ${valid_auth_data}