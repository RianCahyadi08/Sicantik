*** Settings ***
Documentation       SC03 - Update Template Data
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/template_data.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Update Template Data dengan Tipe Keluaran Combogrid Webservice
    [Documentation]     SC03 - Update Template Data
    [Tags]      TC01 - Update Template Data dengan Tipe Keluaran Combogrid Webservice
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input Nama Template Data Filter    namaTemplateDataComboGrid
    template_data.Click Button Tampilkan Hasil
    template_data.Click Icon Pencil
    template_data.Input Nama Template Data    namaTemplateDataComboGridUpdate
#    template_data.Click Button Tambah Kelompok Data
    template_data.Select Tipe Keluaran      Combo
    template_data.Input Label Kelompok      Label Kelompok Update
    template_data.Select Tipe               Plural
    template_data.Select Jenis Sumber       Sql
    template_data.Input Query SQL           SELECT * FROM Update
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id              2
    template_data.Input Unit Id             2
    template_data.Input Instansi Id         2
    template_data.Input Custom Variable     200
    template_data.Click Button Simpan
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Update Template Data dengan Tipe Keluaran Dokumen Cetak
    [Documentation]     SC03 - Update Template Data
    [Tags]      TC02 - Update Template Data dengan Tipe Keluaran Dokumen Cetak
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input Nama Template Data Filter    namaTemplateDataDokumenCetak
    template_data.Click Button Tampilkan Hasil
    template_data.Click Icon Pencil
    template_data.Input Nama Template Data    namaTemplateDataDokumenCetakUpdate
#    template_data.Click Button Tambah Kelompok Data
#    template_data.Select Tipe Keluaran      Dokumen
    template_data.Input Label Kelompok      Label Kelompok Update
    template_data.Select Tipe               Plural
    template_data.Select Jenis Sumber       Sql
    template_data.Input Query SQL           SELECT * FROM Update
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id              2
    template_data.Input Unit Id             2
    template_data.Input Instansi Id         2
    template_data.Input Custom Variable     200
#    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Update Template Data dengan Tipe Keluaran JSON
    [Documentation]     SC03 - Update Template Data
    [Tags]      TC03 - Update Template Data dengan Tipe Keluaran JSON
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input Nama Template Data Filter    namaTemplateDataJSON
    template_data.Click Button Tampilkan Hasil
    template_data.Click Icon Pencil
    template_data.Input Nama Template Data    namaTemplateDataJSONUpdate
#    template_data.Click Button Tambah Kelompok Data
    template_data.Select Tipe Keluaran      Json
    template_data.Input Label Kelompok      Label Kelompok Update
    template_data.Select Tipe               Plural
    template_data.Select Jenis Sumber       Sql
    template_data.Input Query SQL           SELECT * FROM Update
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id              2
    template_data.Input Unit Id             2
    template_data.Input Instansi Id         2
    template_data.Input Custom Variable     200
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - Update Template Data dengan Tipe Keluaran XML
    [Documentation]     SC03 - Update Template Data
    [Tags]      TC04 - Update Template Data dengan Tipe Keluaran XML
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input Nama Template Data Filter    namaTemplateDataXML
    template_data.Click Button Tampilkan Hasil
    template_data.Click Icon Pencil
    template_data.Input Nama Template Data    namaTemplateDataXMLUpdate
#    template_data.Click Button Tambah Kelompok Data
    template_data.Select Tipe Keluaran      XML
    template_data.Input Label Kelompok      Label Kelompok Update
    template_data.Select Tipe               Plural
    template_data.Select Jenis Sumber       Sql
    template_data.Input Query SQL           SELECT * FROM Update
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id              2
    template_data.Input Unit Id             2
    template_data.Input Instansi Id         2
    template_data.Input Custom Variable     200
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser