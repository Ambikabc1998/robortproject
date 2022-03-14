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
    #create directory
    Create Directory   E:${/}LTTS${/}robort${/}temp${/}My_Folder
    #create file
    Create File    E:${/}LTTS${/}robort${/}temp${/}My_Folder${/}notes.txt     Ambika Chinmalli
    Sleep    5s
    #copy file
    Copy File    E:${/}LTTS${/}robort${/}temp${/}My_Folder${/}notes.txt    E:${/}LTTS${/}robort${/}temp${/}copied.txt
    #remove file
    Remove File    E:${/}LTTS${/}robort${/}temp${/}My_Folder${/}notes.txt
    #remove directory
    Remove Directory    E:${/}LTTS${/}robort${/}temp${/}My_Folder