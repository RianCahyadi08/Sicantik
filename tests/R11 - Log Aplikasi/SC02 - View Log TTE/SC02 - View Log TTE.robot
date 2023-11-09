*** Settings ***
Documentation       SC01 - View Log TTE
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/log_tte.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Log TTE
    [Documentation]     SC02 - View Log TTE
    [Tags]      TC01 - View Log TTE
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    log_tte.Move To Log TTE Module
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser


TC02 - Filter Data Log TTE
    [Documentation]     SC02 - View Log TTE
    [Tags]      TC02 - Filter Data Log TTE
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    log_tte.Move To Log TTE Module
    log_tte.Click Button Filter
    log_tte.Input No Permohonan    503/0005/REKLAME/DPMPTSP/VII/2023
    log_tte.Click Button Tampilkan Hasil
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Search Log TTE
    [Documentation]     SC02 - View Log TTE
    [Tags]      TC03 - View Log TTE
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    log_tte.Move To Log TTE Module
    log_tte.Input Search    0543/Reklame/DPM-PTSP-LB/III/2023
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser