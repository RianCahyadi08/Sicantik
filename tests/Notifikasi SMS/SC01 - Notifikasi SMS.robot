*** Settings ***
Documentation       SC01 - Notifikasi SMS
Library             SeleniumLibrary
Resource            ../../keywords/login.robot
Resource            ../../keywords/pemohon.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Notifikasi SMS
    [Documentation]     SC01 - Notifikasi SMS
    [Tags]      TC01 - View Notifikasi SMS
    Open Browser To Login Page
    login.Login Pemohon
    pemohon.Click Lonceng Notifikasi
    pemohon.Click Informasi Tab In Notifikasi
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser