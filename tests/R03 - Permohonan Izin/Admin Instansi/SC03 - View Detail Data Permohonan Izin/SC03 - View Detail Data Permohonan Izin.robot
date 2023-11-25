*** Settings ***
Documentation       SC03 - View Detail Data Permohonan Izin
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/permohonan_izin.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Detail Data Permohonan Izin
    [Documentation]     SC03 - View Detail Data Permohonan Izin
    [Tags]      TC01 - View Detail Data Permohonan Izin
    Open Browser To Login Page
    login.Login Admin Instansi
    permohonan_izin.Move To Permohonan Izin Module
    permohonan_izin.Click Button Detail
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser