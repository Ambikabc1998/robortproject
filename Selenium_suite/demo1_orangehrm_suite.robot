*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Variables ***

*** Test Cases ***
TC1
    Append To Environment Variable   Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Maximize Browser Window
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=welcome
    Sleep    3s
    Click Element    link=Logout
