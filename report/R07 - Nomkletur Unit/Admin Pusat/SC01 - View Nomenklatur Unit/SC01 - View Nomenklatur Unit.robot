*** Settings ***
Documentation       SC01 - View Nomenklatur Unit
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/nomenklatur.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Nomenklatur Unit
    [Documentation]     SC01 - View Nomenklatur Unit
    [Tags]      TC01 - View Nomenklatur Unit
    login.Open Browser To Login Page
    login.Login Admin Pusat
    nomenklatur.Move To Nomenklatur
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser