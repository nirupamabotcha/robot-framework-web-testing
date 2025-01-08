*** Settings ***
Documentation    Test suite for login functionality
Resource         ../Resources/pages/login_page.robot
Test Setup      Open Browser To Base URL
Test Teardown   Close All Browsers After Test

*** Variables ***
${VALID_USER}        testuser
${VALID_PASSWORD}    testpass

*** Test Cases ***
Valid Login
    [Documentation]    Test login with valid credentials
    Login With Credentials    ${VALID_USER}    ${VALID_PASSWORD}
    Location Should Be    ${BASE_URL}/dashboard
    Page Should Contain    Welcome ${VALID_USER}

Invalid Login
    [Documentation]    Test login with invalid credentials
    Login With Credentials    invalid    invalid
    Location Should Be    ${LOGIN_URL}
    Page Should Contain    Invalid username or password