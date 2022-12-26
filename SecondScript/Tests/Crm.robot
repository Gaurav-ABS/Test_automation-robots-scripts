*** Settings ***
Documentation    This is some basic info about the whole suite
Library          SeleniumLibrary

Resource         ../Resources/Common.robot
Resource         ../Resources/CrmApp.robot


Test Setup       Begin Web test     ${BROWSER}
    #Open Browser to blank

Test Teardown    End Web test
    #Close All Browsers

*** Variables ***
${BROWSER} =                edge
${URL} =                    https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =      admin@robotframeowkrtutorial.com
${VALID_LOGIN_PASSWORD} =   anypassword

*** Test Cases ***
Should be able to add new customer
    [Documentation]             This is some basic info about the test
    [Tags]                      1006    Smoke   Contacts


    CrmApp.Go to "Home" Page

    CrmApp.Login With Valid Credentials         ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

    CrmApp.Add New Customer

    CrmApp.Log Out

