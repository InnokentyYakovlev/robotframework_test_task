*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Fill Form
    [Arguments]    ${A}
    input text    id:dataEmail    ${A}[email]
    input text    id:dataName    ${A}[name]
    select from list by label    id:dataGender    ${A}[dropdown_value]
    select checkbox    ${A}[cb_option_1]
    select checkbox    ${A}[cb_option_2]
    select radio button    radioGroup    ${A}[radio_id]
    click button    id:dataSend
    click button    xpath:/html/body/div[3]/div/div/div[2]/button

Check Table Data
    [Arguments]    ${A}
    table column should contain    id:dataTable    1    ${A}[email]
    table column should contain    id:dataTable    2    ${A}[name]
    table column should contain    id:dataTable    3    ${A}[dropdown_value]
    table column should contain    id:dataTable    4    ${A}[cb_options]
    table column should contain    id:dataTable    5    ${A}[radio_id]

#    FOR    ?    IN    ?
#        table column should contain    id:dataTable    ?    ${A}[?]
#    END


