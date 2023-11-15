*** Settings ***
Documentation       SC01 - Lazy Load Daftar Pemohon
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/daftar_pemohon.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Daftar Pemohon
    [Documentation]     SC01 - Lazy Load Daftar Pemohon
    [Tags]      TC01 - Lazy Load Daftar Pemohon
    login.Open Browser To Login Page
    login.Login Admin Instansi
    daftar_pemohon.Move To Daftar Pemohon
    daftar_pemohon.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser