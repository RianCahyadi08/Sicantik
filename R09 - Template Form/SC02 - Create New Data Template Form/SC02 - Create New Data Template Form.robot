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
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC01 - Create New Template Form (Tipe Form) dengan Tidak Otomatis Update
    Open Browser To Login Page
    Input Username      admegov
    Input Password      Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    # buat canvas
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Form Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal Canvas  webServiceAwal
    Select Data Table Canvas
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    # end buat canvas
    # buat tab
    Click Button Buat Tab
    Input Label Buat Tab  label
    Click Button Simpan Buat Tab
    # ebd buat tab
    # buat tombol
    Click Button Buat Tombol
    Select Jenis Aksi Buat Tombol
    Input Link Buat Tombol  https://www.google.com/
    Input Label Buat Tombol  label
    Click Button Simpan Buat Tombol
    # end
    Input Nama Form    Form Rian I
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Create New Template Form (Tipe Form) dengan Otomatis Update
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC02 - Create New Template Form (Tipe Form) dengan Otomatis Update
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    On Button Otomatis Update
    Select Target Update Otomatis
    # canvas
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Form Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal Canvas  webServiceAwal
    Select Data Table Canvas
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    # end canvas
    # buat tab
    Click Button Buat Tab
    Input Label Buat Tab  label
    Click Button Simpan Buat Tab
    # end buat tab
    # buat tombol
    Click Button Buat Tombol
    Select Jenis Aksi Buat Tombol
    Input Link Buat Tombol  https://www.google.com/
    Input Label Buat Tombol  label
    Click Button Simpan Buat Tombol
    # end buat tombol
    Input Nama Form    Form Rian II
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Create New Template Form (Tipe Table)
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC03 - Create New Template Form (Tipe Table)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    # Buat filter
    Click Button Buat Filter
    Input Label Pengaturan Filter    Label
    Input Variable Pengaturan Filter    Var
    Select Tipe Pengaturan Filter
    Click Button Simpan Pengaturan Filter
    # end filter
    # Canvas
    Click button buat Canvas
    Input Tab Index Canvas  1
    Select Tipe Tabel Canvas
    Input Nama Canvas  namaCanvas
    Input Web Service Awal Canvas  webServiceAwal
    Select Data Table Canvas
    Input No Urut Canvas  1
    Click Button Simpan Canvas
    # End Canvas
    # Tab
    Click Button Buat Tab
    Input Label Buat Tab  label
    Click Button Simpan Buat Tab
    # End Tab
    # Buat tombol
    Click Button Buat Tombol
    Select Jenis Aksi Buat Tombol
    Input Link Buat Tombol  https://www.google.com/
    Input Label Buat Tab  label
    Click Button Simpan Buat Tombol
    # End buat tombol
    Input Nama Form    Form Rian III
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - Create New Template Form (Tipe Tabel Grid)
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC04 - Create New Template Form (Tipe Tabel Grid)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    # Buat Filter
    Click Button Buat Filter
    Input Label Pengaturan Filter    Label
    Input Variable Pengaturan Filter    Var
    Select Tipe Pengaturan Filter
    Click Button Simpan Pengaturan Filter
    # End buat filter
    # Buat canvas
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Tabel Grid Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal Canvas  webServiceAwal
    Select Data Table Canvas
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    # End buat canvas
    # Buat tab
    Click Button Buat Tab
    Input Label Buat Tab  label
    Click Button Simpan Buat Tab
    Click Button Buat Tombol
    Select Jenis Aksi Buat Tombol
    Input Link Buat Tombol      https://www.google.com/
    Input Label Buat Tombol     Label
    Click Button Simpan Buat Tombol
    # End buat tombol
    Input Nama Form    Form Rian IV
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC05 - Create New Template Form (Tipe Tabel Statik)
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC05 - Create New Template Form (Tipe Tabel Statik)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    # Buat Filter
    Click Button Buat Filter
    Input Label Pengaturan Filter    Label
    Input Variable Pengaturan Filter    Var
    Select Tipe Pengaturan Filter
    Click Button Simpan Pengaturan Filter
    # End buat filter
    # Buat canvas
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Tabel Static Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal Canvas  webServiceAwal
    Select Data Table Canvas
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    # End buat canvas
    # Buat tab
    Click Button Buat Tab
    Input Label Buat Tab  label
    Click Button Simpan Buat Tab
    Click Button Buat Tombol
    Select Jenis Aksi Buat Tombol
    Input Link Buat Tombol      https://www.google.com/
    Input Label Buat Tombol     Label
    Click Button Simpan Buat Tombol
    # End buat tombol
    Input Nama Form    Form Rian V
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC06 - Create New Template Form (Tipe Map)
    [Documentation]     SC02 - Create New Data Template Form
    [Tags]  TC06 - Create New Template Form (Tipe Map)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Button Add
    # Buat Filter
    Click Button Buat Filter
    Input Label Pengaturan Filter    Label
    Input Variable Pengaturan Filter    Var
    Select Tipe Pengaturan Filter
    Click Button Simpan Pengaturan Filter
    # End buat filter
    # Buat canvas
    Click Button Buat Canvas
    Input Tab Index Canvas    1
    Select Tipe Tabel Map Canvas
    Input Nama Canvas    Nama canvas
    Input Web Service Awal Canvas  webServiceAwal
    Select Data Table Canvas
    Input No Urut Canvas    1
    Click Button Simpan Canvas
    # End buat canvas
    # Buat tab
    Click Button Buat Tab
    Input Label Buat Tab  label
    Click Button Simpan Buat Tab
    Click Button Buat Tombol
    Select Jenis Aksi Buat Tombol
    Input Link Buat Tombol      https://www.google.com/
    Input Label Buat Tombol     Label
    Click Button Simpan Buat Tombol
    # End buat tombol
    Input Nama Form    Form Rian VI
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser