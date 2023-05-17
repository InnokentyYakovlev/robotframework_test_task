*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser And Maximaze Window
    [Arguments]    ${URL}    ${Browser}
    open browser    ${URL}    ${Browser}
    maximize browser window
