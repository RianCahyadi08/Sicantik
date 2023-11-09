*** Settings ***
Documentation       SC03 - Update Data Service Eksternal
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/web_service_eksternal.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Update Data Service Eksternal (Basic Authentication)
    [Documentation]     SC03 - Update Data Service Eksternal
    [Tags]      TC01 - Update Data Service Eksternal (Basic Authentication)
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    web_service_eksternal.Move To Web Service Eksternal
    web_service_eksternal.Input Search    Basic Auth
    web_service_eksternal.Click Icon Pencil
    web_service_eksternal.Input Nama    Basic Authentication Update
    web_service_eksternal.Select Tipe Web Service    External
    web_service_eksternal.Select Tipe Otentikasi    Basic
    web_service_eksternal.Input Base Url    www.webserviceeksternalupdate.com
    web_service_eksternal.Input Username    rianupdate
    web_service_eksternal.Input Password    P@55wordUpdate
    web_service_eksternal.Input Deskripsi    LoremUpdate
    web_service_eksternal.Click Button Simpan
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Update Data Service Eksternal (Bearer Token)
    [Documentation]     SC03 - Update Data Service Eksternal
    [Tags]      TC02 - Update Data Service Eksternal (Bearer Token)
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    web_service_eksternal.Move To Web Service Eksternal
    web_service_eksternal.Input Search    Bearer Token
    web_service_eksternal.Click Icon Pencil
    web_service_eksternal.Input Nama    Bearer Token Update
    web_service_eksternal.Select Tipe Web Service    Validasi
    web_service_eksternal.Select Tipe Integrasi    Custom
    web_service_eksternal.Select Tipe Otentikasi    With Auth
    web_service_eksternal.Input Base Url    www.webserviceeksternalupdate.com
    web_service_eksternal.Input Username    rianupdate
    web_service_eksternal.Input Password    P@55wordUpdate
    web_service_eksternal.Input Deskripsi    LoremUpdate
    web_service_eksternal.Click Button Simpan
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser