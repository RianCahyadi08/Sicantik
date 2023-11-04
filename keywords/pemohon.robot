*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Keywords ***
Move To Profile And Permohonan Izin
    Go To           https://uji.sicantik.go.id/profile/pemohon/daftar-permohonan/permohonan
    Wait Until Element Contains     css:span.text-primary-custom    Ajukan Keluhan

Move To Add Permohonan
    Go To           https://uji.sicantik.go.id/profile/pemohon/daftar-permohonan/add/permohonan
    Wait Until Element Contains      css:label.form-label   Jenis Permohonan *  None    None

Select Jenis Permohonan
    Click Element   name:jenis_permohonan
    [Arguments]     ${jenisPemohonan}
    Press Keys      None    ${jenisPemohonan}
    Press Keys      None    ENTER

Select Instansi
    Click Element   name:kecamatan
    [Arguments]     ${instansi}
    Press Keys      None    ${instansi}
    Sleep           2s
    Press Keys      None    ENTER

# Select Unit
#     Click Element   name:kecamatan
#     [Arguments]     ${instansi}
#     Press Keys      None    ${instansi}
#     Press Keys      None    ENTER

Select Jenis Izin
    Click Element   name:jenisIzin
    [Arguments]     ${jenisIzin}
    Press Keys      None    ${jenisIzin}
    Sleep           2s
    Press Keys      None    ENTER

Click Button Selanjutnya
    Click Button    default:Selanjutnya
    Sleep           1s

Select Perseorangan
    Click Element   xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div[2]/form/div[3]/div/div[3]/div/div[1]/label

Click Button Simpan
    Click Button    default:Simpan
    