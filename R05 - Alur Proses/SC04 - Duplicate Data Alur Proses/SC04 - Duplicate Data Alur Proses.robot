*** Settings ***
Documentation       SC04 - Duplicate Data Alur Proses
Library             SeleniumLibrary
Resource            ../../keywords/login.robot
Resource            ../../keywords/alur_proses.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Duplicate Data Alur Proses
    [Documentation]     SC04 - Duplicate Data Alur Proses
    [Tags]      TC01 - Duplicate Data Alur Proses
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    login.Submit Credentials
    alur_proses.Move To Alur Proses Module
    alur_proses.Click Button Filter
    alur_proses.Filter Alur Proses  alurProsesRian
    alur_proses.Click Button Duplicate
    alur_proses.Click Button Ya Duplicate
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser