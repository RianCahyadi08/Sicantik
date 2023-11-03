*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../../keywords/login.robot
Resource          ../../keywords/template_form.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - Create New Template Form (Tipe Form) dengan Tidak Otomatis Update
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal    ServiceAwal
    Select Data Table
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    Click Button Buat Tab
    Input Label    Label
    Click Button Simpan Buat Tab
    Click Button Buat Tombol
    Select Jenis Aksi Pengaturan Button
    Input Link Pengaturan Button  https://www.google.com/
    Input Label Pengaturan Button    Label
    Click Button Simpan Buat Tombol
    Input Nama Form    Form Rian I
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Capture Page Screenshot

TC02 - Create New Template Form (Tipe Form) dengan Otomatis Update
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    On Button Otomatis Update
    Select Target Update Otomatis
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal    ServiceAwal
    Select Data Table
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    Click Button Buat Tab
    Input Label    Label
    Click Button Simpan Buat Tab
    Click Button Buat Tombol
    Select Jenis Aksi Pengaturan Button
    Input Link Pengaturan Button  https://www.google.com/
    Input Label Pengaturan Button    Label
    Click Button Simpan Buat Tombol
    Input Nama Form    Form Rian II
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Capture Page Screenshot

TC03 - Create New Template Form (Tipe Table)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    Click Button Buat Filter
    Input Label Pengaturan Filter    Label
    Input Variable Pengaturan Filter    Var
    Select Tipe Pengaturan Filter
    Click Button Simpan Pengaturan Filter
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal    ServiceAwal
    Select Data Table
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    Click Button Buat Tab
    Input Label    Label
    Click Button Simpan Buat Tab
    Click Button Buat Tombol
    Select Jenis Aksi Pengaturan Button
    Input Link Pengaturan Button  https://www.google.com/
    Input Label Pengaturan Button    Label
    Click Button Simpan Buat Tombol
    Input Nama Form    Form Rian III
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Capture Page Screenshot

TC04 - Create New Template Form (Tipe Tabel Grid)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    Click Button Buat Filter
    Input Label Pengaturan Filter    Label
    Input Variable Pengaturan Filter    Var
    Select Tipe Pengaturan Filter
    Click Button Simpan Pengaturan Filter
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal    ServiceAwal
    Select Data Table
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    Click Button Buat Tab
    Input Label    Label
    Click Button Simpan Buat Tab
    Click Button Buat Tombol
    Select Jenis Aksi Pengaturan Button
    Input Link Pengaturan Button  https://www.google.com/
    Input Label Pengaturan Button    Label
    Click Button Simpan Buat Tombol
    Input Nama Form    Form Rian IV
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Capture Page Screenshot

TC05 - Create New Template Form (Tipe Tabel Statik)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    Click Button Buat Filter
    Input Label Pengaturan Filter    Label
    Input Variable Pengaturan Filter    Var
    Select Tipe Pengaturan Filter
    Click Button Simpan Pengaturan Filter
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal    ServiceAwal
    Select Data Table
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    Click Button Buat Tab
    Input Label    Label
    Click Button Simpan Buat Tab
    Click Button Buat Tombol
    Select Jenis Aksi Pengaturan Button
    Input Link Pengaturan Button  https://www.google.com/
    Input Label Pengaturan Button    Label
    Click Button Simpan Buat Tombol
    Input Nama Form    Form Rian V
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Capture Page Screenshot

TC06 - Create New Template Form (Tipe Map)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    Click Button Buat Filter
    Input Label Pengaturan Filter    Label
    Input Variable Pengaturan Filter    Var
    Select Tipe Pengaturan Filter
    Click Button Simpan Pengaturan Filter
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal    ServiceAwal
    Select Data Table
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    Click Button Buat Tab
    Input Label    Label
    Click Button Simpan Buat Tab
    Click Button Buat Tombol
    Select Jenis Aksi Pengaturan Button
    Input Link Pengaturan Button  https://www.google.com/
    Input Label Pengaturan Button    Label
    Click Button Simpan Buat Tombol
    Input Nama Form    Form Rian VI
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Capture Page Screenshot