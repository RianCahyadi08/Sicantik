*** Settings ***
Documentation       SC01 - View Web Service Eksternal
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/web_service_eksternal.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Service Eksternal
    [Documentation]     SC01 - View Web Service Eksternal
    [Tags]      TC01 - View Service Eksternal
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    web_service_eksternal.Move To Web Service Eksternal
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser