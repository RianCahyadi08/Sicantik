*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../../../keywords/login.robot
Resource          ../../../keywords/template_form.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - Duplicate Template Form
    [Documentation]     SC04 - Duplicate Template Form
    [Tags]  TC01 - Duplicate Template Form
    login.Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_form.Move To Template Form
    template_form.Duplicate Template Form
    Capture Page Screenshot