*** Settings ***
Documentation       SC02 - Create New Data Service Eksternal
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/web_service_eksternal.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Create New Data Service Eksternal (Tipe Otentifikasi : Basic Authentication)
    [Documentation]     SC02 - Create New Data Service Eksternal
    [Tags]      TC01 - Create New Data Service Eksternal (Tipe Otentifikasi : Basic Authentication)
    Open Browser To Login Page
    login.Login Admin Instansi
    login.Submit Credentials
    web_service_eksternal.Move To Web Service Eksternal
    web_service_eksternal.Move To Web Service Eksternal Add
    web_service_eksternal.Input Nama    Basic Authentication
    web_service_eksternal.Select Tipe Web Service    External
    web_service_eksternal.Select Tipe Otentikasi    Basic
    web_service_eksternal.Input Base Url    www.webserviceeksternal.com
    web_service_eksternal.Input Username    rian
    web_service_eksternal.Input Password    P@55word
    web_service_eksternal.Input Deskripsi    Lorem
    Capture Page Screenshot
    web_service_eksternal.Click Button Simpan
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Create New Data Service Eksternal (Tipe Otentifikasi : Bearer Token)
    [Documentation]     SC02 - Create New Data Service Eksternal
    [Tags]      TC02 - Create New Data Service Eksternal (Tipe Otentifikasi : Bearer Token)
    Open Browser To Login Page
    login.Login Admin Instansi
    login.Submit Credentials
    web_service_eksternal.Move To Web Service Eksternal
    web_service_eksternal.Move To Web Service Eksternal Add
    web_service_eksternal.Input Nama    Bearer Token
    web_service_eksternal.Select Tipe Web Service    Validasi
    web_service_eksternal.Select Tipe Integrasi    SPLP
    web_service_eksternal.Select Tipe Otentikasi    With Auth
    web_service_eksternal.Input Base Url    www.webserviceeksternal.com
    web_service_eksternal.Input Username    rian
    web_service_eksternal.Input Password    P@55word
    web_service_eksternal.Input Deskripsi    Lorem
    Capture Page Screenshot
    web_service_eksternal.Click Button Simpan
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser