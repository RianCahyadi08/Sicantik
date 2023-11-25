*** Settings ***
Documentation       SC01 - View Data Proses Permohonan.
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/proses_permohonan.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - View Data Proses Permohonan
    [Documentation]     SC01 - View Data Proses Permohonan
    [Tags]      TC01 - View Data Proses Permohonan
    login.Open Browser To Login Page
    login.Login Admin Instansi
    proses_permohonan.Move To Proses Permohonan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser