*** Settings ***
Documentation       Notifikasi Dua Arah
Library             SeleniumLibrary
Resource            ../../keywords/login.robot
Resource            ../../keywords/notifikasi.robot

*** Test Cases ***
TC01 - View Notification
    [Documentation]     Notifikasi Dua Arah
    [Tags]      TC01 - View Notification
    Open Browser To Login Page
    login.Login Pengguna Satu
    notifikasi.Click Icon Notification
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - View Lihat Semua Pengumuman
    [Documentation]     Notifikasi Dua Arah
    [Tags]      TC02 - View Lihat Semua Pengumuman
    Open Browser To Login Page
    login.Login Pengguna Satu
    notifikasi.Click Icon Notification
    notifikasi.Click Lihat Semua Pengumuman
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - View Informasi Notifikasi
    [Documentation]     Notifikasi Dua Arah
    [Tags]      TC03 - View Informasi Notifikasi
    Open Browser To Login Page
    login.Login Pengguna Satu
    notifikasi.Click Icon Notification
    notifikasi.Click Tab Notification Informasi
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - View Lihat Semua Informasi Notifikasi
    [Documentation]     Notifikasi Dua Arah
    [Tags]      TC04 - View Lihat Semua Informasi Notifikasi
    Open Browser To Login Page
    login.Login Pengguna Satu
    notifikasi.Click Icon Notification
    notifikasi.Click Tab Notification Informasi
    notifikasi.Click Lihat Semua Informasi
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC05 - View Notification Dua Arah
    [Documentation]     Notifikasi Dua Arah
    [Tags]      TC05 - View Notification Dua Arah
    Open Browser To Login Page
    login.Login Pengguna Satu
    notifikasi.Click Icon Notification
    notifikasi.Click Tab Notification Informasi
    notifikasi.Click Lihat Semua Informasi
    notifikasi.Click Tab Informasi
    notifikasi.Click Icon Eye Notification
    Sleep       3s
    Capture Page Screenshot
    [Teardown]    Close Browser