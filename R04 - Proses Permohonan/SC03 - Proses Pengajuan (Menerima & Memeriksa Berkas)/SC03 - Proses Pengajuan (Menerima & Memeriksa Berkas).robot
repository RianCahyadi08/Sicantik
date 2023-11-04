*** Settings ***
Documentation       SC03 - Proses Pengajuan (Menerima & Memeriksa Berkas)
Library             SeleniumLibrary
Resource            ../../keywords/login.robot
Resource            ../../keywords/proses_permohonan.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Proses Pengajuan (Menerima & Memeriksa Berkas)
    [Documentation]     SC03 - Proses Pengajuan (Menerima & Memeriksa Berkas)
    [Tags]      TC01 Proses Pengajuan (Menerima & Memeriksa Berkas)
    Open Browser To Login Page
    Input Username      admegov
    Input Password      Admegov789*@#
    Submit Credentials
    Move To Proses Permohonan
    Click Icon Alur Proses Permohonan
    Click Menerima & Memeriksa Berkas
    Verify Jenis Permohonan
    Verify Instansi
    Verify Unit
    Verify Jenis Izin
    Click Button Selanjutnya
    Verify Keterangan Lokasi
    Click Button Selanjutnya
    Verify Nama Lengkap
    Verify Tipe Identitas
    Verify No Identitas
    Verify NPWP
    Verify Jenis Kelamin
    Verify Pekerjaan
    Verify Tempat lahir
    Verify No Telp
    Verify No Hp
    Verify Alamat Email
    Verify Provinsi
    Verify Alamat Lengkap
    Click Button Selanjutnya
    Verify Jenis Perusahaan
    Click Button Selanjutnya
    Click Button Selanjutnya
    Verify Jenis Proyek
    Verify Target PAD
    Verify Nilai Investigasi
    Verify Jumlah Tenaga Kerja
    Click Button Selanjutnya
    Click Button Proses Berikutnya
    Sleep   10s
    Capture Page Screenshot
    [Teardown]    Close Browser