*** Settings ***
Documentation       SC01 - Lazy Load Jenis Izin
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/jenis_izin.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Jenis Izin
    [Documentation]     SC01 - Lazy Load Jenis Izin
    [Tags]      TC01 - Lazy Load Jenis Izin
    login.Open Browser To Login Page
    login.Login Admin Instansi
    jenis_izin.Move To Jenis Izin Module
    jenis_izin.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser