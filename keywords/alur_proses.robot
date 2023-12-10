*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Alur Proses Module
    Go To       https://uji.sicantik.go.id/alur-proses
    Wait Until Location Is    https://uji.sicantik.go.id/alur-proses

Click Button Filter
    Click Button    default:Filter
    Wait Until Element Contains     css:label.form-label    Alur Proses     None    None

Filter Alur Proses
    [Arguments]     ${alurProses}
    Input Text      class:el-input__inner   ${alurProses}
    Click Button    default:Tampilkan hasil

Click Button Pencil
    Wait Until Element Is Visible    css:i.fa-edit
    Click Element   css:i.fa-edit
    Wait Until Element Contains     css:a.text-primary-custom   UBAH ALUR PROSES    None    None

Click Button Duplicate
    Click Element   css:i.fa-file
    Wait Until Element Contains     css:h2.swal2-title  Apakah Anda Yakin?      None    None

Click Button Ya Duplicate
    Click Button    default:Ya, Duplikat
    Wait Until Element Is Visible   class:Vue-Toastification__toast-body

Click Detail Data
    Wait Until Element Is Visible    css:i.fa-eye
    Click Element   css:i.fa-eye
    Wait Until Element Contains     css:a.text-primary-custom      DETAIL ALUR PROSES       None    None

Move To Add Alur Proses
    Go To       https://uji.sicantik.go.id/alur-proses/add
    Wait Until Element Contains     css:a.text-primary-custom      TAMBAH ALUR PROSES       None    None

Input Nama Alur Proses
    [Arguments]     ${namaAlurProses}
    Clear Element Text    name:alurProses
    Input Text      name:alurProses     ${namaAlurProses}

Click Button Tambah Tahapan Proses
    Click Button    id:addFieldJenisPengajuan
    Wait Until Element Is Visible         name:no-0-card

Input No
    [Arguments]     ${no}
    Clear Element Text    name:no-0-card
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

Select Jabatan 1
    Wait Until Element Is Visible    xpath://*[@id="formAlur-0"]/div/div[9]/label
    Click Element    xpath://*[@id="formAlur-0"]/div/div[9]/label
    Press Keys      None    TAB
    [Arguments]     ${jabatan1}
    Press Keys      None    ${jabatan1}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Jabatan 2
    Wait Until Element Is Visible    xpath://*[@id="formAlur-0"]/div/div[10]/label
    Click Element    xpath://*[@id="formAlur-0"]/div/div[10]/label
    Press Keys      None    TAB
    [Arguments]     ${jabatan2}
    Press Keys      None    ${jabatan2}
    Sleep    0.5s
    Press Keys      None    ENTER

Click Button Simpan Data
    Click Button    css:button[type=submit]

Click Button Delete
    Click Element    css:i.fa-trash-alt
    Wait Until Element Contains     css:h2.swal2-title  Apakah Anda Yakin?      None    None

Click Button Ya Hapus
    Click Button    default:Ya, Hapus
    Wait Until Element Is Visible   class:Vue-Toastification__toast-body

#Click Table
#    Click Element    css:div.table-container
#    Sleep    0.5s

#Scroll Down
#    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[3]/td[2]
##    Execute Javascript      window.scrollTo(0, 1000)
#    Execute Javascript      window.scrollTo(0, 2000)

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[6]/td[2]
    FOR    ${counter}    IN RANGE    10
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END