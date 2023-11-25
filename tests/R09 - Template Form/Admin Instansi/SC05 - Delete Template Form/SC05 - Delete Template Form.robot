*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../../../../keywords/login.robot
Resource          ../../../../keywords/template_form.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - Delete Template Form
    [Documentation]     SC05 - Delete Template Form
    [Tags]  TC01 - Delete Template Form
    login.Open Browser To Login Page
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Delete Template Form
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser