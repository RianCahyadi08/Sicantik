*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Keywords ***
Move To Profile And Permohonan Izin
    Go To           https://uji.sicantik.go.id/profile/pemohon/daftar-permohonan/permohonan
    Wait Until Location Is    https://uji.sicantik.go.id/profile/pemohon/daftar-permohonan/permohonan

Click Btn Filter
    Wait Until Element Is Visible    //*[@class="btn btn-white border collapsed"]
    Click Button    //*[@class="btn btn-white border collapsed"]
    Sleep    1s
    
Input No Permohonan
    Wait Until Element Is Visible    //*[@placeholder="No. Permohonan"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="No. Permohonan"]    ${param}
    Textfield Value Should Be    //*[@placeholder="No. Permohonan"]    ${param}

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

Click Btn Tampilkan Hasil
    Wait Until Element Is Visible    //*[@class="btn btn-primary me-2"]
    Click Button    //*[@class="btn btn-primary me-2"]
    Sleep    3s

Click Icon Alur Proses Permohonan
    Wait Until Element Is Visible    //*[@class="fas fa-list"]
    Click Element    //*[@class="fas fa-list"]
    Sleep    1s

Unduh Izin Berlaku
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[2]/ul[9]/li/div/span/a/h5
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[2]/ul[9]/li/div/span/a/h5
    Sleep    3s

Unduh Izin Tidak Berlaku
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[2]/ul[8]/li/div/span/a/h5
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[2]/ul[8]/li/div/span/a/h5
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

Click Lonceng Notifikasi
    Click Element    css:i.fa-bell
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[1]/div/div/div[3]/div/div[1]/div[2]/div[1]/div/h3
    Sleep    1s

Click Informasi Tab In Notifikasi
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[1]/div/div/div[3]/div/div[1]/div[2]/div[1]/div/ul/li[2]/a
#    Wait Until Element Contains    xpath:/html/body/div[1]/div[2]/div[2]/div[1]/div/div/div[3]/div/div[1]/div[2]/div[1]/div/ul/li[2]/a    Notifikasi

#Perizinan
Move To Perizinan
    Wait Until Element Is Visible    //*[@class="active exact-active-link nav-link text-active-primary me-6"]
    Click Link    link:Perizinan
    Wait Until Location Is    https://uji.sicantik.go.id/profile/pemohon/daftar-permohonan/perizinan

Detail Perizinan
    Wait Until Element Is Visible    //*[@class="fas fa-eye text-primary"]
    Click Element    //*[@class="fas fa-eye text-primary"]
    Wait Until Page Contains    DETAIL PERMOHONAN IZIN
    
Unduh Perizinan
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div/div/table/tbody/tr[2]/td[7]/i
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div/div/table/tbody/tr[2]/td[7]/i
    Sleep    3s

Unduh Perizinan With Rating
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div/div/table/tbody/tr[4]/td[7]/i
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/div[2]/div[2]/div/div/table/tbody/tr[4]/td[7]/i
    Sleep    1s
#    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[3]/div/div/div/div/div/div[2]/div/div[1]/div/span[5]/i/svg[2]/path
    Input Text    //*[@placeholder="Masukan ulasan"]    lorem ipsum
    Click Button    //*[@class="el-button btn-primary"]
    Sleep    3s

Unduh Perizinan Tidak Berlaku
    Wait Until Element Is Visible    //*[@class="fas fa-file text-danger me-3 not-allowed el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="fas fa-file text-danger me-3 not-allowed el-tooltip__trigger el-tooltip__trigger"]