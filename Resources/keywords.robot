*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/locators.resource

*** Keywords ***
start the browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
deny cookies
    Click Button    ${deny_button} 
    Sleep    5s

write in the search bar
    Input Text    ${input_text}    Robotframework