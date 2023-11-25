*** Settings ***
Documentation       SC01 - View Data Tanda Tangan Elektronik
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/tte.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Data Tanda Tangan Elektronik
    [Documentation]     SC01 - View Data Tanda Tangan Elektronik
    [Tags]      TC01 - View Data Tanda Tangan Elektronik
    login.Open Browser To Login Page
    login.Login Admin Pusat
    tte.Move To TTE
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser