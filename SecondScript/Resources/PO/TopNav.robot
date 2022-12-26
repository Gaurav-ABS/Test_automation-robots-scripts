*** Settings ***
Library     Selenium
Library     SeleniumLibrary

*** Variables ***
${TOP_NAV_SIGNIN_LINK} =        id=SignIn
${TOP_NAV_SIGNIN_LINK} =    id=SignIn


*** Keywords ***
Click "Sign In" Link
    click link      ${TOP_NAV_SIGNIN_LINK}


