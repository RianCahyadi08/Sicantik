*** Settings ***
Documentation       SC03 - Update Data Notifikasi
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/notifikasi.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Update Data Notifikasi (ex. Pendaftaran)
    [Documentation]     SC03 - Update Data Notifikasi
    [Tags]      TC01 - Update Data Notifikasi (ex. Pendaftaran)
    Open Browser To Login Page
    login.Login Admin Instansi
    login.Submit Credentials
    notifikasi.Move To Notification
    notifikasi.Click Button Filter
    notifikasi.Input Jenis Izin    tes ok demo
    notifikasi.Click Button Tampilkan Hasil
    notifikasi.Click Icon Pencil
    notifikasi.Select Tipe    Push Notifikasi
    notifikasi.Select Penerima    Pemohon
    notifikasi.Click Modal Edit Pesan
    notifikasi.Input Pesan      Lorem update
    notifikasi.Click Button Simpan In Modal
    notifikasi.Click Button Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser