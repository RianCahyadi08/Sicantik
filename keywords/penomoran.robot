*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Keywords ***
Move To Penomoran Module
    Go To    https://uji.sicantik.go.id/penomoran
    Wait Until Element Is Visible    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5

Click Button Detail
    Wait Until Element Is Visible    css:i.fa-eye
    Click Element    css:i.fa-eye
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div/div/div[1]/div/div/div/div[1]/a    DETAIL PENOMORAN

Input Search
    [Arguments]     ${search}
    Input Text    id:kt_filter_search    ${search}
    Sleep    3s
    Element Should Contain    css:span.text-nowrap    Tampilkan 1 sampai

Click Button Edit
    Click Element    css:i.fa-edit
    Element Should Contain    xpath://*[@id="kt_content_container"]/div/div/div[1]/div/div/div/div[1]/a    UBAH PENOMORAN

Move to Add Page
    Go To   https://uji.sicantik.go.id/penomoran/add
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div/div/div[1]/div/div/div/div[1]/a    TAMBAH PENOMORAN

Input Deskripsi Penomoran
    Clear Element Text    name:deskripsi
    [Arguments]     ${deskripsi}
    Input Text    name:deskripsi    ${deskripsi}

Input Format Penomoran
    Clear Element Text    name:formatPenomoran
    [Arguments]     ${format}
    Input Text    name:formatPenomoran    ${format}

Input Nomor Terakhir
    Clear Element Text    name:nomorTerakir
    [Arguments]     ${noTerakhir}
    Input Text    name:nomorTerakir    ${noTerakhir}

Click Reset Penomoran
    Wait Until Element Is Visible    css:span.el-switch__core
    Click Element    css:span.el-switch__core
    Sleep    0.5s

Select Instansi
    Click Element    xpath://*[@id="kt_login_signin_form"]/div/div[4]/label
    Press Keys  None    TAB
    [Arguments]     ${instansi}
    Press Keys      None    ${instansi}
    Sleep    1s
    Press Keys  None    ARROW_DOWN
    Press Keys  None    ENTER

Click Button Kategori Item
    Click Button    id:addFieldJenisPengajuan
    Wait Until Element Is Visible    name:unitKerja-0

Select Unit Kerja
    Click Element    name:unitKerja-0
    [Arguments]     ${unit}
    Press Keys  None    ${unit}
    Press Keys  None    ENTER

Input Sub Nomor Terakhir
    Clear Element Text    name:noterakhir-0
    [Arguments]     ${nomorTerakhir}
    Input Text    name:noterakhir-0    ${nomorTerakhir}

Click Button Simpan
    Click Button    default:Simpan
    Wait Until Element Is Visible    class:Vue-Toastification__toast-body