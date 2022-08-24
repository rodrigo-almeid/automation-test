*** Settings ***
Library     SeleniumLibrary
Resource    ../config/config.robot

*** Keywords ***
Start tests
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

End tests
    Close All Browsers

Access portal
    Go To    ${URL_HOST}