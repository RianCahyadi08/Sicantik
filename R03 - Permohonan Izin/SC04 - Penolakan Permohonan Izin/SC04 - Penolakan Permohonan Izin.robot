*** Settings ***
Documentation       SC04 - Penolakan Permohonan Izin
Library             SeleniumLibrary
Resource            ../../keywords/login.robot
Resource            ../../keywords/permohonan_izin.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Penolakan Permohonan Izin
    [Documentation]     SC04 - Penolakan Permohonan Izin
    [Tags]      TC01 - Penolakan Permohonan Izin
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    permohonan_izin.Move To Permohonan Izin Module
    permohonan_izin.Click Button Edit
    permohonan_izin.Click Button Tolak Permohonan
    permohonan_izin.Input Alasan    Salah upload file
    permohonan_izin.Upload File Lampiran    E:\\#LearnRobotFramework\\cat.jpg
    permohonan_izin.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser