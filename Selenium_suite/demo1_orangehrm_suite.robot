*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Variables ***

*** Test Cases ***
TC1
    Append To Environment Variable   Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=welcome
    Sleep    3s
    Click Element    link=Logout

TC2
    Append To Environment Variable   Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Maximize Browser Window
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Click Element    id=menu_pim_viewMyDetails
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    Ambika
    Input Text    id=emgcontacts_relationship    brother
    Input Text    id=emgcontacts_homePhone    123456789
    Click Element    id=btnSaveEContact
    Table Should Contain    id=emgcontact_list    Ambika
    Table Should Contain    id=emgcontact_list    123456789