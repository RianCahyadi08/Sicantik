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

Click Button Detail
    Click Element    css:i.fa-eye
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/div[1]/div/h3    DETAIL PERMOHONAN IZIN

Click Button Tampilkan Hasil
    Click Button        default:Tampilkan hasil
    Sleep    5s

Click Button Edit
    Click Element    css:i.fa-edit
    Wait Until Element Contains    xpath://*[@id="kt_create_account_stepper"]/div[1]/div/div[1]/div[1]/div[1]    EDIT PERMOHONAN

Click Button Tolak Permohonan
    Click Button    default:Tolak Permohonan
    Wait Until Element Contains    xpath://*[@id="modalCabutIzin"]/form/div/div/div[2]/div[1]/label    Alasan

Input Alasan
    [Arguments]     ${alasan}
    Input Text    name:alasan    ${alasan}

Upload File Lampiran
    [Arguments]    ${lampiran}
    Choose File    name:file    ${lampiran}

Click Button Simpan
    Click Button    default:Simpan
    Wait Until Element Is Visible    class:Vue-Toastification__toast-body