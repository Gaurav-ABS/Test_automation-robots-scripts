*** Settings ***
Library     Selenium
Library     SeleniumLibrary

*** Variables ***
${CUSTOMERS_PAGE_LOADED_LABEL} =    Our Happy Customers
${ADD_CUSTOMER_LINK} =              id=new-customer
*** Keywords ***
Verify Customers Page Loaded
    wait until page contains        ${CUSTOMERS_PAGE_LOADED_LABEL}

Click Add Customer Link
    scroll element into view         ${ADD_CUSTOMER_LINK}
    wait until element is visible    ${ADD_CUSTOMER_LINK}
    click link                       ${ADD_CUSTOMER_LINK}