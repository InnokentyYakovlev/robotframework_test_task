*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Authorization
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton

User is auth
    element should be visible    id:inputsPage

Invalid Email and Valid Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

Valid Email and Invalid Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

Invalid Email and Invalid Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

Valid Email and No Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

#No Email and Valid Password
#    [Arguments]    ${A}
#    input text    id:loginEmail    ${A}[email]
#    input text    id:loginPassword    ${A}[password]
#    click button    id:authButton
#    element should not be visible    id:inputsPage
#    element should be visible    invalidEmailPassword
#    reload page

#No Email and No Password
#    [Arguments]    ${A}
#    input text    id:loginEmail    ${A}[email]
#    input text    id:loginPassword    ${A}[password]
#    click button    id:authButton
#    element should not be visible    id:inputsPage
#    element should be visible    invalidEmailPassword
#    reload page

Valid Email In Uppercase and Valid Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

Valid Email In Mixed Case and Valid Password
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

Valid Email and Valid Password In Uppercase
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

Valid Email and Valid Password In Mixed Case
    [Arguments]    ${A}
    input text    id:loginEmail    ${A}[email]
    input text    id:loginPassword    ${A}[password]
    click button    id:authButton
    element should not be visible    id:inputsPage
    element should be visible    invalidEmailPassword
    reload page

Auth With Positive Emails
    [Arguments]    ${A}    ${Password}
    FOR    ${email}    IN    @{A}
        input text    id:loginEmail    ${email}
        input text    id:loginPassword    ${Password}[password]
        click button    id:authButton
        element should be visible    invalidEmailPassword
    END

Auth With Negative Emails
    [Arguments]    ${A}    ${Password}
    FOR    ${email}    IN    @{A}
        input text    id:loginEmail    ${email}
        input text    id:loginPassword    ${Password}[password]
        click button    id:authButton
        element should be visible    emailFormatError
    END

# Попытка сделать Auth With Invalid Data кейворды через цикл
#Test1
#    [Arguments]    ${A}
#    FOR    ${item}    IN    @{A}
#        ${dict} =  create dictionary  key1  val1  key2  val2
#        @{item} =  create list  ${dict}
#        input text    id:loginEmail    ${dict}[email]
#        input text    id:loginPassword    ${dict}[password]
#        click button    id:authButton
#        element should be visible    invalidEmailPassword
#    END