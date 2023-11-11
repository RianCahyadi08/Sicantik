*** Settings ***
Documentation       SC03 - Ubah Data Penomoran
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/penomoran.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Ubah Data Penomoran
    [Documentation]     SC03 - Ubah Data Penomoran
    [Tags]      TC01 - Ubah Data Penomoran
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    penomoran.Move To Penomoran Module
    penomoran.Input Search    Lorem
    penomoran.Click Button Edit
    penomoran.Input Deskripsi Penomoran    Lorem Update
    penomoran.Input Format Penomoran    Format Update
    penomoran.Input Nomor Terakhir    2
    penomoran.Select Instansi   Demo2
#    penomoran.Click Button Kategori Item
    penomoran.Select Unit Kerja    dinas
    penomoran.Input Sub Nomor Terakhir    2
    penomoran.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser