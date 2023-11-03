*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Forgot Password Page
    Click Element    xpath://*[@id="kt_login_signin_form"]/div[5]/div[4]/a

Input Email
    [Arguments]    ${email}
    Input Text    name:email    ${email}

Submit Forgot Password
    Click Button    xpath://*[@id="app"]/div/div/div[2]/div/div/form/div/div[2]/div/button