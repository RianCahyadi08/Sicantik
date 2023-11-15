*** Settings ***
Documentation       SC01 - Lazy load Permohonan Izin
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/permohonan_izin.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Permohonan Izin
    [Documentation]     SC01 - Lazy Load Permohonan Izin
    [Tags]      TC01 - Lazy Load Permohonan Izin
    login.Open Browser To Login Page
    login.Login Admin Instansi
    permohonan_izin.Move To Permohonan Izin Module
    permohonan_izin.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser


