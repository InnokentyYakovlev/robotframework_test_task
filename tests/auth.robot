*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common.resource
Resource    ../resources/auth.resource
Variables   ../data/common-data.py
Variables   ../data/auth-data.py

*** Test Cases ***
Auth With Valid Data
    [Setup]    Open Browser And Maximaze Window   ${url}    ${browser}
    Authorization   ${valid_auth_data}
    User is auth
    [Teardown]    close browser

Auth With Invalid Data
    [Setup]    Open Browser And Maximaze Window   ${url}    ${browser}
    [Teardown]    close browser
    1 Invalid Email and Valid Password    ${invalid_auth_data1}
    2 Valid Email and Invalid Password    ${invalid_auth_data2}
    3 Invalid Email and Invalid Password    ${invalid_auth_data3}
    4 Valid Email and No Password    ${invalid_auth_data4}
    7 Valid Email In Uppercase and Valid Password    ${invalid_auth_data7}
    8 Valid Email In Mixed Case and Valid Password    ${invalid_auth_data8}
    9 Valid Email and Valid Password In Uppercase    ${invalid_auth_data9}
    10 Valid Email and Valid Password In Mixed Case    ${invalid_auth_data10}
