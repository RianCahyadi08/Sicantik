*** Settings ***
Documentation       SC02 - Create Data Permohonan Izin
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/pemohon.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Create Data Permohonan Izin
    [Documentation]     SC02 - Create Data Permohonan Izin
    [Tags]      TC01 - Create Data Permohonan Izin
    login.Open Browser To Login Page
    login.Input Username      kartu1
    login.Input Password      Kartu123*@#
    login.Submit Credentials
    Page Should Contain Element     css:span.text-white     Home    None    None
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Move To Add Permohonan
    pemohon.Select Jenis Permohonan  Baru
    pemohon.Select Instansi  Demo2
    pemohon.Select Jenis Izin  Uji Jenis Izin
    pemohon.Click Button Selanjutnya
    pemohon.Verify Keterangan Lokasi
    pemohon.Click Button Selanjutnya
    pemohon.Verify Tipe Pemohon
    pemohon.Select Perseorangan
    pemohon.Click Button Selanjutnya
    pemohon.Verify Perorangan
    pemohon.Click Button Selanjutnya
    pemohon.Verify Persyaratan Document
    pemohon.Click Button Selanjutnya
    pemohon.Verify Proyek
    pemohon.Click Button Simpan
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser