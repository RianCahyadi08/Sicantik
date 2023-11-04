*** Settings ***
Documentation       SC01 - View Data Permohonan
Library             SeleniumLibrary
Resource            ../../keywords/login.robot
Resource            ../../keywords/penomoran.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Data Permohonan
    [Documentation]     SC01 - View Data Permohonan
    [Tags]      TC01 - View Data Permohonan
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    penomoran.Move To Penomoran Module
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser