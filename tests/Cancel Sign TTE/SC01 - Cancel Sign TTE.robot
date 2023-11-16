*** Settings ***
Documentation       SC01 - Cancel Sign TTE
Library             SeleniumLibrary
Resource            ../../keywords/login.robot
Resource            ../../keywords/cancel_sign_tte.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Cancel Sign TTE
    [Documentation]     SC01 - Cancel Sign TTE
    [Tags]      TC01 - Cancel Sign TTE
    login.Open Browser To Login Page
    login.Login Jabatan Satu
    cancel_sign_tte.Move To Proses Permohonan
    cancel_sign_tte.Click Button Filter
    cancel_sign_tte.Input No Permohonan    052/Test Uji Penomoran A11/XI/2023
    cancel_sign_tte.Click Button Tampilkan Hasil
    cancel_sign_tte.Click Alur Proses Permohonan
    cancel_sign_tte.Click Tanda Terima Berkas TTE
    cancel_sign_tte.Click Button Cancel Sign
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser