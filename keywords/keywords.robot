*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Keywords ***
Open Browser To Login Page
    Set Selenium Speed    0.5s
    Open Browser    ${LOGIN URL}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window
    Title Should Be    SICANTIK

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    kt_sign_in_submit
# End Login page

# Forgot password page
Move To Forgot Password Page
    Click Element    xpath://*[@id="kt_login_signin_form"]/div[5]/div[4]/a

Input Email
    [Arguments]    ${email}
    Input Text    name:email    ${email}

Submit Forgot Password
    Click Button    xpath://*[@id="app"]/div/div/div[2]/div/div/form/div/div[2]/div/button