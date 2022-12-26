*** Settings ***


*** Variables ***
${MY_GLOBAL_VARIABLE} =     secret message

*** Test Cases ***
Test Case 1
    Demonstrates the variable passing to keyword

Test Case 2
    Demonstrates inputing variable value from test case into keyword    Secret Message 2

*** Keywords ***
Demonstrates the variable passing to keyword
    log    ${MY_GLOBAL_VARIABLE}

Demonstrates inputing variable value from test case into keyword
    [Arguments]     ${my_variable_value}
    log    ${my_variable_value}