*** Settings ***
Documentation       SC01 - QR Code Logo
Library             SeleniumLibrary
Resource            ../../keywords/login.robot
Resource            ../../keywords/qr_code_logo.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - QR Code Logo
    [Documentation]     SC01 - QR Code Logo
    [Tags]      TC01 - QR Code Logo
    login.Open Browser To Login Page
    login.Login Jabatan Satu
    qr_code_logo.Move To Proses Permohonan
    qr_code_logo.Click Button Filter
    qr_code_logo.Input No Permohonan    0142/DPMPTSP/27/demokab/IX/2023
    qr_code_logo.Click Button Tampilkan Hasil
    qr_code_logo.Click Alur Proses Permohonan
    qr_code_logo.Click Tanda Tangan Sertifikat
    qr_code_logo.Click Preview Dokumen
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser