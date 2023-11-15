*** Settings ***
Documentation       SC01 - Lazy Load Template Data
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/template_data.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Template Data
    [Documentation]     SC01 - Lazy Load Template Data
    [Tags]      Lazy Load Template Data
    login.Open Browser To Login Page
    login.Login Admin Pusat
    template_data.Move To Template Data
    template_data.Scroll Down
    Sleep       5s
    Capture Page Screenshot
    [Teardown]    Close Browser