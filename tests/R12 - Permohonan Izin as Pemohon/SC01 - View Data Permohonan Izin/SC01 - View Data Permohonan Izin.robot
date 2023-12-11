*** Settings ***
Documentation       SC01 - View Data Permohonan Izin.robot
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/pemohon.robot

*** Test Cases ***
TC01 - View Data Permohonan Izin
    [Documentation]     SC01 - View Data Permohonan Izin.robot
    [Tags]      TC01 - View Data Permohonan Izin
    Open Browser To Login Page
    login.Input Username    kartu1
    login.Input Password    Kartu123*@#
    login.Submit Credentials
    pemohon.Move To Profile And Permohonan Izin
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Filter Data Permohonan Izin
    [Documentation]     SC01 - View Data Permohonan Izin.robot
    [Tags]      TC02 - Filter Data Permohonan Izin
    Open Browser To Login Page
    login.Input Username    kartu1
    login.Input Password    Kartu123*@#
    login.Submit Credentials
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Click Button Filter
    pemohon.Input No Permohonan    038/Test Uji Penomoran A11/XI/2023
    pemohon.Input Jenis Izin    Uji Jenis Izin Penomoran
    pemohon.Click Button Tampilkan Hasil
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Detail Data Permohonan Izin
    [Documentation]     SC01 - View Data Permohonan Izin.robot
    [Tags]      TC03 - View Detail Data Permohonan Izin
    Open Browser To Login Page
    login.Input Username    kartu1
    login.Input Password    Kartu123*@#
    login.Submit Credentials
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Click Icon Eye
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser