*** Settings ***
Documentation       SC01 - Lazy Load Alur Proses
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/alur_proses.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Alur Proses
    [Documentation]     SC01 - Lazy Load Alur Proses
    [Tags]      TC01 - View Page Alur Proses
    login.Open Browser To Login Page
    login.Login Admin Pusat
    alur_proses.Move To Alur Proses Module
    alur_proses.Scroll Down
    Sleep       5s
    Capture Page Screenshot
    [Teardown]    Close Browser