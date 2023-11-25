*** Settings ***
Documentation       SC03 - Cancel Tanda Tangan Elektronik
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/tte.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - Cancel Tanda Tangan Elektronik
    [Documentation]     SC01 - View Data Tanda Tangan Elektronik
    [Tags]      TC01 - Cancel Tanda Tangan Elektronik
    login.Open Browser To Login Page
    login.Login Admin Instansi
    tte.Move To TTE
    tte.Tab Sudah Ditanda Tangan
    tte.Click Btn Filter
    tte.Input No Permohonan     025/REKOMENDASI/TDI/XI/2023
    tte.Click Btn Tampilkan Hasil
    tte.Click Icon Alur Proses Permohonan
    tte.Click Tanda Terima Berkas TTE
    tte.Click Btn Cancel Sign
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser