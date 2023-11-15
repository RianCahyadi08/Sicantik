*** Settings ***
Documentation       SC01 - Lazy Load Alter Data Pemohon
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/alter_data_pemohon.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Template Form
    [Documentation]     SC01 - Lazy Load Alter Data Pemohon
    [Tags]      TC01 - Lazy Load Alter Data Pemohon
    login.Open Browser To Login Page
    login.Login Admin Pusat
    alter_data_pemohon.Move To Alter Data Pemohon
    alter_data_pemohon.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser