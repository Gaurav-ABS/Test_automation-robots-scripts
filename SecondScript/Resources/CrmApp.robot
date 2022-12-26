*** Settings ***
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/AddCustomer.robot
Resource    ../Resources/PO/LoggedOut.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot
*** Variables ***


*** Keywords ***
Go to "Home" Page
    Home.Navigate To
    Home.Verify Home Page Loaded

Login With Valid Credentials
    [Arguments]     ${Email}    ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify Login Page Loaded
    SignIn.Login With Valid Credentials     ${Email}    ${Password}


Add New Customer
    Customers.Verify Customers Page Loaded
    Customers.Click Add Customer Link
    AddCustomer.Verify AddCustomer Page Loaded
    AddCustomer.Fill Customer Fields
    AddCustomer.Click Submit Button
    AddCustomer.Verify Customer Added Succesfully


Log Out
    LoggedOut.Log Out

