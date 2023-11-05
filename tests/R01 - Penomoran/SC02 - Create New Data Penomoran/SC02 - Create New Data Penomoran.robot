*** Settings ***
Documentation       SC02 - Create New Data Penomoran
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/penomoran.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Create Data Penomoran
    [Documentation]     SC02 - Create New Data Penomoran
    [Tags]      TC01 - Create Data Penomoran
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    penomoran.Move To Penomoran Module
    penomoran.Move to Add Page
    penomoran.Input Deskripsi Penomoran    Lorem
    penomoran.Input Format Penomoran    Format
    penomoran.Input Nomor Terakhir    1
    penomoran.Select Instansi   Demo2
    penomoran.Click Button Kategori Item
    penomoran.Select Unit Kerja    test
    penomoran.Input Sub Nomor Terakhir    1
    penomoran.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser