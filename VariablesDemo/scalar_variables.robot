*** Settings ***

*** Variables ***

${MY_VARIABLE} =    the log will log this value

*** Test Cases ***
Set variable in a test case
    [Tags]  Current
    ${my_new_variable} =    set variable    my new variable
    log     ${my_new_variable}
Variable demonstration
    log     ${MY_VARIABLE}

Variable demonstration 2
    log     ${MY_VARIABLE}}

*** Keywords ***
