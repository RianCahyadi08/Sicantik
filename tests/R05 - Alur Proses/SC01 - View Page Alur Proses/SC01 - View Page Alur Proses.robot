*** Settings ***
Documentation       SC01 - View Page Alur Proses
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/alur_proses.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Page Alur Proses
    [Documentation]     SC01 - View Page Alur Proses
    [Tags]      TC01 - View Page Alur Proses
    login.Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    alur_proses.Move To Alur Proses Module
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Detail Data Alur Proses
    [Documentation]     SC01 - View Page Alur Proses
    [Tags]      TC02 - View Detail Data Alur Proses
    login.Open Browser To Login Page
    login.input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    alur_proses.Move To Alur Proses Module
    alur_proses.Click Detail Data
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser