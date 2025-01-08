*** Settings ***
Resource    ../common.robot

*** Variables ***
${LOGIN_URL}    ${BASE_URL}/login
${USERNAME_FIELD}    id=username
${PASSWORD_FIELD}    id=password
${LOGIN_BUTTON}    css=button[type='submit']

*** Keywords ***
Navigate To Login Page
    Go To    ${LOGIN_URL}
    Wait Until Element Is Visible    ${USERNAME_FIELD}

Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Element    ${LOGIN_BUTTON}

Login With Credentials
    [Arguments]    ${username}    ${password}
    Navigate To Login Page
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button