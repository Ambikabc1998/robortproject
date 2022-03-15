*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    url=https://www.goto.com/meeting/      browser=chrome   executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window

    Click Element    id=truste-consent-button
    Set Selenium Implicit Wait    30s
    Click Element    link=Get a Demo
    Sleep    5s
    Input Text    xpath=//input[@data-sc-field-name='firstName']    Ambika
    Input Text    xpath=//input[@data-sc-field-name='lastName']     sat
    Input Text    xpath=//input[@data-sc-field-name='email']    John@gmail.com
    Input Text    xpath=//input[@data-sc-field-name="phone"]    12345
    Select From List By Value    xpath=//select[@data-sc-field-name="employees"]    10 - 99
    Click Button    xpath=//input[@type='submit']
    [Teardown]      Close Browser