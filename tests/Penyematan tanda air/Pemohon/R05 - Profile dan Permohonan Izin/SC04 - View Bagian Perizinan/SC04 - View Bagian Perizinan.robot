*** Settings ***
Documentation       SC04 - View bagian Perizinan
Library             SeleniumLibrary
Resource            ../../../../../keywords/login.robot
Resource            ../../../../../keywords/pemohon.robot

*** Test Cases ***
TC01 - View Perizinan
    [Documentation]     SC04 - View bagian Perizinan
    [Tags]      TC01 - View Perizinan
    login.Open Browser To Login Page
    login.Login Pemohon
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Move To Perizinan
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Detail Data Perizinan
    [Documentation]     SC04 - View bagian Perizinan
    [Tags]      TC02 - View Detail Data Perizinan
    login.Open Browser To Login Page
    login.Login Pemohon
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Move To Perizinan
    pemohon.Detail Perizinan
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Unduh Data Perizinan
    [Documentation]     SC04 - View bagian Perizinan
    [Tags]      TC03 - Unduh Data Perizinan
    login.Open Browser To Login Page
    login.Login Pemohon
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Move To Perizinan
    pemohon.Unduh Perizinan
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - Unduh Data Perizinan pada Data dengan Rating 0 (New Fitur 2023)
    [Documentation]     SC04 - View bagian Perizinan
    [Tags]      TC04 - Unduh Data Perizinan pada Data dengan Rating 0 (New Fitur 2023)
    login.Open Browser To Login Page
    login.Login Pemohon
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Move To Perizinan
    pemohon.Unduh Perizinan With Rating
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC05 - Unduh Data dan Scan QR Pada Permohonan Yang Masih Berlaku (New Fitur 2023)
    [Documentation]     SC04 - View bagian Perizinan
    [Tags]      TC05 - Unduh Data dan Scan QR Pada Permohonan Yang Masih Berlaku (New Fitur 2023)
    login.Open Browser To Login Page
    login.Login Pemohon
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Move To Perizinan
    pemohon.Unduh Perizinan
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC06 - Unduh Data Pada Permohonan Izin Yang Masa Berlakunya Sudah Habis (New Fitur 2023)
    [Documentation]     SC04 - View bagian Perizinan
    [Tags]      TC06 - Unduh Data Pada Permohonan Izin Yang Masa Berlakunya Sudah Habis (New Fitur 2023)
    login.Open Browser To Login Page
    login.Login Pemohon
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Move To Perizinan
    pemohon.Unduh Perizinan Tidak Berlaku
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC07 - Scan QR Pada Permohonan Izin Yang Masa Berlakunya Sudah Habis (New Fitur 2023) *data Dokumen Ini diunduh sebelum masa berlakunya habis, tetapi melakukan scan qr setelah masa berlakunya sudah habis
    [Documentation]     SC04 - View bagian Perizinan
    [Tags]      TC07 - Scan QR Pada Permohonan Izin Yang Masa Berlakunya Sudah Habis (New Fitur 2023) *data Dokumen Ini diunduh sebelum masa berlakunya habis, tetapi melakukan scan qr setelah masa berlakunya sudah habis
    login.Open Browser To Login Page
    login.Login Pemohon
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Move To Perizinan
    pemohon.Unduh Perizinan
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser