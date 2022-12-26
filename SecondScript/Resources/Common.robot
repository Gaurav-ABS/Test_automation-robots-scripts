*** Settings ***
Library     SeleniumLibrary


*** Variables ***


*** Keywords ***
Begin Web Test
    [Arguments]     ${BROWSER}
    #Intialize Selenium
    set selenium speed          .2s
    set selenium timeout        10s

    #Open the browser
    open browser                about:blank  ${BROWSER}

End Web Test
    close all browsers
