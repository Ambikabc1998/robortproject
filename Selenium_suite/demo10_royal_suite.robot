*** Comments ***
1. Navigate https://www.royalcaribbean.com/account/
2. Click on create an account
3. Enter first name
4. Enter last name
5. Month as April
6. Day as 4
7. year as 1992
8.choose-country-India
9.Security Question - which elementary school do yo go to?
10.Answer
11.Click checkbox


*** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up valadiation
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    0.5s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element    link=Create an account
    Input Text    xpath=//input[@data-placeholder='First name/Given name']    Ambika
    Input Text    xpath=//input[@data-placeholder='Last name/Surname']    Chinmalli

    Click Element    xpath=//span[text()='Month']
    Click Element    xpath=//span[contains(text(),'September')]

    Click Element    xpath=//span[text()='Day']
    Click Element    xpath=//span[contains(text(),'26')]

    Input Text    xpath=//input[@data-placeholder='Year']    1992

    Click Element    xpath=//span[text()='Country/Region of residence']
    Click Element    xpath=(//span[contains(text(),'India')])[2]

    Input Text    xpath=//input[@data-placeholder='Email address']    lnttechnology@gmail.com

    Click Element    xpath=//span[text()='Select one security question']
    Click Element    xpath=//span[contains(text(),'What elementary school did you go to?')]

    Input Text    xpath=//input[@data-placeholder='Answer']    SVPM

    Click Element    xpath=//span[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin']
    Click Element    xpath=//button[normalize-space()='Done']

    Click Element    xpath=//span[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin']
    Click Element    xpath=//button[normalize-space()='Done']

    #Validate
    Element Text Should Be    xpath=//span[normalize-space()='Password is required.']    Password is required.

    Sleep    5s