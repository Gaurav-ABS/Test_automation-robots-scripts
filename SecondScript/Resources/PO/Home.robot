*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${HOME_PAGE_LOADED_LABEL} =          Customers Are Priority One


*** Keywords ***
Navigate To
    go to                       ${URL}
    maximize browser window
    Verify Home Page Loaded

Verify Home Page Loaded
    wait until page contains    ${HOME_PAGE_LOADED_LABEL}