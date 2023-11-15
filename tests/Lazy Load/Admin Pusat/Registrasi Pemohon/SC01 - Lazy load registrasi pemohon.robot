*** Settings ***
Documentation       SC01 - Lazy Load Registrasi Pemohon
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/registrasi_pemohon.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Registrasi Pemohon
    [Documentation]     SC01 - Lazy Load Registrasi Pemohon
    [Tags]      TC01 - Lazy Load Registrasi Pemohon
    login.Open Browser To Login Page
    login.Login Admin Pusat
    registrasi_pemohon.Move To Registrasi Pemohon
    registrasi_pemohon.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser