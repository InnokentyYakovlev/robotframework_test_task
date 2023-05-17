*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    Strings

*** Keywords ***
Fill Form
    [Arguments]    ${DICT}
    input text    id:dataEmail    ${DICT}[email]
    input text    id:dataName    ${DICT}[name]
    select from list by label    id:dataGender    ${DICT}[dropdown_value]
    select checkbox    ${DICT}[cb_option_1]
    select checkbox    ${DICT}[cb_option_2]
    select radio button    radioGroup    ${DICT}[radio_id]
    click button    id:dataSend
    click button    xpath:/html/body/div[3]/div/div/div[2]/button

Check Table Data
    [Arguments]    ${DICT}
    table column should contain    id:dataTable    1    ${DICT}[email]
    table column should contain    id:dataTable    2    ${DICT}[name]
    table column should contain    id:dataTable    3    ${DICT}[dropdown_value]
    table column should contain    id:dataTable    4    ${DICT}[cb_options]
    table column should contain    id:dataTable    5    ${DICT}[radio_id]

#    FOR    ?    IN    ?
#        table column should contain    id:dataTable    ?    ${A}[?]
#    END


