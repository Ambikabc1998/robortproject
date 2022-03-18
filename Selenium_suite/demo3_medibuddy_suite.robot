*** Settings ***
Library     SeleniumLibrary
Library     AutoRecorder

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   url=https://www.medibuddy.in/
    Click Element    xpath=//button[text()='Not Now']
    Click Element    link=For Employer
    Switch Window       MediBuddy LaunchPad
    Input Text    id=getInTouchName    Ambika
    Input Text    id=getInTouchEmail    ABC@gmail.com
    Input Text    id=getInTouchMobile    12345
    Input Text    id=getInTouchDesignation    Employee
    Input Text    id=getInTouchEmpCount    10
    Click Element    xpath=//button[text()='Get in Touch']
    Element Text Should Be    //div[contains(text(), 'digits')]    Mobile Number should be 10 digits
    [Teardown]  Close Window