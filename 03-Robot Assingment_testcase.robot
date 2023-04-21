*** Settings ***
Resource         ${CURDIR}/03-Robot Assingment _keyword.robot



*** Test Cases ***
TC-003
    Open Browser test
    Click Product
    Check price of Product