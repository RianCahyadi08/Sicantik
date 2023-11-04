*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Alur Proses Module
    Go To       https://uji.sicantik.go.id/alur-proses
    Wait Until Element Contains     xpath://*[@id="kt_content_container"]/div/div/div[1]/h5     Daftar Alur Proses      None    None

Click Button Filter
    Click Button    default:Filter
    Wait Until Element Contains     css:label.form-label    Alur Proses     None    None

Filter Alur Proses
    [Arguments]     ${alurProses}
    Input Text      class:el-input__inner   ${alurProses}
    Click Button    default:Tampilkan hasil

Click Button Pencil
    Click Element   css:i.fa-edit
    Wait Until Element Contains     css:a.text-primary-custom   UBAH ALUR PROSES    None    None

Click Button Duplicate
    Click Element   css:i.fa-file
    Wait Until Element Contains     css:h2.swal2-title  Apakah Anda Yakin?      None    None

Click Button Ya Duplicate
    Click Button    default:Ya, Duplikat
    Wait Until Element Is Visible   class:Vue-Toastification__toast-body

Click Detail Data
    Click Element   css:i.fa-eye
    Wait Until Element Contains     css:a.text-primary-custom      DETAIL ALUR PROSES       None    None

Move To Add Alur Proses
    Go To       https://uji.sicantik.go.id/alur-proses/add
    Wait Until Element Contains     css:a.text-primary-custom      TAMBAH ALUR PROSES       None    None

Input Nama Alur Proses
    [Arguments]     ${namaAlurProses}
    Input Text      name:alurProses     ${namaAlurProses}

Click Button Tambah Tahapan Proses
    Click Button    id:addFieldJenisPengajuan
    Wait Until Element Is Visible         name:no-0-card

Input No
    [Arguments]     ${no}
    Input Text      name:no-0-card      ${no}

Select Jenis Proses
    Click Element   name:jenisProses-0-card
    Clear Element Text  name:jenisProses-0-card
    [Arguments]     ${jenisProses}
    Press Keys      None    ${jenisProses}
    Sleep           1s
    Press Keys      None    ARROW_DOWN
    Press Keys      None    ENTER

Select Tautan
    Click Element   name:tautan-0-card
    Clear Element Text  name:tautan-0-card
    [Arguments]     ${tautan}
    Press Keys      None    ${tautan}
    Sleep           1s
    Press Keys      None    ARROW_DOWN
    Press Keys      None    ENTER

Select Form
    Click Element   name:form-0-card
    Clear Element Text  name:form-0-card
    [Arguments]     ${form}
    Press Keys      None    ${form}
    Sleep           1s
    Press Keys      None    ARROW_DOWN
    Press Keys      None    ENTER

Select Report
    Click Element   name:report-0-card
    Clear Element Text  name:report-0-card
    [Arguments]     ${report}
    Press Keys      None    ${report}
    Sleep           1s
    Press Keys      None    ARROW_DOWN
    Press Keys      None    ENTER

Select Jenis Tanda Tangan
    Press Keys      None    TAB
    [Arguments]     ${jenisTandaTangan}  
    Press Keys      None    ${jenisTandaTangan}
    Sleep           1s
    Press Keys      None    ENTER

Click Button Simpan Data
    Click Button    default:Simpan Data

Click Button Delete
    Click Element    css:i.fa-trash-alt
    Wait Until Element Contains     css:h2.swal2-title  Apakah Anda Yakin?      None    None

Click Button Ya Hapus
    Click Button    default:Ya, Hapus
    Wait Until Element Is Visible   class:Vue-Toastification__toast-body