*** Settings ***
Documentation       SC01 - Penyematan Tanda Air
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/pemohon.robot

*** Test Cases ***
TC01 - Unduh Data Permohonan Izin Yang Masih Berlaku (New Fitur 2023)
    [Documentation]     SC01 - Penyematan Tanda Air
    [Tags]      TC01 - Unduh Data Permohonan Izin Yang Masih Berlaku (New Fitur 2023)
    login.Open Browser To Login Page
    login.Login Pemohon
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Click Btn Filter
    pemohon.Input No Permohonan     BIMTEK/BEKASI/0007/IT/KOMINFO/XII/2023
    pemohon.Click Btn Tampilkan Hasil
    pemohon.Click Icon Alur Proses Permohonan
    pemohon.Unduh Izin Berlaku
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Unduh Data Permohonan Izin Yang Masa Berlakunya Sudah Habis (New Fitur 2023)
    [Documentation]     SC01 - Penyematan Tanda Air
    [Tags]      TC02 - Unduh Data Permohonan Izin Yang Masa Berlakunya Sudah Habis (New Fitur 2023)
    login.Open Browser To Login Page
    login.Login Pemohon
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Click Btn Filter
    pemohon.Input No Permohonan    BIMTEK/BEKASI/0008/IT/KOMINFO/XII/2023
    pemohon.Click Btn Tampilkan Hasil
    pemohon.Click Icon Alur Proses Permohonan
    pemohon.Unduh Izin Tidak Berlaku
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser