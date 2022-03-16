*** Settings ***
Library    Collections
*** Variables ***
${MY_NAME}      AmbikaChinmalli
@{COLORS}       red     green       pink

*** Test Cases ***
TC1
    Set Local Variable    ${name}   AmbikaChinmalli
    Log To Console    ${name}
    
    ${val}      Set Variable    Ambika
    Log To Console    ${name}

    Log To Console    ${MY_NAME}

TC2
    Log To Console    ${MY_NAME}

TC3
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]
    ${count}    Get Length    ${COLORS}
    Log To Console    ${count}

TC4
    @{fruits}   Create List     apple       banana      mango
    Log To Console    ${fruits}
    Log To Console    ${fruits}[2]
    Remove Values From List     ${fruits}       mango
    Log To Console    ${fruits}
    Append To List    ${fruits}     orange
    Log To Console    ${fruits}
    Insert Into List    ${fruits}    2    jackfruit
    Log To Console    ${fruits}




