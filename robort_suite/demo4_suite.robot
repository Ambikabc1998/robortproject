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

