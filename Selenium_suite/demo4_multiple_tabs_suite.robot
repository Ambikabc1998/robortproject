*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   url=https://www.db4free.net/
    Click Link    partial link=phpMyAdmin
    Switch Window   phpMyAdmin
    Input Text    id=input_username    admin
    Input Text    id=input_password    admin123
    Click Element    id=input_go
    Element Should Contain    //div[contains(text(), 'Access')]    Access denied for user