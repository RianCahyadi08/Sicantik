*** Settings ***
Documentation       SC02 - Filter Data Proses Permohonan
Library             SeleniumLibrary
Resource            ../../keywords/login.robot
Resource            ../../keywords/proses_permohonan.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Filter Data Proses Permohonan
    [Documentation]     SC02 - Filter Data Proses Permohonan
    [Tags]      TC01 - Filter Data Proses Permohonan
    Open Browser To Login Page
    Input Username      admegov
    Input Password      Admegov789*@#
    Submit Credentials
    Move To Proses Permohonan
    Click Button Filter
    Input No Permohonan  033/Test Uji Penomoran A11/XI/2023
    Click Button Tampilkan Hasil Proses Permohonan
    Sleep   10s
    Capture Page Screenshot
    [Teardown]    Close Browser