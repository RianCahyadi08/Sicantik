*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Nomenklatur
    Go To    https://uji.sicantik.go.id/form/list/32106
    Wait Until Page Contains    Daftar Nomenklatur Admin
    Sleep    3s

Move To Nomenklatur Adm Instansi
    Go To    https://uji.sicantik.go.id/form/list/32033
    Wait Until Page Contains    Daftar Nomenklatur
    Sleep    5s

Click Btn Edit
    Wait Until Element Is Visible    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="far fa-edit text-info me-3 pe-auto el-tooltip__trigger el-tooltip__trigger"]
    Wait Until Page Contains    Nomenklatur Unit

Click Btn Tambah
    Wait Until Element Is Visible    //*[@class="btn btn-primary mx-1"]
    Click Button    //*[@class="btn btn-primary mx-1"]
    Wait Until Page Contains    Tambah Nomenklatur Unit Admin

Input Id Unit
    Wait Until Element Is Visible    //*[@placeholder="Masukan ID Unit"]
    [Arguments]     ${idUnit}
    Input Text    //*[@placeholder="Masukan ID Unit"]    ${idUnit}

Input Nama Singkatan
    Wait Until Element Is Visible    //*[@placeholder="Masukan Nama Singkatan (Contoh DPMPTSP Kabupaten Demo)"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Masukan Nama Singkatan (Contoh DPMPTSP Kabupaten Demo)"]    ${param}

Input Nama Uraian
    Wait Until Element Is Visible    //*[@placeholder="Masukan Nama Uraian (Contoh Dinas Penanaman Modal Terpadu Satu Pintu Kabupaten Demo)"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Masukan Nama Uraian (Contoh Dinas Penanaman Modal Terpadu Satu Pintu Kabupaten Demo)"]    ${param}

Input Nama Daerah
    Wait Until Element Is Visible    //*[@placeholder="Masukan Nama Daerah Provinsi/Kabupaten/Kota (Contoh Kabupaten Demo)"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Masukan Nama Daerah Provinsi/Kabupaten/Kota (Contoh Kabupaten Demo)"]    ${param}

Input Alamat Unit
    Wait Until Element Is Visible    //*[@placeholder="Masukan Alamat Unit"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Masukan Alamat Unit"]    ${param}

Click Btn Simpan
    Wait Until Element Is Visible    //*[@class="btn btn-primary mx-1"]
    Click Button    //*[@class="btn btn-primary mx-1"]