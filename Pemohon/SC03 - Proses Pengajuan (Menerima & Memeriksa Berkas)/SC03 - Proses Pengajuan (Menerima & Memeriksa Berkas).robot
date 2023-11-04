*** Settings ***
Documentation       SC03 - Proses Pengajuan (Menerima & Memeriksa Berkas)
Library             SeleniumLibrary
Resource            ../../keywords/login.robot
Resource            ../../keywords/pemohon.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Proses Pengajuan (Menerima & Memeriksa Berkas)
    [Documentation]     SC03 - Proses Pengajuan (Menerima & Memeriksa Berkas)
    [Tags]      TC01 - Proses Pengajuan (Menerima & Memeriksa Berkas)
    Open Browser To Login Page
    Input Username      kartu1
    Input Password      Kartu123*@#
    Submit Credentials
    Page Should Contain Element     css:span.text-white     Home    None    None
    Move To Profile And Permohonan Izin
    Move To Add Permohonan
    Select Jenis Permohonan  Baru
    Select Instansi  Demo2
    Select Jenis Izin  Uji Jenis Izin
    pemohon.Click Button Selanjutnya
    pemohon.Click Button Selanjutnya
    Select Perseorangan
    pemohon.Click Button Selanjutnya
    pemohon.Click Button Selanjutnya
    pemohon.Click Button Selanjutnya
    pemohon.Click Button Simpan
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser