*** Settings ***
Documentation       SC04 - View Detail Data Service Eksternal
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/web_service_eksternal.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Detail Data Service Eksternal
    [Documentation]     SC04 - View Detail Data Service Eksternal
    [Tags]      TC01 - View Detail Data Service Eksternal
    Open Browser To Login Page
    login.Login Admin Instansi
    login.Submit Credentials
    web_service_eksternal.Move To Web Service Eksternal
    web_service_eksternal.Click Icon Eye
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser