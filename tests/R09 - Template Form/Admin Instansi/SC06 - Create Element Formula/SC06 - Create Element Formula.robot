*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../../../../keywords/login.robot
Resource          ../../../../keywords/template_form.robot


*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - Create Element Formula
    [Documentation]     SC06 - Create Element Formula
    [Tags]  TC01 - Create Element Formula
    login.Open Browser To Login Page
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Click Button Add
    # buat canvas
    template_form.Click Button Buat Canvas
    template_form.Input Tab Index Canvas    1
    template_form.Select Tipe Form Canvas
    template_form.Input Nama Canvas    Nama canvas
    template_form.Input Web Service Awal Canvas  webServiceAwal
    template_form.Select Data Table Canvas
    template_form.Input No Urut Canvas    1
    template_form.Click Button Simpan Canvas
    # end buat canvas
    # buat tab
    template_form.Click Button Buat Tab
    template_form.Input Label Buat Tab  label
    template_form.Click Button Simpan Buat Tab
    # ebd buat tab
    # buat tombol
    template_form.Click Button Buat Tombol
    template_form.Select Jenis Aksi Buat Tombol
    template_form.Input Link Buat Tombol  https://www.google.com/
    template_form.Input Label Buat Tombol  label
    template_form.Click Button Simpan Buat Tombol
    # end
    # Buat Element
    template_form.Click Button Buat Element
    template_form.Input Label Element  label
    template_form.Select Type Element
    template_form.Select Wajib Element
    template_form.Select Data Kolom Element
    template_form.Click Button Simpan Element
    # End element
    template_form.Input Nama Form    Form Rian I
    template_form.Input Field Kunci    Field Kunci
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Create Perhitungan Formula
    [Documentation]     SC06 - Create Element Formula
    [Tags]  TC02 - Create Perhitungan Formula
    login.Open Browser To Login Page
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Click Button Add
    # buat canvas
    template_form.Click Button Buat Canvas
    template_form.Input Tab Index Canvas    1
    template_form.Select Tipe Form Canvas
    template_form.Input Nama Canvas    Nama canvas
    template_form.Input Web Service Awal Canvas  webServiceAwal
    template_form.Select Data Table Canvas
    template_form.Input No Urut Canvas    1
    template_form.Click Button Simpan Canvas
    # end buat canvas
    # buat tab
    template_form.Click Button Buat Tab
    template_form.Input Label Buat Tab  label
    template_form.Click Button Simpan Buat Tab
    # ebd buat tab
    # buat tombol
    template_form.Click Button Buat Tombol
    template_form.Select Jenis Aksi Buat Tombol
    template_form.Input Link Buat Tombol  https://www.google.com/
    template_form.Input Label Buat Tombol  label
    template_form.Click Button Simpan Buat Tombol
    # end
    # Buat Element
    template_form.Click Button Buat Element
    template_form.Input Label Element  label
    template_form.Select Type Element
    template_form.Select Wajib Element
    template_form.Select Data Kolom Element
    template_form.Click Button Simpan Element
    # End 
    # Edit canvas Formula
    template_form.Click Button Edit Canvas Formula
    template_form.Click Button Simpan Edit Canvas Formula
    # end
    # Perhitungan formula
    template_form.Click Button Buat Element Formula
    template_form.Input Label Element Formula     label
    template_form.Select Tipe Element Formula
    template_form.Select Wajib Element Formula
    template_form.Select Data Kolom Element Formula
    template_form.Click Button Simpan Element Formula
    # End
    template_form.Input Nama Form    Form Rian II
    template_form.Input Field Kunci    Field Kunci
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser


TC03 - Create Formula Grandtotal
    [Documentation]     SC06 - Create Element Formula
    [Tags]  TC03 - Create Formula Grandtotal
    login.Open Browser To Login Page
    login.Login Admin Instansi
    template_form.Move To Template Form
    template_form.Click Button Add
    # buat canvas
    template_form.Click Button Buat Canvas
    template_form.Input Tab Index Canvas    1
    template_form.Select Tipe Form Canvas
    template_form.Input Nama Canvas    Nama canvas
    template_form.Input Web Service Awal Canvas  webServiceAwal
    template_form.Select Data Table Canvas
    template_form.Input No Urut Canvas    1
    template_form.Click Button Simpan Canvas
    # end buat canvas
    # buat tab
    template_form.Click Button Buat Tab
    template_form.Input Label Buat Tab  label
    template_form.Click Button Simpan Buat Tab
    # ebd buat tab
    # buat tombol
    template_form.Click Button Buat Tombol
    template_form.Select Jenis Aksi Buat Tombol
    template_form.Input Link Buat Tombol  https://www.google.com/
    template_form.Input Label Buat Tombol  label
    template_form.Click Button Simpan Buat Tombol
    # end
    # Buat Element
    template_form.Click Button Buat Element
    template_form.Input Label Element  label
    template_form.Select Type Element
    template_form.Select Wajib Element
    template_form.Select Data Kolom Element
    template_form.Click Button Simpan Element
    # End 
    # Edit canvas Formula
    template_form.Click Button Edit Canvas Formula
    template_form.Click Button Simpan Edit Canvas Formula
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
    template_form.Click Button Grand Total
    template_form.Select Data Tabel Grand Total
    template_form.Select Data Kolom Grand Total
    template_form.Click Button Plus Grand Total
    template_form.Click Button Simpan Grand Total
    # End

    template_form.Input Nama Form    Form Rian III
    template_form.Input Field Kunci    Field Kunci
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser