*** Settings ***
Documentation       SC01 - Lazy Load Proses Permohonan
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/proses_permohonan.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Proses Permohonan
    [Documentation]     SC01 - Lazy Load Proses Permohonan
    [Tags]      TC01 - Lazy Load Proses Permohonan
    login.Open Browser To Login Page
    login.Login Admin Pusat
    proses_permohonan.Move to Proses Permohonan
    proses_permohonan.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser