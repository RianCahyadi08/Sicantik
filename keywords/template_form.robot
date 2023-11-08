*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          login.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Keywords ***
Move To Template Form
    Go To    https://uji.sicantik.go.id/template-form
    Element Should Contain    xpath://*[@id="kt_profile_details_view"]/div/div[1]/h5    Daftar Template Form
    Sleep    3s

Click Icon Edit
    Click Element    class:fa-edit

Click Button Filter
    Click Element    xpath://*[@id="kt_profile_details_view"]/div/div[2]/div/div[1]/button

Input ID Template
    [Arguments]    ${idTemplate}
    Input Text    class:el-input__inner    ${idTemplate}

Input Nama Template Form
    [Arguments]    ${nameTemplateForm}
    Press Keys    None    TAB
    Press Keys    None    ${nameTemplateForm}
    # Input Text    xpath://*[@id="el-id-3388-58"]    ${nameTemplateForm}

Click Button Tampilkan Hasil
    Click Button    xpath://*[@id="collapseBtnFilter"]/div/div[2]/div/button[1]
    Sleep    2s

Click Button Add
    Go To    https://uji.sicantik.go.id/template-form/add
    Wait Until Element Is Visible    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[1]/div/div/div[1]/div[1]/a

On Button Otomatis Update
    Click Element    class:el-switch__core

Select Target Update Otomatis
    Press Keys    None    TAB
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Input Nama Form
    [Arguments]    ${namaForm}
    Sleep   1s
    Input Text    class:el-input__inner    ${namaForm}
    # Input Text      class:el-input__wrapper     ${namaForm}

Input Field Kunci
    Press Keys    None    TAB
    [Arguments]    ${fieldKunci}
    Press Keys    None    ${fieldKunci}

Click Button Simpan Data
    # Click Button    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[1]/div/div/div[2]/button[2]
    Click Button    default:Simpan Data

# Canvas
Click Button Buat Canvas
    # Click Button    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[4]/button[1]
    Click Button    default:Buat Canvas
    Wait Until Element Is Visible    xpath://*[@id="canvas-modal"]/div/form/div/div[1]/h5

Input Tab Index Canvas
    Press Keys    None    TAB
    [Arguments]    ${tabIndexCanvas}
    Press Keys    None    ${tabIndexCanvas}

Select Tipe Form Canvas
    Press Keys    None    TAB
    Press Keys    None    Form
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Select Tipe Tabel Canvas
    Press Keys    None    TAB
    Press Keys    None    Tabel
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Select Tipe Tabel Grid Canvas
    Press Keys    None    TAB
    Press Keys    None    Tabel Grid
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Select Tipe Tabel Static Canvas
    Press Keys    None    TAB
    Press Keys    None    Tabel Sta
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Select Tipe Tabel Map Canvas
    Press Keys    None    TAB
    Press Keys    None    Map
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Input Nama Canvas
    [Arguments]    ${namaCanvas}
    Press Keys    None    TAB
    Press Keys    None    ${namaCanvas}

Input Web Service Awal Canvas
    [Arguments]    ${webServiceAwal}
    Press Keys    None    TAB
    Press Keys    None    ${webServiceAwal}

Select Data Table Canvas
    Press Keys    None    TAB
    Sleep    1s
    Press Keys    None    ARROW_DOWN
    Sleep    1s
    Press Keys    None    ENTER

Input No Urut Canvas
    Press Keys    None    TAB
    [Arguments]    ${nourutCanvas}
    Press Keys    None    ${nourutCanvas}

Click Button Simpan Canvas
    Click Button    xpath://*[@id="canvas-modal"]/div/form/div/div[3]/button[2]
# End Canvas


Click Button Buat Canvas Formula
    Click Button    default:Buat Canvas Formula
    # Click Button    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[4]/button[4]
    Wait Until Element Is Visible    xpath://*[@id="canvas-modal-formula"]/div/form/div/div[1]/h5

Input Tab Index
    Wait Until Element Is Visible    xpath://*[@id="canvas-modal-formula"]/div/form/div/div[1]/h5
    Press Keys    None    TAB
    [Arguments]    ${tabIndex}
    Press Keys    None    ${tabIndex}

Input No Urut
    Click Element    xpath://*[@id="canvas-modal-formula"]/div/form/div/div[2]/div/div[4]/div/div/div/div
    [Arguments]    ${noUrut}
    Press Keys    None    ${noUrut}

Click Button Simpan Buat Canvas Formula
    Click Button    xpath://*[@id="canvas-modal-formula"]/div/form/div/div[3]/button[2]

Click Button Buat Tab
    Click Button    default:Buat Tab
    # Click Button    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[4]/button[2]
    Wait Until Element Is Visible    class:modal-title

Input Label Buat Tab
    Press Keys    None    TAB
    [Arguments]    ${label}
    Press Keys    None    ${label}

Click Button Simpan Buat Tab
    Click Button    xpath://*[@id="canvas-modal"]/div/form/div/div[3]/button[2]

Click Button Buat Tombol
    Click Button    default:Buat Tombol
    Sleep    1s
    # Wait Until Element Is Visible    class:modal-title

Select Jenis Aksi Buat Tombol
    Press Keys    None    TAB
    Sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Input Link Buat Tombol
    Press Keys    None    TAB
    [Arguments]    ${link}
    Press Keys    None    ${link}

Input Label Buat Tombol
    Press Keys    None    TAB
    [Arguments]    ${label}
    Press Keys    None    ${label}

Click Button Simpan Buat Tombol
    Click Button    xpath://*[@id="canvas-modal"]/div/form/div/div[3]/button[2]

Click Button Buat Filter
    Click Button    default:Buat Filter
    # Click Button    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[4]/button[3]
    Wait Until Element Is Visible    xpath://*[@id="canvas-modal"]/div/form/div/div[1]/h5

Input Label Pengaturan Filter
    Press Keys    None    TAB
    [Arguments]    ${label}
    Press Keys    None    ${label}

Input Variable Pengaturan Filter
    Press Keys    None    TAB
    [Arguments]    ${variable}
    Press Keys    None    ${variable}

Select Tipe Pengaturan Filter
    Press Keys    None    TAB
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Click Button Simpan Pengaturan Filter
    Click Button    xpath://*[@id="canvas-modal"]/div/form/div/div[3]/button[2]

Duplicate Template Form
    Click Element    class:fa-file
    Wait Until Element Is Visible    xpath://*[@id="kt_body"]/div[4]/div/div[3]/button[1]
    Click Element    xpath://*[@id="kt_body"]/div[4]/div/div[3]/button[1]
    Sleep    2s

Delete Template Form
    Click Element    class:fa-trash-alt
    Wait Until Element Is Visible    xpath://*[@id="kt_body"]/div[4]/div/div[3]/button[1]
    Click Element    xpath://*[@id="kt_body"]/div[4]/div/div[3]/button[1]
    Sleep    2s

Detail Template Form
    Click Element    class:fa-eye
    Sleep    3s

# Buat Element
Click Button Buat Element
    Click Button    default:Buat Element
    Wait Until Element Is Visible    xpath://*[@id="canvas-modal"]/div/form/div/div[1]/h5

Input Label Element
    Press Keys    None    TAB
    Press Keys    None    TAB
    [Arguments]    ${label}
    Press Keys    None    ${label}

Select Type Element
    Press Keys    None    TAB
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Select Wajib Element
    Press Keys    None    TAB
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Select Data Kolom Element
    Press Keys    None    TAB
    Sleep    1s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Click Button Simpan Element
    Click Button    xpath://*[@id="canvas-modal"]/div/form/div/div[3]/button[2]
# End Element

# Edit Canvas formula
Click Button Edit Canvas Formula
    Click Button    default:Edit Canvas Formula
    Wait Until Element Is Visible   xpath://*[@id="canvas-modal-formula"]/div/form/div/div[1]/h5

Click Button Simpan Edit Canvas Formula
    Wait Until Element Is Visible   class:btn-primary
    Click Button    xpath://*[@id="canvas-modal-formula"]/div/form/div/div[3]/button[2]
    Sleep   1s
# End

# Buat Element Formula
Click Button Buat Element Formula
    Click Button    default:Buat Element Formula
    Wait Until Element Is Visible   xpath://*[@id="canvas-modal"]/div/form/div/div[1]/h5

Input Label Element Formula
    [Arguments]     ${label}
    Press Keys      None    TAB
    Press Keys      None    TAB
    Press Keys      None    ${label}

Select Tipe Element Formula
    Press Keys  None    TAB
    Sleep  0.5s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Select Wajib Element Formula
    Press Keys  None    TAB
    Sleep  0.5s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Select Data Kolom Element Formula
    Press Keys  None    TAB
    Sleep  0.5s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Click Button Simpan Element Formula
    Click Button    default:Simpan
# End

# Perhitungan formula
Click Button Perhitungan Formula
    Click Button    default:Perhitungan Formula
    # Click Button    xpath://*[@id="pane-0"]/div[2]/div[4]/button[4]

# Grand Total
Click Button Grand Total
    Click Button    default:Buat Grandtotal
    # Click BUtton    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[4]/button[5]
    Wait Until Element Is Visible   xpath://*[@id="format-grand-formula-modal"]/div/form/div/div[1]/h5

Select Data Tabel Grand Total
    Press Keys  None    TAB
    Sleep  0.5s
    Press Keys  None    c_pemohon
    Sleep  0.5s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Select Data Kolom Grand Total
    Press Keys  None    TAB
    Press Keys  None    TAB
    Sleep  0.5s
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

Click Button Plus Grand Total
    Click Button    xpath://*[@id="format-grand-formula-modal"]/div/form/div/div[2]/div[2]/div[1]/div/div[1]/div/div/div[2]/button
    Sleep   2s

Click Button Simpan Grand Total
    Click Button    xpath://*[@id="format-grand-formula-modal"]/div/form/div/div[3]/button[2]