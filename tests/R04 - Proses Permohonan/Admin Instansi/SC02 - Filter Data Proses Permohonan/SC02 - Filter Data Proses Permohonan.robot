*** Settings ***
Documentation       SC02 - Filter Data Proses Permohonan
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/proses_permohonan.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Filter Data Proses Permohonan
    [Documentation]     SC02 - Filter Data Proses Permohonan
    [Tags]      TC01 - Filter Data Proses Permohonan
    login.Open Browser To Login Page
    login.Login Admin Instansi
    proses_permohonan.Move to Proses Permohonan
    proses_permohonan.Click Button Filter
    proses_permohonan.Input No Permohonan  37/iat23/2023
    proses_permohonan.Click Button Tampilkan Hasil Proses Permohonan
    Sleep   10s
    Capture Page Screenshot
    [Teardown]    Close Browser