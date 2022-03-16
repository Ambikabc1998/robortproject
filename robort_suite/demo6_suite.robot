*** Comments ***
1.  Create a dictionary for keeping students record
2.  To maintain one student record
3.  studentId=1001
4.  studentName=John
5.  Percentage=72.2
6.  mailId=john@gmail.com


*** Variables ***
&{STUDENTS_REC}      studentid=1001     studentname=john      percentage=72.2       mailid=john@gmail.com

*** Test Cases ***
TC1
    Log To Console    ${STUDENTS_REC}
    Log To Console    ${STUDENTS_REC}[studentid]
    Log To Console    ${STUDENTS_REC}[studentname]
    Log To Console    ${STUDENTS_REC}[percentage]
    Log To Console    ${STUDENTS_REC}[mailid]


TC2
    &{student_rec}      Create Dictionary   studentid=1001     studentname=john      percentage=72.2       mailid=john@gmail.com
    Log To Console    ${student_rec}
    Log To Console    ${student_rec}[studentid]
