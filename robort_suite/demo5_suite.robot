*** Settings ***
Library    OperatingSystem

*** Variables ***
&{PERSONAL_INFO}        firstname=Ambika        lastname=Chinmalli

*** Test Cases ***
TC1
    Log To Console    &{PERSONAL_INFO}
    Log To Console    &{PERSONAL_INFO}[firstname]
    Log To Console    &{PERSONAL_INFO}[lastname]

TC2
    &{emp_dic}      Create Directory        empname=Ambika      companyname=ltts
    Log To Console    &{emp_dic}
    Log To Console    &{emp_dic}[empname]
    Log To Console    &{emp_dic}[companyname]
