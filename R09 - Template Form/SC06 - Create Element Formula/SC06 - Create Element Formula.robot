*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../../keywords/login.robot
Resource          ../../keywords/template_form.robot


*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - Create Element Formula
    [Documentation]     SC06 - Create Element Formula
    [Tags]  TC01 - Create Element Formula
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
    # Buat Element
    Click Button Buat Element
    Input Label Element  label
    Select Type Element
    Select Wajib Element
    Select Data Kolom Element
    Click Button Simpan Element
    # End element
    Input Nama Form    Form Rian I
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Create Perhitungan Formula
    [Documentation]     SC06 - Create Element Formula
    [Tags]  TC01 - Create Perhitungan Formula
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
    # Buat Element
    Click Button Buat Element
    Input Label Element  label
    Select Type Element
    Select Wajib Element
    Select Data Kolom Element
    Click Button Simpan Element
    # End 
    # Edit canvas Formula
    Click Button Edit Canvas Formula
    Click Button Simpan Edit Canvas Formula
    # end
    # Perhitungan formula
    Click Button Buat Element Formula
    Input Label Element Formula     label
    Select Tipe Element Formula
    Select Wajib Element Formula
    Select Data Kolom Element Formula
    Click Button Simpan Element Formula
    # End
    Input Nama Form    Form Rian II
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser


TC03 - Create Formula Grandtotal
    [Documentation]     SC06 - Create Element Formula
    [Tags]  TC01 - Create Perhitungan Formula
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
    # Buat Element
    Click Button Buat Element
    Input Label Element  label
    Select Type Element
    Select Wajib Element
    Select Data Kolom Element
    Click Button Simpan Element
    # End 
    # Edit canvas Formula
    Click Button Edit Canvas Formula
    Click Button Simpan Edit Canvas Formula
    # end
    # Perhitungan formula
    # Click Button Buat Element Formula
    # Input Label Element Formula     label
    # Select Tipe Element Formula
    # Select Wajib Element Formula
    # Select Data Kolom Element Formula
    # Click Button Simpan Element Formula
    # # End
    # # Perhitungan FOrmula
    # Click Button Perhitungan Formula
    # # End
    # Grand total
    Click Button Grand Total
    Select Data Tabel Grand Total
    Select Data Kolom Grand Total
    Click Button Plus Grand Total
    Click Button Simpan Grand Total
    # End

    Input Nama Form    Form Rian III
    Input Field Kunci    Field Kunci
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser