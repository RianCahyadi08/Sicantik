*** Settings ***
Documentation       SC01 - Lazy Load Izin Ditolak
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/permohonan_ditolak.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Izin Ditolak
    [Documentation]     SC01 - Lazy Load Izin Ditolak
    [Tags]      TC01 - Lazy Load izin Ditolak
    login.Open Browser To Login Page
    login.Login Admin Instansi
    permohonan_ditolak.Move to Permohonan ditolak
    permohonan_ditolak.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser