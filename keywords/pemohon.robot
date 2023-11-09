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

Click Button Filter
    Wait Until Element Is Visible    css:button.btn-white
    Click Button    css:button.btn-white
    Wait Until Element Is Visible    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label
    
Input No Permohonan
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label
    Press Keys      None    TAB
    [Arguments]     ${noPermohonan}
    Press Keys      None    ${noPermohonan}

Input Nama Pemohon
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[2]/label
    Press Keys      None    TAB
    [Arguments]     ${namaPemohon}
    Press Keys      None    ${namaPemohon}

Input Nama Perusahaan
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[3]/label
    Press Keys      None    TAB
    [Arguments]     ${namaPerusahaan}
    Press Keys      None    ${namaPerusahaan}

Input Jenis Izin
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[4]/label
    Press Keys      None    TAB
    [Arguments]     ${jenisIzin}
    Press Keys      None    ${jenisIzin}

Input Nama Proses
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[5]/label
    Press Keys      None    TAB
    [Arguments]     ${namaProses}
    Press Keys      None    ${namaProses}

Input ID Permohonan Izin
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[6]/label
    Press Keys      None    TAB
    [Arguments]     ${idPermohonanIzin}
    Press Keys      None    ${idPermohonanIzin}

#Select Instansi
#    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[7]/label
#    Press Keys      None    TAB
#    [Arguments]     ${instansi}
#    Press Keys      None    ${instansi}
#    Sleep    0.5s
#    Press Keys      None    ENTER

Select Unit
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[7]/label
    Press Keys      None    TAB
    [Arguments]     ${unit}
    Press Keys      None    ${unit}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Press Keys      None    ENTER

Select Tanggal Mulai
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[9]/label
    Press Keys      None    TAB
    [Arguments]     ${tglMulai}
    Press Keys      None    ${tglMulai}

Select Tanggal Akhir
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[10]/label
    Press Keys      None    TAB
    [Arguments]     ${tglAkhir}
    Press Keys      None    ${tglAkhir}

Click Button Tampilkan Hasil
    Execute Javascript      window.scrollTo(0,800)
    Wait Until Element Is Visible    xpath://*[@id="collapseBtnFilter"]/div/div[2]/div/button[1]/span
    Click Button    xpath://*[@id="collapseBtnFilter"]/div/div[2]/div/button[1]
    Sleep    3s

Click Icon Eye
    Wait Until Element Is Visible    css:i.fa-eye
    Click Element    css:i.fa-eye
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/div[1]/div/h3    DETAIL PERMOHONAN IZIN
    Element Should Contain    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/div[1]/div/h3    DETAIL PERMOHONAN IZIN

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

Verify Keterangan Lokasi
    Wait Until Element Contains    xpath://*[@id="kt_create_account_form"]/div[2]/div/div[3]/div/div[3]/label    Keterangan lokasi (bila ada)
    Element Should Contain    xpath://*[@id="kt_create_account_form"]/div[2]/div/div[3]/div/div[3]/label    Keterangan lokasi (bila ada)

Select Perseorangan
    Click Element   xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div[2]/form/div[3]/div/div[3]/div/div[1]/label

Verify Tipe Pemohon
    Wait Until Element Contains    xpath://*[@id="kt_create_account_form"]/div[3]/div/div[1]/div/div/div/div[1]    TIPE PEMOHON
    Element Should Contain    xpath://*[@id="kt_create_account_form"]/div[3]/div/div[1]/div/div/div/div[1]    TIPE PEMOHON

Verify Perorangan
    Wait Until Element Contains    xpath://*[@id="kt_create_account_form"]/div[4]/div/div[1]/div/div/div/div[1]    PERORANGAN
    Element Should Contain    xpath://*[@id="kt_create_account_form"]/div[4]/div/div[1]/div/div/div/div[1]    PERORANGAN

Verify Persyaratan Document
    Wait Until Element Contains    xpath://*[@id="kt_create_account_form"]/div[5]/div/div[1]/div/div/div/div[1]    PERSYARATAN DOKUMEN
    Element Should Contain    xpath://*[@id="kt_create_account_form"]/div[5]/div/div[1]/div/div/div/div[1]    PERSYARATAN DOKUMEN

Verify Proyek
    Wait Until Element Contains    xpath://*[@id="kt_create_account_form"]/div[6]/div/div[1]/div/div/div/div[1]    PROYEK
    Element Should Contain    xpath://*[@id="kt_create_account_form"]/div[6]/div/div[1]/div/div/div/div[1]    PROYEK

Click Button Simpan
    Click Button    default:Simpan
    