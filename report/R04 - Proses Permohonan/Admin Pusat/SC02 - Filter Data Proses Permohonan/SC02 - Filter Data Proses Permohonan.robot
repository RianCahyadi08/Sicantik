*** Settings ***
Documentation       SC02 - Filter Data Proses Permohonan
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/proses_permohonan.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Filter Data Proses Permohonan
    [Documentation]     SC02 - Filter Data Proses Permohonan
    [Tags]      TC01 - Filter Data Proses Permohonan
    login.Open Browser To Login Page
    login.Input Username      admegov
    login.Input Password      Admegov789*@#
    login.Submit Credentials
    Move To Proses Permohonan
    proses_permohonan.Click Button Filter
    proses_permohonan.Input No Permohonan  033/Test Uji Penomoran A11/XI/2023
    proses_permohonan.Click Button Tampilkan Hasil Proses Permohonan
    Sleep   10s
    Capture Page Screenshot
    [Teardown]    Close Browser