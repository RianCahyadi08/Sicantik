*** Settings ***
Documentation       SC02 - Update Nomenklatur Unit
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/nomenklatur.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Update Nomenklatur Unit
    [Documentation]     SC02 - Update Nomenklatur Unit
    [Tags]      TC01 - Update Nomenklatur Unit
    login.Open Browser To Login Page
    login.Login Admin Instansi
    nomenklatur.Move To Nomenklatur Adm Instansi
    nomenklatur.Click Btn Edit
    nomenklatur.Click Btn Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser