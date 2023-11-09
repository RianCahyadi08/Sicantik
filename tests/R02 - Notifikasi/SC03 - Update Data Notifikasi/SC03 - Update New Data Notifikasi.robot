*** Settings ***
Documentation       SC03 - Update Data Notifikasi
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/notifikasi.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Update Data Notifikasi (ex. Pendaftaran)
    [Documentation]     SC03 - Update Data Notifikasi
    [Tags]      TC01 - Update Data Notifikasi (ex. Pendaftaran)
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    notifikasi.Move To Notification
    notifikasi.Click Icon Detail
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser