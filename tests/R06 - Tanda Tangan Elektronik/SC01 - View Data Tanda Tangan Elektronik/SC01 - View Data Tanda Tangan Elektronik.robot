*** Settings ***
Documentation       SC01 - View Data Tanda Tangan Elektronik
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/penomoran.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Data Tanda Tangan Elektronik
    [Documentation]     SC01 - View Data Tanda Tangan Elektronik
    [Tags]      TC01 - View Data Tanda Tangan Elektronik
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser