*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Keywords ***
Open Browser To Login Page
    Set Selenium Speed    0.4s
    # Open Browser    ${LOGIN URL}    ${BROWSER}    options=add_argument("--incognito")
    Open Browser    ${LOGIN URL}    ${BROWSER}
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
    Sleep    5s
    # Wait Until Element Is Visible    xpath://*[@id="#kt_header_menu"]/div[1]/a/span[2]