*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../../keywords/login.robot
Resource          ../../keywords/template_form.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - View Page Template Form
    [Documentation]     SC01 - View Page Template Form
    [Tags]  TC01 - View Page Template Form
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Capture Page Screenshot

TC02 - Search Template Form
    [Documentation]     SC01 - View Page Template Form
    [Tags]  TC02 - Search Template Form
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Filter
    Input ID Template    52472
    Input Nama Template Form    SAMOSIR ENTRY DATA-IZIN PRAKTIK TEKNIS KEFARMASIAN
    Click Button Tampilkan Hasil
    Capture Page Screenshot

TC03 - View Detail Template Form
    [Documentation]     SC01 - View Page Template Form
    [Tags]  TC03 - View Detail Template Form
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Detail Template Form
    Capture Page Screenshot