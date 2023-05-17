*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Authorization
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton

User is auth
    element should be visible    id:inputsPage

1 Invalid Email and Valid Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

2 Valid Email and Invalid Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

3 Invalid Email and Invalid Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

4 Valid Email and No Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

# 5 No Email and Valid Password
#    [Arguments]    ${A}
#    input text    id:loginEmail    ${A}[email]
#    input text    id:loginPassword    ${A}[password]
#    click button    id:authButton
#    element should not be visible    id:inputsPage
#    element should be visible    invalidEmailPassword
#    reload page

# 6 No Email and No Password
#    [Arguments]    ${A}
#    input text    id:loginEmail    ${A}[email]
#    input text    id:loginPassword    ${A}[password]
#    click button    id:authButton
#    element should not be visible    id:inputsPage
#    element should be visible    invalidEmailPassword
#    reload page

7 Valid Email In Uppercase and Valid Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

8 Valid Email In Mixed Case and Valid Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

9 Valid Email and Valid Password In Uppercase
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

10 Valid Email and Valid Password In Mixed Case
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page
