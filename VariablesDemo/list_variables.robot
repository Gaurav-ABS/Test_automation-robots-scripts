*** Settings ***


*** Variables ***
# GLobal variable visible to all tests
# no need to use 'Set Variable'
@{MY_LIST_VARIABLE} =       Hello  Value 1     Value 2

*** Test Cases ***
List Variable demonstration
    log     ${MY_LIST_VARIABLE}[0]
    log     ${MY_LIST_VARIABLE}[1]
    log     ${MY_LIST_VARIABLE}[2]


List Variable demonstration 2
    # variable visible to this test only
    # need to use 'Set Variable'
    @{my_list_variable_2} =    Set Variable     Hi  ABS    Gaurav
    log     ${my_list_variable_2}[0]
    log     ${my_list_variable_2}[1]
    log     ${my_list_variable_2}[2]

List Variable demonstration 3
    @{my_list_variable_3} =    create list     Hi  Super    Man
    # create list is the recommended way to create a list variable
      # although set variable works but it is not recommended
    log     ${my_list_variable_3}[0]
    log     ${my_list_variable_3}[1]
    log     ${my_list_variable_3}[2]