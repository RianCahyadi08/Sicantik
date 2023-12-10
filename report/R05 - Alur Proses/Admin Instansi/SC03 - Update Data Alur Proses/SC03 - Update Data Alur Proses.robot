*** Settings ***
Documentation       SC03 - Update Data Alur Proses
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/alur_proses.robot

*** Test Cases ***
TC01 - Update Data Alur Proses
    [Documentation]     SC03 - Update Data Alur Proses
    [Tags]      TC01 - Update Data Alur Proses
    login.Open Browser To Login Page
    login.Login Admin Instansi
    alur_proses.Move To Alur Proses Module
    alur_proses.Click Button Filter
    alur_proses.Filter Alur Proses  nama alur proses rian satu
    alur_proses.Click Button Pencil
    alur_proses.Input Nama Alur Proses    nama alur proses rian satu update
    alur_proses.Input No  2
    alur_proses.Select Jenis Proses  Cetak Rekomendasi
    alur_proses.Select Tautan  report
    alur_proses.Select Report  Report 1
    alur_proses.Click Button Simpan Data
    Wait Until Element is Visible   class:Vue-Toastification__toast-body    None
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser