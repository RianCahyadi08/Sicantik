*** Settings ***
Documentation       SC01 - View Data Permohonan Izin
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/permohonan_izin.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - View Data Permohonan Izin
    [Documentation]     SC01 - View Data Permohonan Izin
    [Tags]      TC01 - View Data Permohonan Izin
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    permohonan_izin.Move To Permohonan Izin Module
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser