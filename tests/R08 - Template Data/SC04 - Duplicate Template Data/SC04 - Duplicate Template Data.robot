*** Settings ***
Documentation       SC04 - Duplicate Template Data
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/template_data.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Duplicate Template Data
    [Documentation]     SC04 - Duplicate Template Data
    [Tags]      TC01 - Duplicate Template Data
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_data.Move To Template Data
    template_data.Duplicate Template Data
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser