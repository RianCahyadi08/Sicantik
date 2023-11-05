*** Settings ***
Documentation       SC03 - Proses Pengajuan (Menerima & Memeriksa Berkas)
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/pemohon.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Proses Pengajuan (Menerima & Memeriksa Berkas)
    [Documentation]     SC03 - Proses Pengajuan (Menerima & Memeriksa Berkas)
    [Tags]      TC01 - Proses Pengajuan (Menerima & Memeriksa Berkas)
    login.Open Browser To Login Page
    login.Input Username      kartu1
    login.Input Password      Kartu123*@#
    login.Submit Credentials
    pemohon.Page Should Contain Element     css:span.text-white     Home    None    None
    pemohon.Move To Profile And Permohonan Izin
    pemohon.Move To Add Permohonan
    pemohon.Select Jenis Permohonan  Baru
    pemohon.Select Instansi  Demo2
    pemohon.Select Jenis Izin  Uji Jenis Izin
    pemohon.Click Button Selanjutnya
    pemohon.Click Button Selanjutnya
    pemohon.Select Perseorangan
    pemohon.Click Button Selanjutnya
    pemohon.Click Button Selanjutnya
    pemohon.Click Button Selanjutnya
    pemohon.Click Button Simpan
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser