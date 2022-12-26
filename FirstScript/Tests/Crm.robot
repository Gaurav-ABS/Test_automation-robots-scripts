*** Settings ***
Documentation    This is some basic info about the whole suite
Library          SeleniumLibrary

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]             This is some basic info about the test
    [Tags]                      1006    Smoke   Contacts
    #Intialize Selenium
    set selenium speed          .2s
    set selenium timeout        10s

    #Open the browser
    log                         Starting the test case
    open browser                https://automationplayground.com/crm/   edge

    #resize crowser window for recording

    set window size             width=1935  height=1098

    wait until page contains    Customers Are Priority One

    click link                  Sign In
    wait until page contains     Login

    input text                  id=email-id     admin@robotframeowkrtutorial.com
    input text                  id=password     anypassword
    click button                id=submit-id
    wait until page contains    Our Happy Customers

    click link                  id=new-customer
    wait until page contains    Add Customer

    input text                  id=EmailAddress     gauravabs@gmail.com
    input text                  id=FirstName        Gaurav
    input text                  id=LastName         ABS
    input text                  id=City             Barcelona
    select from list by value   id=StateOrRegion    TX
    select radio button         gender              female
    select checkbox             name=promos-name
    click button                Submit
    wait until page contains    Success! New customer added.

    sleep                       3s
    close browser


*** Keywords ***
