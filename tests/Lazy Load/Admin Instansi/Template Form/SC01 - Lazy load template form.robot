*** Settings ***
Documentation       SC01 - Lazy Load Template Form
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/template_form.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Lazy Load Template Form
    [Documentation]     SC01 - Lazy Load Template Form
    [Tags]      TC01 - Lazy Load Template Form
    login.Open Browser To Login Page
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Scroll Down
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser