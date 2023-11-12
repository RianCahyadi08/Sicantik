*** Settings ***
Documentation       SC02 - View Detail Data Notifikasi
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/notifikasi.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Detail Data Notifikasi
    [Documentation]     SC02 - View Detail Data Notifikasi
    [Tags]      TC01 - View Detail Data Notifikasi
    Open Browser To Login Page
    login.Login Admin Instansi
    login.Submit Credentials
    notifikasi.Move To Notification
    notifikasi.Click Icon Detail
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser