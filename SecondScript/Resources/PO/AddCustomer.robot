*** Settings ***
Library     Selenium
Library  SeleniumLibrary

*** Variables ***
${ADD_CUSTOMER_PAGE_LOADED_LABEL} =     Add Customer

*** Keywords ***
Verify AddCustomer Page Loaded
    wait until page contains    ${ADD_CUSTOMER_PAGE_LOADED_LABEL}

Fill Customer Fields
    input text                  id=EmailAddress     gauravabs@gmail.com
    input text                  id=FirstName        Gaurav
    input text                  id=LastName         ABS
    input text                  id=City             Barcelona
    select from list by value   id=StateOrRegion    TX
    select radio button         gender              female
    #scroll element into view            name=promos-name
    wait until element is visible       name=promos-name
    select checkbox                     name=promos-name

Click Submit Button

    wait until element is visible    //button[@type="submit"]
    click button                     //button[@type="submit"]


Verify Customer Added Succesfully
    wait until page contains    Success! New customer added.


