*** Settings ***
Documentation       SC01 - View Page Daftar Izin
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/daftar_izin.robot

*** Test Cases ***
TC01 - View Data Daftar Izin
    [Documentation]     SC01 - View Page Daftar Izin
    [Tags]      TC01 - View Data Daftar Izin
    login.Open Browser To Login Page
    login.Login Admin Instansi
    daftar_izin.Move To Daftar Izin
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Filter Data Daftar Izin
    [Documentation]     SC01 - View Page Daftar Izin
    [Tags]      TC02 - Filter Data Daftar Izin
    login.Open Browser To Login Page
    login.Login Admin Instansi
    daftar_izin.Move To Daftar Izin
    daftar_izin.Click Btn Filter
    daftar_izin.Input No Permohonan    BIMTEK/BEKASI/0008/IT/KOMINFO/XII/2023
    daftar_izin.Click Btn Tampilkan Hasil
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Detail Data Permohonan Izin
    [Documentation]     SC01 - View Page Daftar Izin
    [Tags]      TC03 - View Detail Data Permohonan Izin
    login.Open Browser To Login Page
    login.Login Admin Instansi
    daftar_izin.Move To Daftar Izin
    daftar_izin.Detail
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - Unduh Data Permohonan Izin Yang Masih Berlaku (New Fitur 2023)
    [Documentation]     SC01 - View Page Daftar Izin
    [Tags]      TC04 - Unduh Data Permohonan Izin Yang Masih Berlaku (New Fitur 2023)
    login.Open Browser To Login Page
    login.Login Admin Instansi
    daftar_izin.Move To Daftar Izin
    daftar_izin.Click Btn Filter
    daftar_izin.Input No Permohonan    BIMTEK/BEKASI/0007/IT/KOMINFO/XII/2023
    daftar_izin.Click Btn Tampilkan Hasil
    daftar_izin.Click Alur Proses Permohonan
    daftar_izin.Unduh Permohonan Masih Berlaku
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC05 - Unduh Data Permohonan Izin Yang Masa Berlakunya Sudah Habis (New Fitur 2023)
    [Documentation]     SC01 - View Page Daftar Izin
    [Tags]      TC04 - Unduh Data Permohonan Izin Yang Masa Berlakunya Sudah Habis (New Fitur 2023)
    login.Open Browser To Login Page
    login.Login Admin Instansi
    daftar_izin.Move To Daftar Izin
    daftar_izin.Click Btn Filter
    daftar_izin.Input No Permohonan    BIMTEK/BEKASI/0007/IT/KOMINFO/XII/2023
    daftar_izin.Click Btn Tampilkan Hasil
    daftar_izin.Click Alur Proses Permohonan
    daftar_izin.Unduh Permohonan Tidak berlaku
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser