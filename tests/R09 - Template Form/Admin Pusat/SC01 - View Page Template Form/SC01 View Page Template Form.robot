*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../../../keywords/login.robot
Resource          ../../../keywords/template_form.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - View Page Template Form
    [Documentation]     SC01 - View Page Template Form
    [Tags]  TC01 - View Page Template Form
    login.Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_form.Move To Template Form
    Capture Page Screenshot

TC02 - Search Template Form
    [Documentation]     SC01 - View Page Template Form
    [Tags]  TC02 - Search Template Form
    login.Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_form.Move To Template Form
    template_form.Click Button Filter
    template_form.Input ID Template    52472
    template_form.Input Nama Template Form    SAMOSIR ENTRY DATA-IZIN PRAKTIK TEKNIS KEFARMASIAN
    template_form.Click Button Tampilkan Hasil
    Capture Page Screenshot

TC03 - View Detail Template Form
    [Documentation]     SC01 - View Page Template Form
    [Tags]  TC03 - View Detail Template Form
    login.Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_form.Move To Template Form
    template_form.Detail Template Form
    Capture Page Screenshot