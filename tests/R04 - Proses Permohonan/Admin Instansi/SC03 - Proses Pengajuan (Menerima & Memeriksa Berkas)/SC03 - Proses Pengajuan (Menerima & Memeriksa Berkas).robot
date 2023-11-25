*** Settings ***
Documentation       SC03 - Proses Pengajuan (Menerima & Memeriksa Berkas)
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/proses_permohonan.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Proses Pengajuan (Menerima & Memeriksa Berkas)
    [Documentation]     SC03 - Proses Pengajuan (Menerima & Memeriksa Berkas)
    [Tags]      TC01 Proses Pengajuan (Menerima & Memeriksa Berkas)
    login.Open Browser To Login Page
    login.Login Admin Instansi
    proses_permohonan.Move To Proses Permohonan
    proses_permohonan.Click Icon Alur Proses Permohonan
    proses_permohonan.Click Menerima & Memeriksa Berkas
    proses_permohonan.Verify Jenis Permohonan
    proses_permohonan.Verify Instansi
    proses_permohonan.Verify Unit
    proses_permohonan.Verify Jenis Izin
    proses_permohonan.Click Button Selanjutnya
    proses_permohonan.Verify Keterangan Lokasi
    proses_permohonan.Click Button Selanjutnya
    proses_permohonan.Verify Nama Lengkap
    proses_permohonan.Verify Tipe Identitas
    proses_permohonan.Verify No Identitas
    proses_permohonan.Verify NPWP
    proses_permohonan.Verify Jenis Kelamin
    proses_permohonan.Verify Pekerjaan
    proses_permohonan.Verify Tempat lahir
    proses_permohonan.Verify No Telp
    proses_permohonan.Verify No Hp
    proses_permohonan.Verify Alamat Email
    proses_permohonan.Verify Provinsi
    proses_permohonan.Verify Alamat Lengkap
    proses_permohonan.Click Button Selanjutnya
    proses_permohonan.Verify Jenis Perusahaan
    proses_permohonan.Click Button Selanjutnya
    proses_permohonan.Click Button Selanjutnya
    proses_permohonan.Verify Jenis Proyek
    proses_permohonan.Verify Target PAD
    proses_permohonan.Verify Nilai Investigasi
    proses_permohonan.Verify Jumlah Tenaga Kerja
    proses_permohonan.Click Button Selanjutnya
    proses_permohonan.Click Button Proses Berikutnya
    Sleep   10s
    Capture Page Screenshot
    [Teardown]    Close Browser