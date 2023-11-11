*** Settings ***
Documentation       SC01 - View Log Validasi
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/log_validasi.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Log Validasi
    [Documentation]     SC01 - View Log Validasi
    [Tags]      TC01 - View Log Validasi
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    log_validasi.Move To Log Validasi Module
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Data Log Validasi
    [Documentation]     SC01 - View Log Validasi
    [Tags]      TC02 - Search Data Log Validasi
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    log_validasi.Move To Log Validasi Module
    log_validasi.Input Search    https://api-splp.layanan.go.id/retribusi/1/reklame?npwpd=200039530000
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser