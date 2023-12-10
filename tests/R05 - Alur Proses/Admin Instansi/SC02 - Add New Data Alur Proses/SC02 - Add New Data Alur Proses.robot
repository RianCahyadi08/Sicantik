*** Settings ***
Documentation       SC02 - Add New Data Alur Proses
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/alur_proses.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Add New Data Alur Proses
    [Documentation]     SC02 - Add New Data Alur Proses
    [Tags]      TC01 - Add New Data Alur Proses
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    alur_proses.Move To Alur Proses Module
    alur_proses.Move To Add Alur Proses
    alur_proses.Input Nama Alur Proses  namaAlurProses I
    alur_proses.Click Button Tambah Tahapan Proses
    alur_proses.Input No  1
    alur_proses.Select Jenis Proses  Draft
    alur_proses.Select Report    report
    Capture Page Screenshot
    alur_proses.Click Button Simpan Data
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Add New Data Alur Proses - Jenis Proses (Tanda Terima Berkas - TTE)
    [Documentation]     SC02 - Add New Data Alur Proses
    [Tags]      TC02 - Add New Data Alur Proses - Jenis Proses (Tanda Terima Berkas - TTE)
    login.Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    alur_proses.Move To Alur Proses Module
    alur_proses.Move To Add Alur Proses
    alur_proses.Input Nama Alur Proses  namaAlurProses II
    alur_proses.Click Button Tambah Tahapan Proses
    alur_proses.Input No  1
    alur_proses.Select Jenis Proses  Tanda Terima Berkas
    alur_proses.Select Report  report
    alur_proses.Select Jenis Tanda Tangan  Tanda Tangan Jamak
    alur_proses.Select Jabatan 1    Jabatan Rian Satu
    alur_proses.Select Jabatan 2    Jabatan Rian Dua
    Capture Page Screenshot
    alur_proses.Click Button Simpan Data
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser