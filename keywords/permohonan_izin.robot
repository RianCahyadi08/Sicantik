*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Keywords ***
Move To Permohonan Izin Module
    Go To   https://uji.sicantik.go.id/permohonan-izin
    Wait Until Element Contains    tag:h5    Permohonan Izin

Click Button Filter
    Click Element    css:button.btn-white
    Wait Until Element Is Enabled    class:el-input__wrapper

Input No Permohonan
    Click Element       xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label
    Press Keys          None    TAB
    [Arguments]         ${noPermohonan}
    Press Keys          None    ${noPermohonan}

Click Button Tampilkan Hasil
    Click Button        default:Tampilkan hasil
    Sleep    5s