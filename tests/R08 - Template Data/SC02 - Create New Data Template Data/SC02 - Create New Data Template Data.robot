*** Settings ***
Documentation       SC04 - Create New Data Template Data
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/template_data.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Create New Data Template Data dengan Tipe Keluaran Combogrid Webservice
    [Documentation]     SC04 - Create New Data Template Data
    [Tags]      TC01 - Create New Data Template Data dengan Tipe Keluaran Combogrid Webservice
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Move To Add Template Data
    template_data.Input Nama Template Data    namaTemplateDataComboGrid
    template_data.Click Button Tambah Kelompok Data
    template_data.Select Tipe Keluaran      Combo
    template_data.Input Label Kelompok      Label Kelompok
    template_data.Select Tipe               Plural
    template_data.Select Jenis Sumber       Sql
    template_data.Input Query SQL           SELECT * FROM
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id              1
    template_data.Input Unit Id             1
    template_data.Input Instansi Id         1
    template_data.Input Custom Variable     100
    Capture Page Screenshot
    template_data.Click Button Simpan
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Create New Data Template Data dengan Tipe Keluaran Dokumen Cetak
    [Documentation]     SC04 - Create New Data Template Data
    [Tags]      TC02 - Create New Data Template Data dengan Tipe Keluaran Dokumen Cetak
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Move To Add Template Data
    template_data.Input Nama Template Data    namaTemplateDataDokumenCetak
    template_data.Click Button Tambah Kelompok Data
    template_data.Select Tipe Keluaran      Dokumen
    template_data.Upload Template    E:\\#LearnRobotFramework\\sodapdf-converted.docx
    template_data.Input Label Kelompok      Label Kelompok
    template_data.Select Tipe               Plural
    template_data.Select Jenis Sumber       Sql
    template_data.Input Query SQL           SELECT * FROM
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id              1
    template_data.Input Unit Id             1
    template_data.Input Instansi Id         1
    template_data.Input Custom Variable     100
    Capture Page Screenshot
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Create New Data Template Data dengan Tipe Keluaran JSON
    [Documentation]     SC04 - Create New Data Template Data
    [Tags]      TC03 - Create New Data Template Data dengan Tipe Keluaran JSON
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Move To Add Template Data
    template_data.Input Nama Template Data    namaTemplateDataJSON
    template_data.Click Button Tambah Kelompok Data
    template_data.Select Tipe Keluaran      Json
    template_data.Input Label Kelompok      Label Kelompok
    template_data.Select Tipe               Plural
    template_data.Select Jenis Sumber       Sql
    template_data.Input Query SQL           SELECT * FROM
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id              1
    template_data.Input Unit Id             1
    template_data.Input Instansi Id         1
    template_data.Input Custom Variable     100
    Capture Page Screenshot
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - Create New Data Template Data dengan Tipe Keluaran XML
    [Documentation]     SC04 - Create New Data Template Data
    [Tags]      TC04 - Create New Data Template Data dengan Tipe Keluaran XML
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Move To Add Template Data
    template_data.Input Nama Template Data    namaTemplateDataXML
    template_data.Click Button Tambah Kelompok Data
    template_data.Select Tipe Keluaran      XML
    template_data.Input Label Kelompok      Label Kelompok
    template_data.Select Tipe               Plural
    template_data.Select Jenis Sumber       Sql
    template_data.Input Query SQL           SELECT * FROM
    template_data.Click Icon Test Query Sql
    template_data.Input Key Id              1
    template_data.Input Unit Id             1
    template_data.Input Instansi Id         1
    template_data.Input Custom Variable     100
    Capture Page Screenshot
    template_data.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser