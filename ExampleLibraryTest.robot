*** Settings ***
Library     ExampleLibrary

*** Test Cases ***
Hi
    ${STR}=     Hello World
    Should Be Equal     ${STR}      hello world
    ${STR}=     Hello   Bobby
    Should Be Equal     ${STR}      Hello, Bobby

Counting
    ${COUNTER}=         Get Counter
    Should Be Equal As Integers     ${Counter}  0
    ${COUNTER}=         Count
    Should Be Equal As Integers     ${Counter}  1

    :FOR    ${INDEX}   IN    RANGE     1   3
    \    ${COUNTER}=     Count

    Should Be Equal As Integers     ${Counter}  4

    Run Keyword If      '${INDEX}' == '3'   Count
    ${COUNTER}=         Get Counter
    Should Be Equal As Integers     ${COUNTER}     5

