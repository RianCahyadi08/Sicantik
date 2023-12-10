*** Settings ***
Documentation       SC01 - View Data Notification
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/notifikasi.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Data Notifikasi
    [Documentation]     SC01 - View Data Notifikasi
    [Tags]      TC01 - View Data Notifikasi
    Open Browser To Login Page
    login.Login Admin Instansi
    login.Submit Credentials
    notifikasi.Click Icon Notification
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Page Setting Notifikasi
    [Documentation]     SC01 - View Data Notifikasi
    [Tags]      TC02 - View Page Setting Notifikasi
    Open Browser To Login Page
    login.Login Admin Instansi
    login.Submit Credentials
    notifikasi.Move To Notification
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser