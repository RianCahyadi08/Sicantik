*** Settings ***
Documentation       SC01 - Lazy load halaman lapor
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/aduan.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Halaman Lapor
    [Documentation]     SC01 - Lazy Load Halaman lapor
    [Tags]      TC01 - Lazy Load Halaman Lapor
    login.Open Browser To Login Page
    login.Login Admin Pusat
    aduan.Move To Lapor Aduan
    aduan.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser