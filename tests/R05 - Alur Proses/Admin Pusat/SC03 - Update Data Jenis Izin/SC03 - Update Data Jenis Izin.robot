*** Settings ***
Documentation       SC03 - Update Data Jenis Izin
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/alur_proses.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Update Data Jenis Izin
    [Documentation]     SC03 - Update Data Jenis Izin
    [Tags]      TC01 - Update Data Jenis Izin
    login.Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    alur_proses.Move To Alur Proses Module
    alur_proses.Click Button Filter
    alur_proses.Filter Alur Proses  namaAlurProses I
    alur_proses.Click Button Pencil
    alur_proses.Input No  2
    alur_proses.Select Jenis Proses  Cetak Rekomendasi
    alur_proses.Select Tautan  report
    alur_proses.Select Report  Report 1
    alur_proses.Click Button Simpan Data
    Wait Until Element is Visible   class:Vue-Toastification__toast-body    None
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser