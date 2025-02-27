*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/keywords.robot


# *** Test Cases ***
# Test Case 3
#     Open Browser    https://www.google.com    edge
#     Maximize Browser Window
#     Click Button    id=W0wltc
#     Sleep    5s
#     Close Browser

# Test case 2
#     start the Browser
#     deny cookies
#     Sleep    5s

# *** Keywords ***
# start the Browser
#     Open Browser    https://www.google.com/    edge
#     Maximize Browser Window
# deny cookies
#     Click Button    id=W0wltc
#     Sleep    5s
#     Close Browser

*** Test Cases ***
Test case 3
    start the Browser
    deny cookies
    write in the search bar
    Sleep    5s
    Close All Browsers

