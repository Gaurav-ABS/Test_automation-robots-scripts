*** Settings ***
Library     Selenium
Library     SeleniumLibrary

*** Variables ***


*** Keywords ***
Log Out
    click link                  Sign Out
    wait until page contains    Signed Out
