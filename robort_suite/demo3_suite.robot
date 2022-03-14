*** Settings ***
Library    OperatingSystem
*** Test Cases ***
TC1
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEMPDIR}
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}

TC2
    Create Directory   E:${/}LTTS${/}robort${/}temp${/}My_Folder
    Create File    E:${/}LTTS${/}robort${/}temp${/}My_Folder${/}notes.txt     Ambika Chinmalli
    Sleep    10s
    Copy File    E:${/}LTTS${/}robort${/}temp${/}My_Folder${/}notes.txt    E:${/}LTTS${/}robort${/}temp${/}}copied.txt
    Remove File    E:${/}LTTS${/}robort${/}temp${/}My_Folder${/}notes.txt
    Remove Directory    E:${/}LTTS${/}robort${/}temp${/}My_Folder