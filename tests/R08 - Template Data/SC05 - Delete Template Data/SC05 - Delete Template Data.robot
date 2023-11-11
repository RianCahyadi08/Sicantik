*** Settings ***
Documentation       SC04 - Delete Template Data
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/template_data.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Delete Template Data
    [Documentation]     SC04 - Delete Template Data
    [Tags]      TC01 - Delete Template Data
    Open Browser To Login Page
    login.Input Username    demo
    login.Input Password    Demo789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Click Button Filter
    template_data.Input ID Template Data    41682
    template_data.Click Button Tampilkan Hasil
    template_data.Delete Template Data
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser