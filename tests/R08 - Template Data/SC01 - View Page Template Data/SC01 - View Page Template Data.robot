*** Settings ***
Documentation       SC01 - View Page Template Data
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/template_data.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Page Template Data
    [Documentation]     SC01 - View Page Template Data
    [Tags]      TC01 - View Page Template Data
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Search Template Data
    [Documentation]     SC01 - View Page Template Data
    [Tags]      TC02 - Search Template Data
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input ID Template Data    41682
    template_data.Click Button Tampilkan Hasil
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Detail Template Data
    [Documentation]     SC01 - View Page Template Data
    [Tags]      TC02 - View Detail Template Data
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Click Icon Eye
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser