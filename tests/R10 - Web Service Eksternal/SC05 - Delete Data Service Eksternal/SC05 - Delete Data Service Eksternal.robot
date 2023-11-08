*** Settings ***
Documentation       SC05 - Delete Data Service Eksternal
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/web_service_eksternal.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Delete Detail Data Service Eksternal
    [Documentation]     SC05 - Delete Data Service Eksternal
    [Tags]      TC01 - Delete Detail Data Service Eksternal
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    web_service_eksternal.Move To Web Service Eksternal
    web_service_eksternal.Input Search    testebing
    web_service_eksternal.Delete Web Service Eksternal
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser