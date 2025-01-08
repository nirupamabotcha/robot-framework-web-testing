*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary

*** Variables ***
${BROWSER}    chrome
${BASE_URL}    https://example.com
${TIMEOUT}    10

*** Keywords ***
Open Browser To Base URL
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}

Close All Browsers After Test
    Close All Browsers