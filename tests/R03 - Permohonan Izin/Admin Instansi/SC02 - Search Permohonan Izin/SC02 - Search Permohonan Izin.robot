*** Settings ***
Documentation       SC02 - Search Permohonan Izin
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/permohonan_izin.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - Search Permohonan Izin
    [Documentation]     SC02 - Search Permohonan Izin
    [Tags]      TC01 - Search Permohonan Izin
    Open Browser To Login Page
    login.Login Admin Instansi
    permohonan_izin.Move To Permohonan Izin Module
    permohonan_izin.Click Button Filter
    permohonan_izin.Input No Permohonan    38/iat23/2023
    permohonan_izin.Click Button Tampilkan Hasil
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser