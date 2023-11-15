*** Settings ***
Documentation       SC01 - Lazy Load Daftar izin
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/daftar_izin.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Daftar izin
    [Documentation]     SC01 - Lazy Load Daftar izin
    [Tags]      TC01 - Lazy Load Daftar izin
    login.Open Browser To Login Page
    login.Login Admin Pusat
    daftar_izin.Move To Daftar Izin
    daftar_izin.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser