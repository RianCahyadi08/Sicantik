*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          login.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Keywords ***
Move To Template Form
    Go To    https://uji.sicantik.go.id/template-form
    Sleep    3s

Click Button Filter
    Click Element    xpath://*[@id="kt_profile_details_view"]/div/div[2]/div/div[1]/button

Input ID Template
    [Arguments]    ${idTemplate}
    Input Text    class:el-input__inner    ${idTemplate}

Input Nama Template Form
    [Arguments]    ${nameTemplateForm}
    Press Keys    None    TAB
    Press Keys    None    ${nameTemplateForm}
    # Input Text    xpath://*[@id="el-id-3388-58"]    ${nameTemplateForm}

Click Button Tampilkan Hasil
    Click Button    xpath://*[@id="collapseBtnFilter"]/div/div[2]/div/button[1]

Duplicate Template Form
    Click Element    class:fa-file
    Wait Until Element Is Visible    xpath://*[@id="kt_body"]/div[4]/div/div[3]/button[1]
    Click Element    xpath://*[@id="kt_body"]/div[4]/div/div[3]/button[1]
    Sleep    2s

Delete Template Form
    Click Element    class:fa-trash-alt
    Wait Until Element Is Visible    xpath://*[@id="kt_body"]/div[4]/div/div[3]/button[1]
    Click Element    xpath://*[@id="kt_body"]/div[4]/div/div[3]/button[1]
    Sleep    2s

Detail Template Form
    Click Element    class:fa-eye
    Sleep    3s