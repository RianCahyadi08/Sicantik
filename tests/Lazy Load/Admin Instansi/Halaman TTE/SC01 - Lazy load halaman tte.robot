*** Settings ***
Documentation       SC01 - Lazy load halaman tte
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/tte.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Halaman TTE
    [Documentation]     SC01 - Lazy Load Halaman TTE
    [Tags]      TC01 - Lazy Load Jenis Izin
    login.Open Browser To Login Page
    login.Login Admin Instansi
    tte.Move To TTE
    tte.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser